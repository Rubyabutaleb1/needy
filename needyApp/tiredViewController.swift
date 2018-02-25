//
//  tiredViewController.swift
//  needyApp
//
//  Created by Admin on 2/25/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class tiredViewController: UIViewController {
    @IBOutlet weak var counter2: UILabel!
    @IBOutlet weak var gifImageView: UIImageView!
    
    @IBAction func counter2(_ sender: UIStepper) {
        counter2.text = String(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gifURL : String = "https://media.giphy.com/media/byzdhPPC3Wi8fz8i0x/source.gif"
        let gifImage = UIImage.gifImageWithURL(gifURL)
        gifImageView.image = gifImage
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
