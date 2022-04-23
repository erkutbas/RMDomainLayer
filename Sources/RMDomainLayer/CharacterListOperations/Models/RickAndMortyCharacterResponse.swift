//
//  RickAndMortyCharacterResponse.swift
//  
//
//  Created by Erkut Bas on 23.04.2022.
//

import Foundation

// MARK: - RickAndMortyCharacterResponse
final public class RickAndMortyCharacterResponse: Codable {
    public let info: Info?
    public let results: [Character]?

    init(info: Info?, results: [Character]?) {
        self.info = info
        self.results = results
    }
}

// MARK: - Info
final public class Info: Codable {
    public let count, pages: Int?
    public let next: String?
    public let prev: JSONNull?

    init(count: Int?, pages: Int?, next: String?, prev: JSONNull?) {
        self.count = count
        self.pages = pages
        self.next = next
        self.prev = prev
    }
}

// MARK: - Result
final public class Character: Codable {
    public let id: Int?
    public let name: String?
    public let status: String?
    public let species: String?
    public let type: String?
    public let gender: String?
    public let origin, location: Location?
    public let image: String?
    public let episode: [String]?
    public let url: String?
    public let created: String?

    init(id: Int?, name: String?, status: String?, species: String?, type: String?, gender: String?, origin: Location?, location: Location?, image: String?, episode: [String]?, url: String?, created: String?) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.origin = origin
        self.location = location
        self.image = image
        self.episode = episode
        self.url = url
        self.created = created
    }
}

// MARK: - Location
final public class Location: Codable {
    public let name: String?
    public let url: String?

    init(name: String?, url: String?) {
        self.name = name
        self.url = url
    }
}

// MARK: - Encode/decode helpers

final public class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

