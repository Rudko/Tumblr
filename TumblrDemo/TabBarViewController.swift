//
//  TabBarViewController.swift
//  TumblrDemo
//
//  Created by Grigory Rudko on 11/5/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
    }
    
    
    @IBAction func didPressTab(_ sender: UIButton) {
        let previousIndex = selectedIndex
        buttons[previousIndex].isSelected = false
        let previousVC = viewControllers[previousIndex]

        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.isSelected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)

        // Call the viewDidAppear method of the ViewController you are adding using didMove(toParentViewController: self)
        vc.didMove(toParentViewController: self)
        
        
    }
    
  
    
}



















