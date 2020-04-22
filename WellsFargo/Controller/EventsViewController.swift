//
//  EventsViewController.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/19/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit


protocol EventsCellDelegate {
  func rescheduleEvent(event:Event)
}


class EventsViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var scheduleNewEventButton: UIBarButtonItem!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.

    let eventCollectionViewDataSource = EventCollectionViewDataSource(
      events: DataManager.retrieveAllEvents()!
    )
    collectionView.dataSource = eventCollectionViewDataSource
  }

  @IBAction func scheduleNewEventButtonTapped(_ sender: Any) {

    navigationController?.performSegue(
      withIdentifier: "EventDetailsSegue",
      sender: self)
  }

}
extension EventsViewController:UICollectionViewDelegate {




}
