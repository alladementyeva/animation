//
//  CandyVC.swift
//  CookBook
//
//  Created by user on 24.10.2022.
//

import UIKit

class CandyVC: UIViewController {
    
    @IBOutlet weak var bigCandy: UIImageView!
    @IBOutlet weak var smallCandy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // hide bigCandy
        bigCandy.alpha = 0.0
        smallCandy.alpha = 1.0
    }
    

    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.smallCandy.alpha = 0.0
            self.bigCandy.alpha = 1.0
        }, completion: nil )
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    /*
    // pulsing resize
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [.repeat, .autoreverse], animations: {
            self.candyPicture.frame.size.width = 105
            self.candyPicture.frame.size.height = 54
        }, completion: nil)
    }
    */
    
   
}
