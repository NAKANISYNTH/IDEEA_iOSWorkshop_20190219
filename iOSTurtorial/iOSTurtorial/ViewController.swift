//
//  ViewController.swift
//  iOSTurtorial
//
//  Created by kyosuke on 2019/02/18.
//  Copyright © 2019 Kyosuke Nakanishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func currentTimeButtonTapped(_ sender: Any) {
        let now = Date() // 現在時刻を取得
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current // ロケールを指定
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss.SSS" // 時刻表示のフォーマットを指定
        // 指定したフォーマットで現在時刻を取得してラベルに反映させる
        timeLabel.text = dateFormatter.string(from: now)
    }
    
    @IBAction func showListButtonTapped(_ sender: Any) {
        //自作したStoryboardを生成
        let sb = UIStoryboard(name: "ListViewController", bundle: nil)
        //storyboardから自作したViewControllerを生成
        let vc = sb.instantiateInitialViewController()!
        //モーダル遷移する
        present(vc, animated: true, completion: nil)
    }
}

