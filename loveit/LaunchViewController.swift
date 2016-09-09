//
//  ViewController.swift
//  loveit
//
//  Created by takumi.kashima on 8/17/16.
//  Copyright © 2016 UNUUU. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

   private var presenter: LaunchPresenter!
    
    @IBAction func onClickButtonLineLogin(sender: AnyObject) {
        presenter.onClickButtonLineLogin()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LaunchPresenter(view: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}

extension LaunchViewController: LaunchViewProtocol {
    func navigateToSearchScroll() {
        let storyboard = UIStoryboard(name: "SearchSchool", bundle: NSBundle.mainBundle())
        let searchSchoolViewController =  storyboard.instantiateInitialViewController() as! SearchSchoolViewController
        self.presentViewController(searchSchoolViewController, animated: true, completion: nil)
    }
}
