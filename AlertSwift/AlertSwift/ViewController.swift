//
//  ViewController.swift
//  AlertSwift
//
//  Created by EthanLin on 2018/7/29.
//  Copyright © 2018 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let alert = UIAlertController(title: "OK", message: "This is a test", preferredStyle: .alert)
        let action = UIAlertAction(title: "確定", style: .cancel, handler: { (action) in
            self.view.backgroundColor = .blue
        })
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

