//
//  TotalBuildingViewController.swift
//  app
//
//  Created by Gouthami Reddy on 8/12/18.
//  Copyright © 2018 Gouthami Reddy. All rights reserved.
//

import UIKit

class TotalBuildingViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    let contacts: [[String]] = [
    ["Number 100                                  1500"],
    ["Number 200                                  1600"],
    ["Number 300                                  2000"],
    ["Number 400                                  1900"],
    ["Number 500                                  1200"],
    ["Number 600                                  500"],
    ]
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellIdentifier")
        }
        
        //print("\(#function) --- section = \(indexPath.section), row = \(indexPath.row)")
        
        cell!.textLabel?.text = contacts[indexPath.row][0]
        cell!.detailTextLabel?.text = contacts[indexPath.row][1]
        return cell!
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      //tableView.backgroundView = UIImageView(image: UIImage(named: "images"))
        // Do any additional setup after loading the view.
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
