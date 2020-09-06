//
//  ActivityFactory.swift
//  RemindersDesign
//
//  Created by Merouane Bellaha on 06/09/2020.
//  Copyright © 2020 Merouane Bellaha. All rights reserved.
//

import Foundation

struct ActivityFactory {

    var iconName: String = ""
    var activityName: String = ""
    var date: String = ""

    var activities: [ActivityFactory] {
        [ActivityFactory(iconName: "folder", activityName: "New Job Activities", date: "23 June 2020"),
         ActivityFactory(iconName: "bubble.left.and.bubble.right", activityName: "Spanish Lessons", date: "28 June 2020"),
         ActivityFactory(iconName: "sportscourt", activityName: "Basketball Training", date: "1 July 2020"),
        ActivityFactory(iconName: "bubble.left.and.bubble.right", activityName: "Russian Lesson", date: "7 July 2020")]}

    var activitiesIconName: [String] { activities.map { $0.iconName }}
    var activitiesName: [String] { activities.map { $0.activityName }}
    var activitiesDate: [String] { activities.map { $0.date }}
}
