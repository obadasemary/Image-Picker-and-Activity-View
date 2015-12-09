//
//  ViewController.swift
//  Image Picker and Activity View
//
//  Created by Abdelrahman Mohamed on 12/9/15.
//  Copyright © 2015 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func experiment(sender: UIButton) {
    
        let nextController = UIImagePickerController()
        
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func ImageExperiment(sender: UIButton) {
        
        let image = UIImage()
        let nextController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func alertExperiment(sender: UIButton) {
        
        let nextController = UIAlertController()
        
        nextController.title = "Test alert"
        nextController.message = "This is a test Alert 😂"
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        nextController.addAction(okAction)
        
        self.presentViewController(nextController, animated: true, completion: nil)
    }
}

