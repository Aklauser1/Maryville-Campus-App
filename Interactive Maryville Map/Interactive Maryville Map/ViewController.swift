//
//  ViewController.swift
//  Interactive Maryville Map
//
//  Created by Brandon Schmidt on 1/30/18.
//  Copyright © 2018 Drew Klauser. All rights reserved.
//

import UIKit
import MapKit
// https://www.codementor.io/taiwoadedotun/ios-swift-implementing-photos-app-image-scrolling-with-scroll-views-bkbcmrgz5
class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    var manager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true

    
        let location = CLLocation(latitude: 38.645247, longitude: -90.504252)
        let region = MKCoordinateRegionMakeWithDistance(location.coordinate, 600, 600)
        mapView.setRegion(region, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

