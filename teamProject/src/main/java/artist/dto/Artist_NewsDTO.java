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
 * @description artist의 News쪽의 데이터 Bean Class, use lombok
 * 				DB Table : artist_exhibitions_news
 * 
 */

@Data
public class Artist_NewsDTO {
    private String exhibitions_title;
    private String exhibitions_term;
    private String news_date;
    private String news_title;
    private String news_img;
    private String news_href;
}
