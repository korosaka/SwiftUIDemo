//
//  TopView.swift
//  PracticeSwiftUI202410
//
//  Created by 坂公郎 on 2024/10/18.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CharactersListView(viewModel: CharactersListViewModel(isMock: false))) {
                    Text("start with API")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50, alignment: .center)
                }.background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.red))
                Spacer().frame(height: 70)
                NavigationLink(destination: CharactersListView(viewModel: CharactersListViewModel(isMock: true))) {
                    Text("start with Mock")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50, alignment: .center)
                }.background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue))
                
            }
        }
    }
}

#Preview {
    TopView()
}
