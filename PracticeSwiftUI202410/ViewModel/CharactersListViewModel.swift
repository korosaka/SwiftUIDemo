//
//  CharactersListViewModel.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

import Foundation

class CharactersListViewModel: ObservableObject {
    
    private let isMock: Bool
    init(isMock: Bool) {
        self.isMock = isMock
    }
}
