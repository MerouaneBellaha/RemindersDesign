//
//  RemindersViewBackground.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct RemindersViewBackground: View {
    var body: some View {
        ZStack {
            CustomBackground(offset: (x: -48, y: -24), color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)))
            CustomBackground(offset: (x: -24, y: -12), color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)))
            CustomBackground(color: .white)
        }
    }
}

struct CustomBackground: View {

    var offset: (x: CGFloat, y: CGFloat) = (0, 0)
    var color: Color

    var body: some View {
        Rectangle()
            .fill(color)
            .cornerRadius(18, corners: .topRight)
            .padding(.trailing, 40)
            .offset(x: offset.x, y: offset.y)
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ReminderViewBackground_Previews: PreviewProvider {
    static var previews: some View {
        RemindersViewBackground()
    }
}
