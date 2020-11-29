//
//  Articles.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation

struct Articles: Decodable {
    let source: SourceOfArticle?
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

struct SourceOfArticle: Decodable {
    let id: String?
    let name: String?
}
