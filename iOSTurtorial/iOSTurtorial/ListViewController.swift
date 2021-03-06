//
//  ListViewController.swift
//  iOSTurtorial
//
//  Created by kyosuke on 2019/02/19.
//  Copyright © 2019 Kyosuke Nakanishi. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellNameArray = ["London", "New York", "Paris", "Tokyo", "Hong Kong", "Singapore"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView() //無駄な罫線を表示させないための処理
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("row number:", indexPath.row)
        
        let sb = UIStoryboard(name: "DetailViewController", bundle: Bundle.main)
        //ViewControllerをDetailViewControllerにキャスト
        let vc = sb.instantiateInitialViewController() as! DetailViewController
        vc.titleStr = cellNameArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cellNameArray[indexPath.row]
        return cell
    }
}
