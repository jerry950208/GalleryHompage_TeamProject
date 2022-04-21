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
 * @description 최근 작품의 정보를 저장하는 Bean Class, use lombok
 * 				DB Table : artist_featured_works
 * 
 */

@Data
public class Artist_Featured_WorksDTO {
    private String eng_name;
    private String featured_works;
}
