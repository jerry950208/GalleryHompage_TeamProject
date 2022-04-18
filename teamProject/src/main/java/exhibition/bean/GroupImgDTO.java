package exhibition.bean;

public class GroupImgDTO {
	private int seq;
	private String group_img;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getGroup_img() {
		return group_img;
	}
	public void setGroup_img(String group_img) {
		this.group_img = group_img;
	}
	// 나중에 getter로 불러와야함 지금은 해시코드주소로밖에 안나와서 시벌개빡침
	@Override
	public String toString() {
		return group_img;
	}
	
	
	

}
