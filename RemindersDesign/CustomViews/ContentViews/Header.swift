//
//  Header.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Daily")
                Text("Reminders")
                Text("TODAY")
                    .font(.system(size: 20))
                    .padding(.top)
            }
            .padding(.leading, 40)
            .foregroundColor(.white)
            .font(.system(size: 40, weight: .bold))
            Spacer()
        }
        .padding(.bottom, 50)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
