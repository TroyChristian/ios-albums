//
//  Album.swift
//  ios-albums
//
//  Created by Lambda_School_Loaner_219 on 1/13/20.
//  Copyright © 2020 Lambda_School_Loaner_219. All rights reserved.
//

import Foundation
struct Album: Codable {
    var id:String
    var name:String
    var artist:String
   
    var genres: [String]
    var coverArt: [URL]
    var songs: [Song]
    
    enum AlbumKeys: String, CodingKey {
        case id, name, artist, genres, coverArt, songs
        
        enum CoverArtKeys: String, CodingKey {
            case url
        }
    }
    
    init(from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy: AlbumKeys.self)
        
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        artist = try container.decode(String.self, forKey: .artist)
        genres = try container.decode([String].self, forKey: .genres)
        var coverArtURLS = [URL]()
        var coverArtOuterContainer = try container.nestedUnkeyedContainer(forKey: .coverArt)
 
        while !coverArtOuterContainer.isAtEnd {
                   let coverArtContainer = try coverArtOuterContainer.nestedContainer(keyedBy: AlbumKeys.CoverArtKeys.self)
            let coverArtURL = try coverArtContainer.decode(URL.self, forKey: .url)
            coverArtURLS.append(coverArtURL)
            
            
        }
        coverArt = coverArtURLS
        songs = try container.decode([Song].self, forKey:.songs)
    }
    func encode(to encoder: Encoder) throws {
        let container = encoder.container(keyedBy: AlbumKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(artist, forKey: .artist)
        try container.encode(genres, forKey .genres)
        try container.encode(songs, forKey: .songs)
        let coverArtContainer = try container.nestedUnkeyedContainer(forKey: .coverArt)
        try coverArtInnerContainer = coverArtContainer.nestedContainer(keyedBy: AlbumKeys.CoverArtLeys.self)
        
        for coverArtURL in coverArt {
            try coverArtContainer.encode(coverArtURL, forKey: .url)
            
        }
        try container.encode(songs, forKey: .songs)
        
        
        
}

struct Song: Codable {
    
    var id: String
    var name:String
    var duration:String
    
    enum SongKeys: String, CodingKey {
        case id, name, duration
        
    
    
    
    enum DurationKeys:String, CodingKey {
        case duration
    }
    
    enum NameKeys: String, CodingKey {
        case title
    }
    }
    
    init(from decoder:Decoder) throws {
        let container = try decoder.container(keyedBy:SongKeys.self)
        id = try container.decode(String.self, forKey: .id)
        
        let nameContainer = try container.nestedContainer(keyedBy: SongKeys.NameKeys.self, forKey: .name)
        name = try nameContainer.decode(String.self, forKey: .title)
        
        let durationContainer = try container.nestedContainer(keyedBy: SongKeys.DurationKeys.self, forKey: .duration)
        duration = try durationContainer.decode(String.self, forKey: .duration)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy:SongKeys.self)
        try container.encode(id, forKey: .id)
        var nameContainer = container.nestedContainer(keyedBy: SongKeys.NameKeys.self, forKey:.name)
        try nameContainer.encode(name, forKey:.title)
        
        var durationContainer = container.nestedContainer(keyedBy: SongKeys.DurationKeys.self, forKey .duration)
        try durationContainer.encode(duration, forKey: .duration) 
        
    }
    
}
