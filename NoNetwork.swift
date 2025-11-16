//
//  SwiftUIView.swift
//  Coder Clicker
//
//  Created by Nils Potier on 21/09/2025.
//

import SwiftUI
import Network

struct NoNetworkView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("Server")
                    .resizable()
                    .scaledToFit()
                Text("Étant donné que vous n'êtes pas connecté à Internet, vous ne pouvez pas jouer.")
                    .foregroundStyle(Color.white)
                    .padding()
                    .font(Font.largeTitle.bold())
            }
        }
    }
}

#Preview {
    NoNetworkView()
}
