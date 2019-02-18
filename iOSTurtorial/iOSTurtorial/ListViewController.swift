//
//  ListViewController.swift
//  iOSTurtorial
//
//  Created by kyosuke on 2019/02/19.
//  Copyright © 2019 Kyosuke Nakanishi. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
