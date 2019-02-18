//
//  DetailViewController.swift
//  iOSTurtorial
//
//  Created by kyosuke on 2019/02/19.
//  Copyright © 2019 Kyosuke Nakanishi. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    var titleStr:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = titleStr
        
        if let placeName = titleStr {
            CLGeocoder().geocodeAddressString(placeName) { placemarks, error in
                guard let coordinate = placemarks?.first?.location?.coordinate else {return}
                
                //中心座標
                let center = coordinate
                
                //表示範囲
                let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
                
                //中心座標と表示範囲をマップに登録する。
                let region = MKCoordinateRegion(center: center, span: span)
                self.mapView.setRegion(region, animated:false)
            }
        }
        
    }

}
