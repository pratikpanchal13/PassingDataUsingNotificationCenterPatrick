//
//  SecondVC.swift
//  PassingDataUsingNotificationCenterPatrick
//
//  Created by indianic on 22/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit

let myNotificationKey = "com.bobthedeveloper.notificationKey"

class SecondVC: UIViewController {

    @IBOutlet weak var secondVCLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(doThisWhenNotify), name: NSNotification.Name(rawValue: myNotificationKey), object: nil)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func tabToNotifyBack(_ sender: UIButton) {
        
        let arrayObject : [String] = ["1","2","3"]
        let dictObject : [String : Int] = [ "1":1, "2":2,"3":3]
        


        secondVCLabel.text = "Notification Completed!😜"
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: myNotificationKey), object: arrayObject)
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notify"), object: dictObject)
        
    }
    func doThisWhenNotify() {
        print("I've successfully sent a spark!")
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
