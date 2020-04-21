//
//  EventCell.swift
//  WellsFargo
//
//  Created by Luke Solomon on 4/19/20.
//  Copyright © 2020 Terrace. All rights reserved.
//

import UIKit


class EventCell:UICollectionViewCell {
  
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  
  
  @IBOutlet weak var titleLAbel: UILabel!
  @IBOutlet weak var partySizeLabel: UILabel!
  @IBOutlet weak var lengthLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  @IBOutlet weak var reschedulebutton: UIButton!
  @IBOutlet weak var cancelButton: UIButton!
  
  
  @IBAction func rescheduleEventAction(_ sender: Any) {
    
  }
  
  @IBAction func cancelEventAction(_ sender: Any) {
  
  }
  
  
}
