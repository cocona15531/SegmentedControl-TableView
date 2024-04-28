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
        tableView.dataSource = self
    }

    @IBAction func selectedSegment(_ sender: Any) {
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let segmentIndex = segmentControl.selectedSegmentIndex
        switch segmentIndex {
        case 0:
            //通常の履歴をここに表示させる
            cell.textLabel?.text = segmentControl.titleForSegment(at: segmentIndex)
        case 1:
            //タグがついている項目だけここに表示させる
            cell.textLabel?.text = segmentControl.titleForSegment(at: segmentIndex)
        default:
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
}

