package exhibition.bean;

import lombok.Data;

@Data
public class ExDTO {
	private String seq;		//아티스트를 seq로 관리
	private String ex_img; // 전시이미지 src 주소
	private String ex_date; // 전시시작, 종료일
	private String ex_titleName; // 전시이름
	private String ex_artistName; // 작가이름
}
