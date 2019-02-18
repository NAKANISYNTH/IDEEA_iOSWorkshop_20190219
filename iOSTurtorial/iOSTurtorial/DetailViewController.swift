//
//  DetailViewController.swift
//  iOSTurtorial
//
//  Created by kyosuke on 2019/02/19.
//  Copyright © 2019 Kyosuke Nakanishi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var titleStr:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = titleStr
    }

}
