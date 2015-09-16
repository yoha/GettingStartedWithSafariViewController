//
//  ViewController.swift
//  GettingStartedWithSafariViewController
//
//  Created by Jordan Morgan on 6/25/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController
{
    private var urlString:String = "https://google.com"

    //MARK: Lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Web Content Presenting
    @IBAction func openInSafari(sender: AnyObject)
    {
        //TODO: Open in native safari
        let url = NSURL(string: self.urlString)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func openWithSafariVC(sender: AnyObject)
    {
        //TODO: Open in safari view controller
        let safariViewController = SFSafariViewController(URL: NSURL(string: self.urlString)!, entersReaderIfAvailable: true)
        self.presentViewController(safariViewController, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        //TODO: open in webview
        if let navigationController = segue.destinationViewController as? UINavigationController {
            let customWebViewController = navigationController.topViewController as! CustomWebViewController
            customWebViewController.urlString = self.urlString
        }
    }
}

