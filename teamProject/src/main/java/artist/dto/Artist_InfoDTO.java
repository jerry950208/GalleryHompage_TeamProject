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
 * @description artist 정보 bean Class, use lombok
 * 				DB Table : artist_info
 * 
 */

@Data
public class Artist_InfoDTO {
    private String eng_name;
    private String info;
}
