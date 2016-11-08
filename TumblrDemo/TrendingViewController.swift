//
//  TrendingViewController.swift
//  TumblrDemo
//
//  Created by Grigory Rudko on 11/5/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = feedView.frame.size
        scrollView.delegate = self
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
