//
//  CharacterOperationsProtocol.swift
//  
//
//  Created by Erkut Bas on 14.09.2021.
//

import Foundation
import RxSwift

public protocol CharacterOperationsProtocol {
    
    func getCharacterList(with request: RickAndMortyCharacterRequest) -> Single<RickAndMortyCharacterResponse>
    
}
