//
//  Event.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/19/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit

struct Event {
  var date:Date
  var time:Date
  var title:String
  var partySize:Int
  var length:Int // Represented in minutes
  var description:String
  var cost:Double // TODO: Find best format
  var image:UIImage

  var UUID:Int

}

struct DummyData {

  static var Events = [Event]()

  init() {
    var calendar = Calendar.init(identifier: .iso8601)

    var dateComponents = DateComponents()
    dateComponents.day = 20
    dateComponents.month = 5
    dateComponents.year = 2020
    dateComponents.hour = 16
    dateComponents.minute = 30

    let manicureEvent = Event.init(
      date: calendar.date(from: dateComponents)!,
      time: Date.init(),
      title: "Gel Manicure",
      partySize: 1,
      length: 30,
      description: "Get the upper hand with our chip resistant, mirror-finish gel polish that requires no drying time and lasts up to two weeks.",
      cost: 30.00,
      image: #imageLiteral(resourceName: "Karaage.jpeg"),
      UUID: 00)
    DummyData.self.Events.append(manicureEvent)
  }

}
