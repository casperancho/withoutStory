//
//  ViewController.swift
//  vk_test
//
//  Created by Артем Закиров on 06.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import UIKit
import VK_ios_sdk

class ViewController: UIViewController, VKSdkDelegate, VKSdkUIDelegate{
    let dialogs = VKShareDialogController()
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
         self.present(controller, animated: true, completion: nil)
    }
    
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print("token: \(result.token)")
    }
    
    func vkSdkUserAuthorizationFailed() {
        print("nono")
    }
    
    let Scope = ["video"]
    var vk_app_id = "6848921"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var viewview: UIView!
    
    @IBAction func click(_ sender: Any) {
        let sdk = VKSdk.initialize(withAppId: self.vk_app_id)
        sdk?.uiDelegate = self
        sdk!.register(self)
        VKSdk.wakeUpSession(Scope, complete: {(state: VKAuthorizationState, error: Error?) -> Void in
            if state == .authorized {
                
            } else {
                VKSdk.authorize(self.Scope)
            }
            return
        })
        video()
    }
    
    func video(){
        var video : VKRequest? = VKApi.users()?.get()
        print(video)
    }
    
}

