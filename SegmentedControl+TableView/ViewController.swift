//
//  ViewController.swift
//  SegmentedControl+TableView
//
//  Created by Issei Ueda on 2024/04/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "demo"
    }

    @IBAction func selectedSegment(_ sender: Any) {
    }
    
}

