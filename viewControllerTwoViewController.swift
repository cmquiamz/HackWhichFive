//
//  viewControllerTwoViewController.swift
//  HackWhichFive
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class viewControllerTwoViewController: UIViewController {

    
    @IBOutlet var navitgationTitleTwo: UINavigationItem!
    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation (latitude: 21.334039 , longitude: -158.068522)
    let regionRadius: CLLocationDistance = 5000
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navitgationTitleTwo.title = "Eatery Locations"
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius,regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
         centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "Local Restaurant", coordinate: CLLocationCoordinate2D(latitude: 21.346470,longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Ramen Ya", type: "Ramen Noodle House", coordinate: CLLocationCoordinate2D(latitude: 21.3302215,longitude: -158.09019260000002))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Cheesecake Factory", type: "Good for desert", coordinate: CLLocationCoordinate2D(latitude: 21.334737,longitude: -158.052801))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "California Pizza Kitchen", type: "Known for pizza", coordinate: CLLocationCoordinate2D(latitude: 21.333756, longitude: -158.051889))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Sushi Bay", type: "Japanese, conveyer belt sushi", coordinate: CLLocationCoordinate2D(latitude: 21.339804, longitude: -158.07822))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Johnny Rockets", type: "American Diner Style", coordinate: CLLocationCoordinate2D(latitude: 21.332956, longitude: -158.05048))
        mapView.addAnnotation(restaurantSix)
        
        
        

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
