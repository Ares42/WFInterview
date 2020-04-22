//
//  DataManager.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/21/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit

let arrayKey = "EventArrayKey"

//Note: Given more time, this would be a wrapper on CoreData rather than NSUserDefaults.
//This was done in the interest of time, but is a terrible architectural decision.
class DataManager:NSObject {

  static func storeEvent(event:Event) {
    let events = retrieveAllEvents()
    var mutableEvents = events
    mutableEvents.append(event)

    UserDefaults.standard.set(mutableEvents, forKey: arrayKey)
  }

  static func retrieveAllEvents() -> [Event] {
    guard let events:[Event] = UserDefaults.standard.array(forKey: arrayKey) as? [Event] else {
      return []
    }
    return events
  }

}


