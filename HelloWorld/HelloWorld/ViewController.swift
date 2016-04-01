//
//  ViewController.swift
//  HelloWorld
//
//  Created by Елизавета Руцина on 26.03.16.
//  Copyright (c) 2016 Елизавета Руцина. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
   let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateHeading heading: CLHeading) {
        // This will print out the direction the device is heading
        //print("l1")
        //print(heading.magneticHeading)
        let coords:String = String(format:"%f", heading.magneticHeading)
        print(TCPManager.SendDate(coords))
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       // println(locations.count)
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Error while updating location " + error.localizedDescription)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: AnyObject) {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.AuthorizedWhenInUse) {
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startUpdatingLocation()
        locationManager.startUpdatingHeading()
        
        print(TCPManager.SetConnection())
        
    }

}

