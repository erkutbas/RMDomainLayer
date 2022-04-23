//
//  RickAndMortyCharacterRequest.swift
//  
//
//  Created by Erkut Bas on 23.04.2022.
//

import Foundation

public final class RickAndMortyCharacterRequest: Codable {

    private(set) public var page: Int

    public init(page: Int) {
        self.page = page
    }

}
