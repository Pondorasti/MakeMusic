//
//  MusicTImerViewController.swift
//  MakeMusic
//
//  Created by Shutaro Aoyama on 2018/08/04.
//  Copyright © 2018年 Alexandru Turcanu. All rights reserved.
//

import UIKit

class MusicTImerViewController: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var musicTitle: UILabel!
    @IBOutlet weak var musicArtist: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var timerBar: UIView!
    
    @IBOutlet weak var timerBarTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Util.blur(imageView: bgImage)
        
        setTimerBar(progress: 0.5)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTimerBar(progress: CGFloat) {
        if progress <=  1 {
            let spacing = view.frame.height * progress
            timerBarTopConstraint.constant = spacing
        }
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
