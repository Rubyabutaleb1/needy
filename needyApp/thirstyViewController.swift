//
//  thirstyViewController.swift
//  needyApp
//
//  Created by Admin on 2/24/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ThirstyViewController: UIViewController,
UIScrollViewDelegate {
    @IBOutlet weak var cupCount: UILabel!
    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var water: UIScrollView!
    
    @IBAction func counter(_ sender: UIStepper) {
        cupCount.text = String(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 12.0
        
        let gifURL =  "https://media.giphy.com/media/jb3pss43wfenqxQv0H/source.gif"
        let gifImage = UIImage.gifImageWithURL(gifURL)
        gifImageView.image = gifImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return self.water
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
