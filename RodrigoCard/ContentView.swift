//
//  ContentView.swift
//  RodrigoCard
//
//  Created by Rodrigo Maidana on 13/01/2021.
//  Copyright © 2021 Maidana Rodrigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(
                red: K.Colors.lightPurple.red,
                green: K.Colors.lightPurple.green,
                blue: K.Colors.lightPurple.blue
            )
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(K.profilePhotoName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text(K.name)
                    .font(Font.custom("Baskerville", size: 40))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                Text(K.profession)
                    .foregroundColor(.white)
                    .font(.system(size:25))
                Divider()
                InfoView(
                    imageName: "phone.fill",
                    imageColor: .green,
                    info: K.phoneNumber)
                InfoView(
                    imageName: "envelope.fill",
                    imageColor: Color(
                        red: K.Colors.darkPurple.red,
                        green: K.Colors.darkPurple.green,
                        blue: K.Colors.darkPurple.blue
                    ),
                    info: K.email
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11 Pro Max")
    }
}


