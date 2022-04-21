package artist.dto;

import lombok.Data;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package artFairs.bean
 * 
 * @file ArtFairsDTO.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description artist 페이지의 영어이름, 한글이름, 이미지를 저장하는 Bean Class, use lombok
 * 				DB Table : atist
 */

@Data
public class ArtistDTO {
    private String eng_name;
    private String kor_name;
    private String head_img;
}
