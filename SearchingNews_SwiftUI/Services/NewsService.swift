//
//  NewsService.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation
import Combine

final class NewsService {
    private let service = URLSession(configuration: .default)
    
    func getNewsList(country: String, category: String) -> AnyPublisher<[Articles], Error> {
        let targetType = NewsApiTargetType.allNews(country: country,
                                                   category: category,
                                                   apiKey: Consts.defaultApiKey)
        return service.dataTaskPublisher(
            for: RequestConfigurator.request(requestType: targetType))
            .map { $0.data }
            .decode(type: ServerNewsResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
            .map { $0.articles }
            .eraseToAnyPublisher()
    }
    
}
