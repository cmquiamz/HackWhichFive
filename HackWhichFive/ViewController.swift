//
//  ViewController.swift
//  HackWhichFive
//
//  Created by CM Student on 2/26/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

//Define an array of variable using an array literal with 5 items of type string
    
    @IBOutlet var tableView: UITableView!
    var greetingArray = ["Hello", "Aloha", "Good Morning", "Howzit", "Sup"]
    
    var kapoleiRestaurantArray = ["Kapolei Kalapawai"]
    
    var restaurantImageData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    //Set VC as delegate
        
        self.tableView.dataSource = self
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kapoleiRestaurantArray.count
}
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //set up cell to display items in greetingArray
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
    
    let text = kapoleiRestaurantArray[indexPath.row]
    
    cell.textLabel?.text = text
    
    return cell
}
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "mySegue"
    {
        let s1 = segue.destination as! detailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = restaurantImageData[imageIndex!]
        }
    
    }
    
    
}

