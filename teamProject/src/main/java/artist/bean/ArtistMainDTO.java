package artist.bean;

// 아티스트 1명을 저장하기위한 DTO 입니다
public class ArtistMainDTO {
	private String titleName;
	private String name;
	private String image_src;
	
	@Override
	public String toString() {
		return "ArtistMainDTO [titleName=" + titleName + ", name=" + name + ", image_src=" + image_src + "]";
	}
	public String getTitleName() {
		return titleName;
	}
	public void setTitleName(String titleName) {
		this.titleName = titleName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage_src() {
		return image_src;
	}
	public void setImage_src(String image_src) {
		this.image_src = image_src;
	}
	
}
