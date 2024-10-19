//
//  CharacterListItem.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/19.
//

import SwiftUI

struct CharacterListItem: View {
    let characterName: String
    let imageResource: ImageResource?
    var body: some View {
        HStack(spacing: 0) {
            if let image = imageResource {
                Image(image).resizable().frame(width: 50, height: 50).background(Color.gray)
            } else {
                Color.clear
                            .frame(width: 50, height: 50) // Set the frame size
                            .background(Color.gray)
            }
            Spacer().frame(width: 10)
            Text(characterName)
        }
    }
}

#Preview {
    CharacterListItem(characterName: "test name", imageResource: nil)
}
