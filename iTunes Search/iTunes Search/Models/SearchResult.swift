//
//  SearchResult.swift
//  iTunes Search
//
//  Created by Lambda_School_Loaner_101 on 9/11/19.
//  Copyright © 2019 Ife Banire. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let title: String
    let creator: String
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case creator = "artistName"
    }
}

struct SearchResults: Decodable {
        let results: [SearchResult]
}
