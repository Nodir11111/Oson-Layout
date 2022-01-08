//
//  ViewController.swift
//  yandexcdcd
//
//  Created by NODIR KARIMOV on 24/12/21.
//

import UIKit
import YandexMapsMobile

class ViewController: UIViewController {
    
//    weak var mapView: YMKMapView? = {
//        let mapView = YMKMapView()
//        return mapView
//    }()
    
    let mapView: YMKMapView = {
        let mapView = YMKMapView()
        return mapView
    }()
   // @IBOutlet weak var mapView: YMKMapView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        YMKMapKit.setApiKey("f2b2b706-c026-4761-8dad-0a7977e70b48")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
        
            view.bounds = mapView.bounds

            mapView.mapWindow.map.move(
                with: YMKCameraPosition.init(target: YMKPoint(latitude: 55.751574, longitude: 37.573856), zoom: 15, azimuth: 0, tilt: 0),
                animationType: YMKAnimation(type: YMKAnimationType.smooth, duration: 5),
                cameraCallback: nil)
        
        
    }

}

