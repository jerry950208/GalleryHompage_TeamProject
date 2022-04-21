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
 * @description artist 전시회 정보 Bean Class, use lombok
 * 				DB Table : artist_exhibitions_info
 * 
 */

@Data
public class Artist_Exhibitions_InfoDTO {
    private String eng_name;
    private String title;
    private String term;
    private String works;
}
