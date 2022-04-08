package artist.controller;

import artist.dto.ArtistDTO;

import java.util.List;

public interface ArtistService {
    public List<ArtistDTO> getArtistAll();
}
