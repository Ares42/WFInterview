//
//  CalendarCollectionViewDataSource.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/21/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit


class CalendarDayCollectionViewDataSource:NSObject {

  var date = Date()

  init(date:Date) {
    self.date = date
  }

}

extension CalendarDayCollectionViewDataSource: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCell", for: indexPath) as! CalendarDayCell

    cell.dayOfTheWeekLabel.text = String(Calendar.current.component(.month, from: self.date))
    cell.dayLabel.text = String(Calendar.current.component(.month, from: self.date))

    return cell
  }

}

class CalendarTimeCollectionViewDataSource:NSObject {

  var date = Date()

  init(date:Date) {
    self.date = date
  }

}

extension CalendarTimeCollectionViewDataSource: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCell", for: indexPath) as! EventCell


    return cell
  }

}
