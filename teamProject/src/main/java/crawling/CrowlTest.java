package crawling;

import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import artist.bean.ArtistMainDTO;
import crawling.dao.CrawlingRepository;


public class CrowlTest {
	
	
	public static void selenium() {
		
		// 드라이버 설치 경로
		String WEB_DRIVER_ID = "webdriver.chrome.driver";		
		String WEB_DRIVER_PATH = "D:/Ezen/spring/chromedriver.exe";
		
		// WedDriver 경로 설정
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
		
		// 웹 드라이버 설정?
		WebDriver driver = new ChromeDriver();
		String base_url = "https://www.gallerybk.co.kr/artists-3";	// url 설정
		
		// 브라우저 주소창에 url을 넣은후 request 한것과 같다
		driver.get(base_url);
		
		System.out.println(driver.getPageSource());
		
		// 하단의 show More 버튼의 클래스명 가져오기
		WebElement btnClick = driver.findElement(By.className("_1gbg4"));	
		
		// 3번클릭할경우 모든 아티스트의 정보가 화면에 표시된다
		for(int i=0; i<3; i++) {
			btnClick.click();
		}
		
		// WebElement titleNameElements = driver.findElement(By.className("_2GGjn"));
        // WebElement nameElements = driver.findElement(By.className("_1dCto"));
		
		// 해당 클래스이름을 찾아서 list에 저장한다
		 List<WebElement> titleNameElements = driver.findElements(By.className("_2GGjn"));
         List<WebElement> nameElements = driver.findElements(By.className("_1dCto"));
         List<WebElement> imageElements = driver.findElements(By.cssSelector("wix-image._1-6YJ._2tHnQ"));
         
         // 반복문으로 
         for(int i=0; i<titleNameElements.size(); i++) {
        	 // list에 담겨져 있던 요소들을 꺼내서 출력
        	 String titleName = titleNameElements.get(i).getText();
        	 String name = nameElements.get(i).getText();
        	 String image_src = imageElements.get(i).findElement(By.tagName("img")).getAttribute("src");
        	 
        	 // image_src가 null 일경우 출력하지 않는다	// 여기서 기본이미지를 하나 만들어서 넣으면 좋을듯?
        	 if(image_src == null) {
        		 continue;
        	 }
        	 
        	 System.out.println("titleName: " + titleName);
        	 System.out.println("name: " + name);
        	 System.out.println("image: " + image_src);
        	 System.out.println();
        	 
        	 // DB에 데이터 넣기
        	 try {
				// 크롤링으로 가져온 이미지 url
        		URL url = new URL(image_src);
        		// 커넥션
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				// ?
				conn.setRequestProperty("Referer", image_src);
				
				// 이미지 저장 준비
				BufferedImage img = ImageIO.read(conn.getInputStream());
				// 절대경로로 이미지 저장 위치, 저장될 이름 설정
				FileOutputStream out = new FileOutputStream("D:/Ezen/spring/workspace/teamProject/src/main/webapp/image/IMG01_" + (i+1) + ".jpg");
				// 이미지 저장
				ImageIO.write(img, "jpg", out);
				
				// 크롤링으로 받아온 아티스트 1명을 저장하기위한 dto
				ArtistMainDTO dto = new ArtistMainDTO();
				dto.setTitleName(titleName);
				dto.setName(name);
				dto.setImage_src(image_src);
				
				// 크롤링으로 받아온 아티스트 정보를 DB에 저장할 DAO 선언
				CrawlingRepository crawlingRepository = new CrawlingRepository();
				// insert문을 사용하여 DB에 저장
				int result = crawlingRepository.insertArtistMainPage(dto);
				System.out.println(result);
	            System.out.println(dto.getTitleName());
	            System.out.println(dto.getName());
	            System.out.println(dto.getImage_src());
				
			} catch (MalformedURLException e) {	// URL선언 예외처리
				e.printStackTrace();
			} catch (IOException e) {			// HttpURLConnection선언 예외처리
				e.printStackTrace();
			} finally {
				//if(driver != null) 
				driver.close();
			}
         }
	}
	
	public static List<String> crow() {
		final String  infArtist = "https://www.gallerybk.co.kr/artists-3";

		Connection conn = Jsoup.connect(infArtist);
		List<String> list = new ArrayList<String>();
		try {
			Document document = conn.get();
			Elements imageUrlElements = document.getElementsByClass(".bEUkY");
			
			for(Element element : imageUrlElements) {
//				System.out.println(element);
				System.out.println(element.attr("abs:src"));
//				list.add(element.attr("abs:src"));
			}
//			System.out.println(list.size());
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static void main(String[] args) {
		selenium();
	}
	
	
}
