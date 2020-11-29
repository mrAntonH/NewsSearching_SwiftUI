//
//  NewsApi.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation

enum NewsApiTargetType: ApiTargetType {
    case allNews(country: String, category: String, apiKey: String)
    
    var url: URL {
        return Consts.headlinesUrl
    }
    
    var requestType: String {
        switch self {
        case .allNews:
            return "GET"
        }
    }
    
    var query: [URLQueryItem] {
        switch self {
        case let .allNews(country, category, apiKey):
            return [URLQueryItem(name: "country", value: country),
                    URLQueryItem(name: "category", value: category),
                    URLQueryItem(name: "apiKey", value: apiKey)]
        }
    }
    
}
