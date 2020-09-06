//
//  HScrollView.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct HScrollView: View {

    var numberOfUsers: Int = 1
    var usersProfilePicture: [String] = ["person.circle"]
    var usersName: [String] = ["pk"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                SpacerView()
                ForEach(0..<numberOfUsers) { index in
                    UserCard(name: self.usersName[index],
                             imageName: self.usersProfilePicture[index])
                }
                SpacerView()
            }
        }
        .padding(.trailing, 20)
    }
}

struct UserCard: View {

    let name: String
    let imageName: String
    @State var isSelected: Bool = false

    var body: some View {
        Button(action: {
            self.isSelected.toggle()
        }) { ZStack {
            RoundedRectangle(cornerRadius: 60)
                .foregroundColor(isSelected ? Color(#colorLiteral(red: 0.9309709668, green: 0.3401152492, blue: 0.3255770802, alpha: 1)) : Color(#colorLiteral(red: 0.9006108046, green: 0.9449558854, blue: 0.9658661485, alpha: 1)))
                .frame(width: 70, height: 120)
            VStack {
                Image(imageName)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .padding(.bottom, 12)
                Text(name)
                    .foregroundColor(isSelected ? Color(#colorLiteral(red: 0.9006108046, green: 0.9449558854, blue: 0.9658661485, alpha: 1)) : Color(K.Color.darkPrimary))
                    .fontWeight(.medium)
            }
            .padding(.bottom, 20)
            }
        .padding(.vertical, 30)
        .animation(Animation.easeInOut(duration: 0.3))
        .offset(y: isSelected ? 13 : 0)
        .shadow(color: isSelected ? Color(#colorLiteral(red: 0.9309709668, green: 0.3401152492, blue: 0.3255770802, alpha: 0.25)) : .clear,
                radius: 8, y: 8)
        }
    }
}

struct SpacerView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 30, height: 120)
    }
}

struct HScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollView().previewLayout(.sizeThatFits)
    }
}
