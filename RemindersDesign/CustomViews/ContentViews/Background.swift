//
//  Background.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(
            colors: [Color(K.Color.lightPrimary),
                     Color(K.Color.darkPrimary)]),
                       startPoint: .bottomLeading, endPoint: .topTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
