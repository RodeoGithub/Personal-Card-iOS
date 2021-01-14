//
//  InfoView.swift
//  RodrigoCard
//
//  Created by Rodrigo Maidana on 13/01/2021.
//  Copyright © 2021 Maidana Rodrigo. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let imageName: String
    let info: String
    let imageColor: Color
    
    init(imageName: String, info: String) {
        self.imageName = imageName
        self.info = info
        self.imageColor = .black
    }
    
    init(imageName: String, imageColor: Color, info: String){
        self.imageName = imageName
        self.imageColor = imageColor
        self.info = info
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName:imageName)
                        .foregroundColor(imageColor)
                    Text(info)
                        .foregroundColor(.black)
                },
                alignment: .center
            )
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", imageColor: Color.green, info: "+54 9 362 420-5074")
            .previewLayout(.sizeThatFits)
    }
}
