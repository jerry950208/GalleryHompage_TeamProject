package artist.dao;

import artist.dto.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ArtistDAO {

    @Autowired
    SqlSessionTemplate sqlSession;

    public List<ArtistDTO> getArtistAll() {
        return sqlSession.selectList("mybatis.artistMapper.getArtistAll");
    }

    public Artist_InfoDTO getArtist_info(String eng_name) {
        return sqlSession.selectOne("mybatis.artistMapper.getArtist_info", eng_name);
    }

    public List<Artist_Featured_WorksDTO> getArtist_featured_works(String eng_name) {
        return sqlSession.selectList("mybatis.artistMapper.getArtist_featured_works", eng_name);
    }

    public List<Artist_ExhibitionsDTO> getArtist_exhibitions_titles(String eng_name) {
        return sqlSession.selectList("mybatis.artistMapper.getArtist_exhibitions_titles", eng_name);
    }

    public List<Artist_Exhibitions_InfoDTO> getArtist_exhibitions_info(String exhibition_title) {
        return sqlSession.selectList("mybatis.artistMapper.getArtist_exhibitions_info", exhibition_title);
    }

    public List<Artist_NewsDTO> getArtist_news(String exhibition_title) {
        return sqlSession.selectList("mybatis.artistMapper.getArtist_news", exhibition_title);
    }
}
