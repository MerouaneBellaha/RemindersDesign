//
//  ContentView.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 05/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            Background()
            VStack {
                NavigationTop()
                Header()
                RemindersView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


