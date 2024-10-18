//
//  CharactersRepositoryProtocol.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

protocol CharactersRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterTop]?) -> Void)
}
