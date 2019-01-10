//
//  ImpactViewController.swift
//  GlobalImpactApp
//
//  Created by Jarman, Caroline on 1/10/19.
//  Copyright © 2019 ctec. All rights reserved.
//

import UIKit
import MapKit

class ImpactViewController: UIViewController
{

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var animationButton: UIButton!
    @IBOutlet weak var impactImage: UIImageView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func animateClick(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: -28.6657, longitude: 30.5296)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations:
            { self.setRegion(zoomRegion, animated: true)}, completion: nil)
    }
}

