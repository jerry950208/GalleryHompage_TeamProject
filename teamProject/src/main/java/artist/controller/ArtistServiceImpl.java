package artist.controller;

import artist.dao.ArtistDAO;
import artist.dto.ArtistDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArtistServiceImpl implements ArtistService {

    @Autowired
    ArtistDAO artistRepository;

    @Override
    public List<ArtistDTO> getArtistAll() {
        return artistRepository.getArtistAll();
    }
}
