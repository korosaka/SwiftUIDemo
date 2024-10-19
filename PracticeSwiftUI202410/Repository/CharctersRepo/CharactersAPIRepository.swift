//
//  CharactersAPIRepository.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

import Foundation

class CharactersAPIRepository: CharactersRepositoryProtocol {
    final let charactersApiURL = "https://rickandmortyapi.com/api/character"
    func fetchCharacters(completion: @escaping ([CharacterTop]?) -> Void) {
        guard let url = URL(string: charactersApiURL) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "Get"
        
        let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
            if let error = error {
                print("Failed to get item info: \(error)")
                return;
            }
            
            if let response = response as? HTTPURLResponse {
                if !(200...299).contains(response.statusCode) {
                    print("Response status code does not indicate success: \(response.statusCode)")
                    return
                }
            }
            
            if let jsonData = data {
                do {
                    let apiResponse = try JSONDecoder().decode(CharactersAPIResponse.self, from: jsonData)
                    let charactersData = apiResponse.results
                    var characters: [CharacterTop] = []
                    for characterData in charactersData {
                        characters.append(CharacterTop(id: String(characterData.id), name: characterData.name, imageUrl: characterData.image))
                    }
                    completion(characters)
                    
                } catch {
                    print("something error")
                    return
                }
            } else {
                print("data error")
                return
            }
        }
        
        task.resume()
    }
}
