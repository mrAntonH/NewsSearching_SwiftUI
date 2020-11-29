//
//  ServerNewsList.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation

struct ServerNewsResponse: Decodable {
    let status: String?
    let totalResults: Int?
    let articles: [Articles]
}
