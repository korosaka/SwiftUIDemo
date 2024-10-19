//
//  CharactersAPIResposes.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//
import Foundation

struct Character: Codable {
    let id: Int
    let name: String
    let image: String
    let url: String
}

struct CharactersAPIResponse: Codable {
    let results: [Character]
}
