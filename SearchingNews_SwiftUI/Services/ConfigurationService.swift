//
//  ConfigurationService.swift
//  SearchingNews_SwiftUI
//
//  Created by Антон Швец on 29.11.2020.
//

import Foundation

enum CountryConfiguration: String {
    case ru
    case us
    case it
    case gb
}

enum CategoryConfiguration: String {
    case general
    case health
    case science
    case sports
    case technology
}

final class ConfigurationService {
    
    static let shared = ConfigurationService()
    private init() {}
    
    var country: CountryConfiguration = .us
    var category: CategoryConfiguration = .general
    
}
