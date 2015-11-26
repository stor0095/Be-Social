//
//  ViewController.swift
//  Be Social
//
//  Created by Geemakun Storey on 2015-11-05.
//  Copyright © 2015 stor0095@algonquinlive.com. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var tapButtonLabel: UILabel!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var adBanner: ADBannerView!
    @IBOutlet var adBanner1: ADBannerView!
    
    
  
    // http://www.ioscreator.com/tutorials/display-an-alert-view-in-ios8-with-swift //
    
    @IBAction func alertButton(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Shut off your phone and put it down.", message:
            "Please. Try it!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Okay!", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
   
     func bannerViewWillLoadAd(banner: ADBannerView!) {
     }
     
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        adBanner.hidden = false
        adBanner1.hidden = false
        }
     
     func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
          NSLog("Error! Ad did not load.")
     }

    override func viewDidLoad() {
        adBanner.hidden = true
        adBanner1.hidden = true
        adBanner.delegate = self
        adBanner1.delegate = self
        self.canDisplayBannerAds = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

