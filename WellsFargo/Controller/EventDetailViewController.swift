//
//  EventDetailViewController.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/19/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

  @IBOutlet weak var monthLabel:UILabel!
  @IBOutlet weak var viewCalendarButton:UIButton!

  @IBOutlet weak var calendarCollectionView:UICollectionView!
  @IBOutlet weak var appointmentCollectionView:UICollectionView!


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

}
extension EventDetailViewController:UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {


    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath)

    return cell
  }

}
