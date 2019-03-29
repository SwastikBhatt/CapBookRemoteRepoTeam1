package com.cg.capbook.daoservices;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.capbook.beans.ImageAlbum;

public interface ImageAlbumDAO extends JpaRepository<ImageAlbum, Integer> {
}
