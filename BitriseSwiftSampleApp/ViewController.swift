//
//  ViewController.swift
//  BitriseSwiftSampleApp
//
//  Created by Viktor Benei on 11/1/14.
//  Copyright (c) 2014 Bitrise. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let delta = 5.0
        let frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        let mapView = MKMapView(frame:frame)
        var region = MKCoordinateRegion()
        region.center.latitude = 31.0
        region.center.longitude = -110.0
        region.span.latitudeDelta = delta
        region.span.longitudeDelta = delta
        mapView.setRegion(region, animated:true)
        
        self.view.addSubview(mapView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

