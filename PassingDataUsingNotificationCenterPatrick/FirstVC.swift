//
//  FirstVC.swift
//  PassingDataUsingNotificationCenterPatrick
//
//  Created by indianic on 22/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var FirstVCLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(doSomethingAfterNotified),name : NSNotification.Name(rawValue :myNotificationKey), object: nil)

        
        NotificationCenter.default.addObserver(self, selector: #selector(getDictData), name: NSNotification.Name(rawValue: "notify"), object: nil)
        

        
        // Do any additional setup after loading the view.
    }


    
    
    func doSomethingAfterNotified(notification: NSNotification) {
        print("I've been notified")
        FirstVCLabel.text = "Damn, I feel your spark 😱"
        
        let arrayObject =  notification.object as! [String]
        print("Recive Notification\(arrayObject)")
        
    }
    
    
    func getDictData(notification : NSNotification)
    {
        
        let dictData = notification.object as! [String : Int]
        
        print("DictData is \(dictData)")
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
