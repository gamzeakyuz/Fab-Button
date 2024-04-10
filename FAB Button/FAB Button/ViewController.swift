//
//  ViewController.swift
//  FAB Button
//
//  Created by Gamze Akyüz on 28.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fabMain: UIButton!
    @IBOutlet weak var fabIki: UIButton!
    @IBOutlet weak var fabUc: UIButton!

    var fabDurum = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fabMain.layer.cornerRadius = fabMain.frame.size.width/2
        fabIki.layer.cornerRadius = fabIki.frame.size.width/2
        fabUc.layer.cornerRadius = fabUc.frame.size.width/2
        
        self.fabIki.alpha = 0
        self.fabUc.alpha = 0
        
        self.fabIki.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.fabUc.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
    }
    
    @IBAction func fabMainTikla(_ sender: Any) {
        print("FabMain Tıklandı")

        UIView.animate(withDuration: 0.5, animations: {
            
            if self.fabDurum {
                self.fabIki.alpha = 0
                self.fabUc.alpha = 0
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                
                self.fabIki.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.fabUc.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
                self.fabDurum = false
            }else {
                
                self.fabIki.alpha = 1
                self.fabUc.alpha = 1
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                
                self.fabIki.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.fabUc.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                
                self.fabDurum = true
            }
            
        })
        
    }
    @IBAction func fabIkiTikla(_ sender: Any) {
        print("fabIkiTiklandi")
    }
    @IBAction func fabUcTikla(_ sender: Any) {
        print("fabUcTiklandi")
    }

}

