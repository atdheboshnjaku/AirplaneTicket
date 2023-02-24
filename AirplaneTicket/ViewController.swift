//
//  ViewController.swift
//  AirplaneTicket
//
//  Created by Atdhe Boshnjaku on 2/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureAndArrivalView: UIView!
    @IBOutlet weak var clientAndTicketView: UIView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var virtualMapButton: UIButton!
    @IBOutlet weak var flightsView: UIView!
    @IBOutlet weak var ticketsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        departureAndArrivalView.layer.cornerRadius = 10
        departureAndArrivalView.layer.shadowColor = UIColor(red: 111.0/255, green: 54.0/255, blue: 218.0/255, alpha: 1.0).cgColor
        departureAndArrivalView.layer.shadowOpacity = 0.5
        departureAndArrivalView.layer.shadowOffset = CGSize(width: 0, height: 3)
        departureAndArrivalView.layer.shadowRadius = 8
        
        let radians = 2 * Double.pi / 180
        let radiansNeg = -2 * Double.pi / 180
        UIView.animate(withDuration: 1.3, delay: 0, options: [.repeat, .autoreverse], animations: {

            self.departureAndArrivalView.frame = CGRect(x: 20, y: 355, width: 350, height: 140)
            self.departureAndArrivalView.transform = CGAffineTransform(rotationAngle: radians)
            self.departureAndArrivalView.transform = CGAffineTransform(rotationAngle: radiansNeg)

        }, completion: nil)
        
        clientAndTicketView.layer.cornerRadius = 10
        clientAndTicketView.layer.shadowColor = UIColor.gray.cgColor
        clientAndTicketView.layer.shadowOpacity = 0.2
        clientAndTicketView.layer.shadowOffset = CGSize(width: 0, height: 3)
        clientAndTicketView.layer.shadowRadius = 8
        
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        
        virtualMapButton.layer.cornerRadius = 8
        virtualMapButton.layer.shadowColor = UIColor(red: 255.0/255, green: 210.0/255, blue: 105.0/255, alpha: 1.0).cgColor
        virtualMapButton.layer.shadowOpacity = 0.4
        virtualMapButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        virtualMapButton.layer.shadowRadius = 10
        virtualMapButton.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 18.0)
        let buttonRadians = -90 * Double.pi / 180
        self.flightsView.transform = CGAffineTransform(rotationAngle: buttonRadians)
        
        ticketsButton.layer.cornerRadius = 17
        ticketsButton.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 15.0)
        
    }


}

