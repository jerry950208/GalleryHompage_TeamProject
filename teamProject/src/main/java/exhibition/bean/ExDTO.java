package exhibition.bean;

public class ExDTO {
	private String seq;		//아티스트를 seq로 관리
	private String ex_img; // 전시이미지 src 주소
	private String ex_date; // 전시시작, 종료일
	private String ex_titleName; // 전시이름
	private String ex_artistName; // 작가이름
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getEx_img() {
		return ex_img;
	}
	public void setEx_img(String ex_img) {
		this.ex_img = ex_img;
	}
	public String getEx_date() {
		return ex_date;
	}
	public void setEx_date(String ex_date) {
		this.ex_date = ex_date;
	}
	public String getEx_titleName() {
		return ex_titleName;
	}
	public void setEx_titleName(String ex_titleName) {
		this.ex_titleName = ex_titleName;
	}
	public String getEx_artistName() {
		return ex_artistName;
	}
	public void setEx_artistName(String ex_artistName) {
		this.ex_artistName = ex_artistName;
	}
}
