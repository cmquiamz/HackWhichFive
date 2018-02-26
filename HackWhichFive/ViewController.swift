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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    //Set VC as delegate
        //
        
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return greetingArray.count
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //set up cell to display items in greetingArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let text = greetingArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
}
    
}

