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
    if let events = retrieveAllEvents() {
      var mutableEvents = events
      mutableEvents.append(event)
      
      UserDefaults.standard.set(mutableEvents, forKey: arrayKey)
    } else {
      print("Error saving event")
    }
  }


  static func retrieveAllEvents() -> [Event]? {

    guard let events:[Event] = UserDefaults.standard.array(forKey: arrayKey) as? [Event] else {
      print("Error retrieving events")
      return nil
    }

    return events
  }

}


