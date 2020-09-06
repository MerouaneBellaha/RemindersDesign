//
//  VScrollView.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct VScrollView: View {

    var numberOfActivity: Int = 0
    var activitiesIconName: [String] = []
    var activitiesName: [String] = []
    var activitiesDate: [String] = []

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 14) {
                ForEach(0..<numberOfActivity) { index in
                    ActivityCard(iconName: self.activitiesIconName[index],
                                 activityName: self.activitiesName[index],
                                 date: self.activitiesDate[index])
                }
            }
            .padding(.leading, 40)
            .padding(.top, 20)
        }
    }
}

struct ActivityCard: View {

    let iconName: String
    let activityName: String
    let date: String

    var body: some View {
        HStack(spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 14)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.9006108046, green: 0.9449558854, blue: 0.9658661485, alpha: 1)))
                Image(systemName: iconName)
                    .foregroundColor(Color(K.Color.darkPrimary))
            }
            VStack(alignment: .leading, spacing: 6) {
                Text(activityName)
                    .font(.system(size: 16, weight: .bold))
                Text(date)
                    .font(.system(size: 16, weight: .medium))
            }
            .foregroundColor(Color(K.Color.darkPrimary))
            Spacer()
        }
        .frame(width: 250, height: 80)
    }
}


struct VScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollView()
    }
}
