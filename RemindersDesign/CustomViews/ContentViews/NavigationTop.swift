//
//  NavigationTop.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct NavigationTop: View {
    var body: some View {
        HStack {
            NavigationItem(imageName: "arrow.left",
                           color: Color(#colorLiteral(red: 0.2616688013, green: 0.399433732, blue: 0.4539517164, alpha: 1)))
            Spacer()
            NavigationItem(imageName: "bell",
                           color: .white)
        }
        .padding(.horizontal, 40)
        .padding(.top, 50)
    }
}

struct NavigationItem: View {

    var imageName: String
    var color: Color

    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 25, height: 25)
            .foregroundColor(color)
            .onTapGesture {
                // do stuff
        }
    }
}

struct NavigationTop_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTop()
    }
}
