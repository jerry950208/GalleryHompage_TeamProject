package artist.dao;

import artist.dto.ArtistDTO;
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
}
