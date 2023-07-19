//
//  HomePageModel.swift
//  Instagram_Clone
//
//  Created by KARAN on 18/07/23.
//

import Foundation

struct ImageElement : Codable, Identifiable, Hashable{
    let albumId, id: Int
    let title, url, thumbnailUrl: String
}

enum ErrorCode : Error{
    case e1, e2, e3, e4
}
