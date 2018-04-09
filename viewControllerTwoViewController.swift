//
//  viewControllerTwoViewController.swift
//  HackWhichFive
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class viewControllerTwoViewController: UIViewController {

    
    @IBOutlet var navitgationTitleTwo: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navitgationTitleTwo.title = "Eatery Locations"

       
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
