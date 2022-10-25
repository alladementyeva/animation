//
//  SignInVC.swift
//
//
//  Created by user on 23.10.2022.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var logotype: UIImageView!
   	@IBOutlet weak var labelAppName: UILabel!
	
	@IBOutlet weak var stSignIn: UIStackView!

	@IBOutlet weak var inputLogin: UITextField!
	@IBOutlet weak var labelLogin: UILabel!
	@IBOutlet weak var inputPassword: UITextField!
	@IBOutlet weak var labelPassword: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		// the text fields borders are invisible for me
		// so I edit apply border width to see animation
		inputLogin.layer.cornerRadius = 18
		inputLogin.layer.borderWidth = 0.5
		inputPassword.layer.cornerRadius = 18
		inputPassword.layer.borderWidth = 0.5
		
		// set elements to start positions for animation
		startAnimation()
	}
	

	
/*
    override func viewWillAppear(_ animated: Bool) {
        //
        // this moving is visible
        //
        inputLogin.center.x -= view.bounds.width
        inputPassword.center.x += view.bounds.width
        logotype.center.y -= view.bounds.height
        appNameLabel.center.y -= view.bounds.height
    }
*/
	override func viewDidAppear(_ animated: Bool) {
		// run slow-fast-slow
		UIView.transition(with: self.view, duration: 1.0, options: .curveEaseInOut) {
			self.endAnimation()
		}
	}
	
	func startAnimation()
	{
		self.logotype.alpha = 0.0
		self.labelAppName.alpha = 0.0
		self.stSignIn.alpha = 0.0
		
		self.labelLogin.alpha = 0.0
		self.inputLogin.alpha = 0.0
		
		self.labelLogin.center.x -= self.view.bounds.width
		self.labelLogin.center.y -= 70
		self.inputLogin.center.y -= 70
		
		self.labelPassword.alpha = 0.0
		self.inputPassword.alpha = 0.0
		
		self.labelPassword.center.x += self.view.bounds.width
		self.labelPassword.center.y -= 70
		self.inputPassword.center.y -= 70
	}
	
	func endAnimation()
	{
		self.logotype.alpha = 1.0
		self.labelAppName.alpha = 1.0
		self.stSignIn.alpha = 1.0

		self.labelLogin.alpha = 1.0
		self.inputLogin.alpha = 1.0

		self.labelPassword.alpha = 1.0
		self.inputPassword.alpha = 1.0
		
		self.labelLogin.center.x += self.view.bounds.width
		self.labelLogin.center.y += 70
		self.inputLogin.center.y += 70

		self.labelPassword.center.x -= self.view.bounds.width
		self.labelPassword.center.y += 70
		self.inputPassword.center.y += 70
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
