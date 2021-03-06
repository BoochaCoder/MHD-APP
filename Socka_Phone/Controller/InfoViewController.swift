//
//  InfoViewController.swift
//  myLocation
//
//  Created by Boocha on 05.10.17.
//  Copyright © 2017 Boocha. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    // VC pro info o aplikaci.
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var zavritBTN: UIButton!
    @IBOutlet weak var hlavniLabel: UILabel!
    @IBOutlet weak var verzeDtbzLabel: UILabel!
    @IBOutlet weak var verzeAplikaceLabel: UILabel!
    
    @IBAction func kontaktButton(_ sender: Any) {
        let email = "bucek.jiri@email.cz"
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func zavritBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hlavniLabel.adjustsFontSizeToFitWidth = true
        hlavniLabel.allowsDefaultTighteningForTruncation = true
        hlavniLabel.minimumScaleFactor = 0.1
        
        let databaze = Databaze.sharedPhone
        verzeDtbzLabel.text = "Verze databáze: \(databaze.zjistiVerziDtbzVDefaults())"
        verzeAplikaceLabel.text = "Verze aplikace: \(String(describing: Bundle.main.infoDictionary!["CFBundleShortVersionString"]!))"
        
        scrollView.bottomAnchor.constraint(equalTo: zavritBTN.bottomAnchor).isActive = true
    }
}
