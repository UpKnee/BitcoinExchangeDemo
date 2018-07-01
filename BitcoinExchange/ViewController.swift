//
//  ViewController.swift
//  BitcoinExchange
//
//  Created by Surayuth Piriyawong on 6/24/18.
//  Copyright © 2018 Surayuth Piriyawong. All rights reserved.
//
// breeze
import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource {
    
    var parings: [Paring]! = [Paring]() //Init Class?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Test git hub
        
        self.tableView.dataSource = self
        // pull paring from BX
        Alamofire.request("https://bx.in.th/api/pairing/").responseJSON { response in
                
                if(response.response == nil) {
                    return
                }
                
                switch (response.result) {
                case .success:
                    
                    if let json = response.result.value {
                        print("JSON: \(json)")
                        if let dict:NSDictionary = json as? NSDictionary {
                            for i in 1...dict.count{    //???
                                if let partDict = dict.object(forKey: "\(i)"){
                                    let paring = Paring(jsonDict: partDict as! NSDictionary)
                                    self.parings.append(paring)
                                }
                            }
                        }
                    }
                    self.tableView.reloadData()
                    break
                    
                case .failure:
                    
                    break
                }   //switch
        }   //Asyncronized
    }   //viewDidLoad()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParingTableViewCell") as! ParingTableViewCell
        
        let paring = parings[indexPath.row]
        
        cell.activeLabel.text = paring.active
        cell.pairingIdLabel.text = paring.pairing_id
        
        return cell
    }

}

