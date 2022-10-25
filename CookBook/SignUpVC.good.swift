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
        animateMini(1)
        startAnimation2()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        //
        // emerging mini logo
        // processing slow-fast
        //
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.animateMini(2)
        }, completion: nil )
                  
        //
        // keep mini logo - delay 1 sec
        // then dissolve it back withDuration: 1.2
        // and remove it after completion
        //
        UIView.animate(withDuration: 0.5, delay: 2.0, options: .curveEaseIn, animations: {
            self.animateMini(3)
        }, completion: {_ in
            self.miniLogo.removeFromSuperview()
            self.miniAppName.removeFromSuperview()
        })
        
        //
        // show SignUp elements
        //
        UIView.animate(withDuration: 1.0, delay: 1.5, options: .curveEaseIn, animations: {
            self.endAnimation2()
        })
    }
    
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
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
