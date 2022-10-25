//
//  SignUpVC.swift
//  CookBook
//
//  Created by user on 25.10.2022.
//

import UIKit

class SignUpVC: UIViewController {
  
    @IBOutlet weak var miniAppName: UILabel!
    @IBOutlet weak var miniLogo: UIImageView!
    @IBOutlet weak var logotype: UIImageView!
    @IBOutlet weak var labelAppName: UILabel!
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var labelPassword: UILabel!
    @IBOutlet weak var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // the text fields borders are invisible for me
        // so I edit apply border width to see animation
        inputLogin.layer.cornerRadius = 18
        inputLogin.layer.borderWidth = 0.5
        inputPassword.layer.cornerRadius = 18
        inputPassword.layer.borderWidth = 0.5
        
        // set elements to start positions for animation
        //animateMini(1)
        //startAnimation2()
        miniAnimationPos(step: 1)
        mainAnimationPos(step: 1)
    }
    
    /*
     //
     // this version works, but
     // mini icon disappears too fast
     // and the signup form appears too slow
     //
    override func viewWillAppear(_ animated: Bool) {
        miniAnimationPos(step: 2)
        UIView.animate(withDuration: 2.5, delay: 0.0, options: [.curveEaseIn], animations: {
            self.miniAnimationPos(step: 3)
            self.mainAnimationPos(step: 2)
        }, completion: {_ in
            //self.miniLogo.removeFromSuperview()
            //self.miniAppName.removeFromSuperview()
        })
    }
    */

    //
    // animate with 3 steps
    //
    override func viewDidAppear(_ animated: Bool) {
      
        //
        // emerging mini logo
        // processing slow-fast
        //
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.miniAnimationPos(step: 2)
        }, completion: nil )
                  
        //
        // keep mini logo - delay 1 sec
        // then dissolve it back withDuration: 1.2
        // and remove it after completion
        //
        UIView.animate(withDuration: 0.5, delay: 2.0, options: .curveEaseIn, animations: {
            self.miniAnimationPos(step: 3)
        }, completion: {_ in
            self.miniLogo.removeFromSuperview()
            self.miniAppName.removeFromSuperview()
        })
        
        //
        // show SignUp elements
        //
        UIView.animate(withDuration: 1.0, delay: 1.5, options: .curveEaseIn, animations: {
            self.mainAnimationPos(step: 2)
        })
    }

    func miniAnimationPos( step: Int )
    {
        let alpha = 1 == step ? 0.5 :
            (2 == step) ? 1.0 : 0.0
        
        self.miniLogo.alpha    = alpha
        self.miniAppName.alpha = alpha
    }
    
    func mainAnimationPos( step: Int )
    {
        let shift = (1 == step) ? -110.0 : 110.0
        let mainAlpha = (1 == step) ? 0.0 : 1.0
        
        self.logotype.alpha     = mainAlpha
        self.labelAppName.alpha = mainAlpha
        self.btnSignUp.alpha    = mainAlpha
        
        self.labelLogin.alpha = mainAlpha
        self.inputLogin.alpha = mainAlpha
 
        self.labelPassword.alpha = mainAlpha
        self.inputPassword.alpha = mainAlpha

        self.btnSignUp.center.y  += shift
        self.labelLogin.center.y += shift
        self.inputLogin.center.y += shift
              
        self.labelPassword.center.y += shift
        self.inputPassword.center.y += shift
    }
        
    
    /*
    func animateMini(_ step: Int)
    {
        let alpha = 1 == step ? 0.5 :
                   (2 == step) ? 1.0 : 0.0
        
        self.miniLogo.alpha = alpha
        self.miniAppName.alpha = alpha
    }
    
    func startAnimation2()
    {
        self.logotype.alpha = 0.0
        self.labelAppName.alpha = 0.0
        self.btnSignUp.alpha = 0.0
        
        self.labelLogin.alpha = 0.0
        self.inputLogin.alpha = 0.0
 
        self.labelPassword.alpha = 0.0
        self.inputPassword.alpha = 0.0

        self.btnSignUp.center.y += 110
        self.labelLogin.center.y += 110
        self.inputLogin.center.y += 110
              
        self.labelPassword.center.y += 110
        self.inputPassword.center.y += 110
    }
    
    func endAnimation2()
    {
        self.logotype.alpha = 1.0
        self.labelAppName.alpha = 1.0
        self.btnSignUp.alpha = 1.0

        self.labelLogin.alpha = 1.0
        self.inputLogin.alpha = 1.0

        self.labelPassword.alpha = 1.0
        self.inputPassword.alpha = 1.0
        
        self.btnSignUp.center.y -= 110
        self.labelLogin.center.y -= 110
        self.inputLogin.center.y -= 110

        self.labelPassword.center.y -= 110
        self.inputPassword.center.y -= 110
    }
    */
     
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
