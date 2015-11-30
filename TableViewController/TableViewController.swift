//
//  TableViewController.swift
//  TableViewController
//
//  Created by michael adams on 11/30/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var testData = [ "BRA",
               "CAN",
               "CHN",
               "DEU",
               "IDN",
               "JPN",
               "ZAF",
               "ESP",
               "GBR",
               "USA"]
    
    
    var countries = [ "Brazil",
              "Canada",
              "China",
              "Germany",
              "Indoneshia",
              "Japan",
              "South Africa",
              "Spain",
              "United Kingdom",
              "United States of America"]
    
    
    
    
    var images = [ "brazil.png",
            
            "canada.png",
            "china.png",
            "germany.png",
            "indonesia.png",
            "japan.png",
            "southafrica.png",
            "spain.png",
            "uk.png",
            "usa.png"]
    

    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
         self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return testData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCustomTableViewCell

        // Configure the cell...
        
        /*
        cell.textLabel?.text = testData[indexPath.row]
        cell.detailTextLabel?.text = countries[indexPath.row]
        */
        
        cell.abbrLabel.text = testData[indexPath.row]
        cell.nameLabel.text = countries[indexPath.row]
        cell.flagImage.image = UIImage(named: images[indexPath.row])
        
        
        return cell


    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            
            testData.removeAtIndex(indexPath.row)
            countries.removeAtIndex(indexPath.row)
            images.removeAtIndex(indexPath.row)
            
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    
    
    override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
    
        let alert = UIAlertController(title: "Accessory Tapped", message: "You have tapped accessory for\(testData[indexPath.row])", preferredStyle: .Alert)
        
        
        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
        
        self.presentViewController (alert, animated: true, completion: nil)
        
    }

    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
        
        
        
        
        
        let tempData1 = testData[fromIndexPath.row]
        
        let tempData2 = testData[toIndexPath.row]
        
        testData[fromIndexPath.row] = tempData2
        testData[toIndexPath.row] = tempData1
        
        let tempCountry1 = countries[fromIndexPath.row]

        let tempCountry2 = countries[toIndexPath.row]
        
        
        countries[fromIndexPath.row] = tempCountry2
        countries[toIndexPath.row] = tempCountry1
        
        
        let image1 = images[fromIndexPath.row]
        let image2 = images[toIndexPath.row]
        
        images[fromIndexPath.row] = image2
        images[toIndexPath.row] = image1
        
        
        
        
        
        tableView.reloadData()
        
        
        
        
    }



    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
