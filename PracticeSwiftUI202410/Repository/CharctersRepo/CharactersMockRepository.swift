//
//  CharactersMockRepository.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

class CharactersMockRepository: CharactersRepositoryProtocol {
    func fetchCharacters(completion: @escaping ([CharacterTop]?) -> Void) {
        let dummyData = [CharacterTop(id: "test_id_1", name: "Test1", imageUrl: "", image: nil),
                         CharacterTop(id: "test_id_2", name: "Test2", imageUrl: "", image: nil),
                         CharacterTop(id: "test_id_3", name: "Test3", imageUrl: "", image: nil),
                         CharacterTop(id: "test_id_4", name: "Test4", imageUrl: "", image: nil),
                         CharacterTop(id: "test_id_5", name: "Test5", imageUrl: "", image: nil),
                         CharacterTop(id: "test_id_6", name: "Test6", imageUrl: "", image: nil),
        ]
        completion(dummyData)
    }
}
