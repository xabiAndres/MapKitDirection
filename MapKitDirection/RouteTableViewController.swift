//
//  RouteTableViewController.swift
//  MapKitDirection
//
//  Created by Xabier Andrés Irulegui on 8/5/18.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit
import MapKit

class RouteTableViewController: UITableViewController {

    var routeSteps = [MKRouteStep]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows
        return routeSteps.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = routeSteps[indexPath.row].instructions
        
        return cell
    }
 

}
