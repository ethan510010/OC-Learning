//
//  ViewController.swift
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let checkArray = [ListModel(listName: "S1", finished: false),ListModel(listName: "S2", finished: false),ListModel(listName: "S3", finished: false),ListModel(listName: "S4", finished: false),ListModel(listName: "s5", finished: false),ListModel(listName: "S6", finished: false),ListModel(listName: "S7", finished: false)]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CheckListTableViewCell
        cell.updateUI(model: checkArray[indexPath.row])
        cell.index = indexPath
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

extension ViewController: CheckButtonDidTappedProtocol{
    func checkButtonDidTapped(index: IndexPath) {
        checkArray[index.row].finished = !checkArray[index.row].finished
        tableView.reloadRows(at: [index], with: .automatic)
        
    }
}
