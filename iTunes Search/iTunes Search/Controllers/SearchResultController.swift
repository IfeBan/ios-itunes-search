//
//  SearchResultController.swift
//  iTunes Search
//
//  Created by Lambda_School_Loaner_101 on 9/11/19.
//  Copyright © 2019 Ife Banire. All rights reserved.
//

import Foundation

class SearchResultController {
    
    let baseURL = URL(string: "https://itunes.apple.com/search?parameterkeyvalue")
    var searchResults: [SearchResult] = []
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    func performSearch (with searchTerm: String, resultType: ResultType, completion: @escaping () -> Void) {
        guard let baseURL = baseURL else {
            completion()
            return
        }
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        let searchTermQueryItem = URLQueryItem(name: "search", value: searchTerm)
        urlComponents?.queryItems = [searchTermQueryItem]
        
        guard let requestURL = urlComponents?.url else {
            print("request URL is nil")
            completion()
            return
        }
        
        var request = URLRequest(url: requestURL)
        request.httpMethod = HTTPMethod.get.rawValue
        
        URLSession.shared.dataTask(with: URL) { (<#Data?#>, <#URLResponse?#>, <#Error?#>) in
            <#code#>
        }
    }
    
}
