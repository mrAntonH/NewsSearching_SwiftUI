//
//  ApiTargetType.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation

protocol ApiTargetType {
    var url: URL { get }
    var requestType: String { get }
    var query: [URLQueryItem] { get }
}

struct RequestConfigurator {
    static func request<T: ApiTargetType>(requestType: T) -> URLRequest {
        var urlComponents = URLComponents()
        urlComponents.queryItems = requestType.query
        var urlRequest = URLRequest(url: requestType.url)
        urlRequest.httpMethod = requestType.requestType
        return urlRequest
    }
}
