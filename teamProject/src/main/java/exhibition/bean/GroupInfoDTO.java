package exhibition.bean;

import lombok.Data;

@Data
public class GroupInfoDTO {
	private int seq;
	private String titleName;
	private String ex_date;
	private String artistName;
	private String main_img;
	private String intro_img;
	private String intro_content;
}
