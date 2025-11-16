//
//  SwiftUIView.swift
//  Coder Clicker
//
//  Created by ##############.
//

import SwiftUI

struct ClickerView: View {
    @EnvironmentObject var Session: SessionModel
    @State var clickers: Clicker
    var body: some View {
        VStack(spacing: 8) {
            ZStack{
                Rectangle()
                    .foregroundStyle(clickers.DefaultPrice > Session.Money ? Color.black : Color.green.opacity(0.60))
                    .padding(0.1)
                    .blur(radius: 3)
                    .animation(.easeInOut(duration: 1))
                Button(action: {
                    if Session.Money >= clickers.DefaultPrice {
                        Session.Money -= clickers.DefaultPrice
                        clickers.Quantity += 1
                        Session.RevClic += clickers.AddsAtRevClick
                        clickers.DefaultPrice *= 1.6
                    }
                }, label: {
                    Text(clickers.Name)
                        .font(.title)
                        .foregroundStyle(Color.green)
                        .padding(10)
                    HStack{
                        Text("\(clickers.DefaultPrice)")
                            .fontWeight(.black)
                            .foregroundStyle(Color.white)
                            .padding(10)
                        Image("NCoin-1")
                            .resizable()
                            .interpolation(.none)
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Text(clickers.Description)
                        .font(Font.caption.bold())
                        .foregroundStyle(Color.white)
                        .padding(10)
                })
                .disabled(Session.Money < clickers.DefaultPrice)
                .badge(Text("Vous en avez \(clickers.Quantity).").foregroundStyle(Color.white))
            }
            
        }
    }
}
