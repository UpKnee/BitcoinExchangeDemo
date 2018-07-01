//
//  NewsViewController.swift
//  BitcoinExchange
//
//  Created by Surayuth Piriyawong on 7/1/18.
//  Copyright © 2018 Surayuth Piriyawong. All rights reserved.
//

import UIKit
import Kingfisher

class NewsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")
        imageView.kf.setImage(with: url)
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
