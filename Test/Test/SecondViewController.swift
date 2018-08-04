//
//  SecondViewController.swift
//  Test
//
//  Created by EthanLin on 2018/7/28.
//  Copyright © 2018 EthanLin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labek: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstVC = ViewController()
        firstVC.anotherName = "No"
        labek.text = firstVC.anotherName
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
