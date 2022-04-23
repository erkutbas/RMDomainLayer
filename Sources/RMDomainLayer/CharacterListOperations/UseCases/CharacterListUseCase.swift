//
//  CharacterListUseCase.swift
//  
//
//  Created by Erkut Bas on 15.09.2021.
//

import Foundation
import RxSwift

final public class CharacterListUseCase: SingleUseCase<RickAndMortyCharacterRequest, RickAndMortyCharacterResponse, CharacterOperationsProtocol> {
    
    override func generateUseCase(parameter: RickAndMortyCharacterRequest) -> Single<RickAndMortyCharacterResponse>? {
        repository.getCharacterList(with: parameter)
    }
    
}
