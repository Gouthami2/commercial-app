//
//  NumberOfPersonViewController.swift
//  app
//
//  Created by Gouthami Reddy on 8/12/18.
//  Copyright © 2018 Gouthami Reddy. All rights reserved.
//

import UIKit

class NumberOfPersonViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    

      let persons: [[String]] = [ ["Elon Musk", "+1-201-3141-5926" ] ,["Bill Gates", "+1-201-3141-5926"],["Tim Cook", "+1-201-3141-5926"], [ "Jeff Bezos", "+1-201-3141-5926"] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return persons.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "PersonIdentifier") as! TableViewCell
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "PersonIdentifier") as! TableViewCell
        }
        
        print("\(#function) --- section = \(indexPath.section), row = \(indexPath.row)")
        
        cell.name.text = persons[indexPath.row][0]
        cell.phoneNumber.text = persons[indexPath.row][1]
        
        return cell
    }
   
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        if let url = URL(string: "tel://" + persons[indexPath.row][1])
//        {
//            UIApplication.shared.open(url)
//        }
//    }
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
