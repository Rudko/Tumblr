//
//  ComposeViewController.swift
//  TumblrDemo
//
//  Created by Grigory Rudko on 11/5/16.
//  Copyright © 2016 Grigory Rudko. All rights reserved.
//

import UIKit



class ComposeViewController: UIViewController {
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        textButton.center.y = 570
        photoButton.center.y = 570
        quoteButton.center.y = 570
        linkButton.center.y = 690
        chatButton.center.y = 690
        videoButton.center.y = 690
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.15, delay: 0.05, options: .curveEaseOut, animations: {
            self.photoButton.center.y = self.photoButton.center.y - 414
            self.chatButton.center.y = self.chatButton.center.y - 400
        }, completion: nil)
        
        UIView.animate(withDuration: 0.15, delay: 0.1, options: .curveEaseOut, animations: {
        self.textButton.center.y = self.textButton.center.y - 414
        self.quoteButton.center.y = self.quoteButton.center.y - 414
        self.linkButton.center.y = self.linkButton.center.y - 400
        self.videoButton.center.y = self.videoButton.center.y - 400

        
        }, completion: nil)
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    @IBAction func didPressNevermind(_ sender: Any) {
        dismiss(animated: true, completion: nil)

        
        
    }
    
    
}
