//
//  RemindersView.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import SwiftUI

struct RemindersView: View {

    var userFactory = UserFactory()
    var activityFactory = ActivityFactory()

    var body: some View {
        ZStack(alignment: .trailing) {
            RemindersViewBackground()
            VStack(alignment: .leading) {
                Title(text: "SHARED REMINDERS")
                HScrollView(numberOfUsers: userFactory.users.count,
                            usersProfilePicture: userFactory.usersProfilePictures,
                            usersName: userFactory.usersName)
                Title(text: "LATEST REMINDERS")

                VScrollView(numberOfActivity: activityFactory.activities.count,
                            activitiesIconName: activityFactory.activitiesIconName,
                            activitiesName: activityFactory.activitiesName,
                            activitiesDate: activityFactory.activitiesDate)
                Spacer()
            }
            .padding(.top, 40)
            .padding(.trailing, 20)
            addButton()
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct Title: View {

    var text: String

    var body: some View {
        Text(text)
            .foregroundColor(Color(K.Color.darkPrimary))
            .font(.system(size: 16, weight: .bold))
            .padding(.leading, 40)
            .padding(.top, 10)
    }
}


struct RemindersView_Previews: PreviewProvider {
    static var previews: some View {
        RemindersView().previewLayout(.sizeThatFits)
    }
}

struct addButton: View {
    var body: some View {
        Button(action: {
            // do domething
        }) {
            ZStack {
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(#colorLiteral(red: 0.9656698108, green: 0.4728745818, blue: 0.3539280295, alpha: 1)))
                Image(systemName: "plus")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.white)
            }
            .offset(y: 180)
            .padding(.trailing, 10)
        }
    }
}
