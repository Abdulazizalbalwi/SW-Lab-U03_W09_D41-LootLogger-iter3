//
//  ViewController.swift
//  LootLoggers
//
//  Created by عبدالعزيز البلوي on 12/04/1443 AH.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet var nameField: UITextField!
          @IBOutlet var serialNumberField: UITextField!
          @IBOutlet var valueField: UITextField!
          @IBOutlet var dateLabel: UILabel!
  
  var item: Item!
  let numberFormatter: NumberFormatter = {
      let formatter = NumberFormatter()
      formatter.numberStyle = .decimal
      formatter.minimumFractionDigits = 2
      formatter.maximumFractionDigits = 2
      return formatter
  }()
  let dateFormatter: DateFormatter = {
      let formatter = DateFormatter()
      formatter.dateStyle = .medium
      formatter.timeStyle = .none
      return formatter
  }()
      override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          nameField.text = item.name
          serialNumberField.text = item.serialNumber
          //valueField.text = "\(item.valueInDollars)"
          //dateLabel.text = "\(item.dateCreated)"
        valueField.text =
                numberFormatter.string(from: NSNumber(value: item.valueInDollars))
            dateLabel.text = dateFormatter.string(from: item.dateCreated)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

