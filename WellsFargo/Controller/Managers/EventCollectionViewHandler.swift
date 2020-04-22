//
//  EventCollectionViewDataSource.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/19/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit

class EventCollectionViewDataSource:NSObject {
  
  var events:[Event]

  init(events:[Event]) {
    self.events = events
  }

}

extension EventCollectionViewDataSource: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCell", for: indexPath) as! EventCell

    //DateLabel
    let format = DateFormatter()
    format.dateStyle = DateFormatter.Style.full
    format.locale = Locale.current
    let convertedDate = format.string(from: self.events[indexPath.row].date)
    cell.dateLabel.text = convertedDate

    //TimeLabel
    let timeFormat = DateFormatter()
    timeFormat.dateStyle = DateFormatter.Style.full
    timeFormat.locale = Locale.current
    timeFormat.dateFormat = "HH:mm AA"
    let convertedTime = timeFormat.string(from: self.events[indexPath.row].date)
    cell.timeLabel.text = convertedTime

    cell.titleLabel.text = self.events[indexPath.row].title
    cell.partySizeLabel.text = String(self.events[indexPath.row].partySize)
    cell.lengthLabel.text = String(self.events[indexPath.row].length)
    cell.descriptionLabel.text = String(self.events[indexPath.row].description)

    return cell
  }

}
