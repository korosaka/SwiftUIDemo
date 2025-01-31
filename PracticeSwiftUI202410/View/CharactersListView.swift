//
//  CharactersListView.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/18.
//
import SwiftUI
struct CharactersListView: View {
    
    @ObservedObject var viewModel: CharactersListViewModel
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.getCharactersToShow(), id: \.id) { character in
                    //                    NavigationLink(destination: )) {
                    CharacterListItem(characterName: character.name, imageResource: character.image)
                    //                    }
                }
            }
        }.onAppear {
            viewModel.fetchCharacters()
        }
    }
}

#Preview {
    CharactersListView(viewModel: CharactersListViewModel(isMock: true))
}
