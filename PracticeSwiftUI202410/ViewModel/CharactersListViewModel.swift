//
//  CharactersListViewModel.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

import Foundation

class CharactersListViewModel: ObservableObject {
    
    private let isMock: Bool
    private var repo: CharactersRepositoryProtocol
    @Published var characters: [CharacterTop]?
    
    init(isMock: Bool) {
        self.isMock = isMock
        if isMock {
            repo = CharactersMockRepository()
        } else {
            repo = CharactersAPIRepository()
        }
    }
    
    func fetchCharacters() {
        let completion = { (characters: [CharacterTop]?) -> Void in
            guard let _characters = characters else {
                return
            }
            
            DispatchQueue.main.async {
                self.characters = _characters
            }
        }
        repo.fetchCharacters(completion: completion)
    }
    
    func getCharactersToShow() -> [CharacterTop] {
        guard let _characters = characters else {
            return []
        }
        return _characters
    }
}
