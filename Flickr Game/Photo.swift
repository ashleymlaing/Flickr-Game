//
//  Photo.swift
//  Flickr Game
//
//  Created by Ashley Laing on 2/27/18.
//  Copyright © 2018 Ashley Laing. All rights reserved.
//

import Foundation

class Photo: Decodable{
    let id: String
    let farm: Int
    let server: String
    let secret: String
    let title: String?
    
    func imageUrl() -> URL? {
        let urlString = "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg"
        return URL(string: urlString)
    }
}
