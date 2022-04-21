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
 * @description artist 전시회 Bean Class, use lombok
 * 				DB Table : artist_exhibitions
 * 
 */

@Data
public class Artist_ExhibitionsDTO {
    private String eng_name;
    private String exhibitions_title;
}
