//
//  ViewController.swift
//  AirplaneTicket
//
//  Created by Atdhe Boshnjaku on 2/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureAndArrivalView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        departureAndArrivalView.layer.cornerRadius = 10
        departureAndArrivalView.layer.shadowColor = UIColor(red: 111.0/255, green: 54.0/255, blue: 218.0/255, alpha: 1.0).cgColor
        departureAndArrivalView.layer.shadowOpacity = 0.5
        departureAndArrivalView.layer.shadowOffset = CGSize(width: 0, height: 3)
        departureAndArrivalView.layer.shadowRadius = 4
        departureAndArrivalView.layer.shouldRasterize = true
        
        let radians = 2 * Double.pi / 180
        UIView.animate(withDuration: 1.3, delay: 0, options: [.repeat, .autoreverse], animations: {

            self.departureAndArrivalView.frame = CGRect(x: 20, y: 355, width: 350, height: 140)
            self.departureAndArrivalView.transform = CGAffineTransform(rotationAngle: radians)
            self.departureAndArrivalView.transform = CGAffineTransform(rotationAngle: -radians)

        }, completion: nil)
        
    }


}

