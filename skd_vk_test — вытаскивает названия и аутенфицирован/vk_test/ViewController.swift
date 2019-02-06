//
//  ViewController.swift
//  vk_test
//
//  Created by Артем Закиров on 06.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import UIKit
import VK_ios_sdk

class ViewController: UIViewController, VKSdkDelegate{
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print("es")
    }
    
    func vkSdkUserAuthorizationFailed() {
        print("no")
    }
    
    let dialogs = VKShareDialogController()
    
   
    
    let Scope = ["video"]
    var vk_app_id = "6848921"
    override func viewDidLoad() {
        super.viewDidLoad()

        VKSdk.initialize(withAppId: vk_app_id)

        let wakeUpSession = VKSdk.wakeUpSession(Scope, complete: {(state: VKAuthorizationState, error: Error?) -> Void in
                        if state == .authorized {

                        } else {
                            VKSdk.authorize(self.Scope)
                        }
                        return
                    })


        
    }

    @IBOutlet var viewview: UIView!
    
    @IBAction func click(_ sender: Any) {
        
      
//        let sdk = VKSdk.initialize(withAppId: self.vk_app_id)
////        sdk?.uiDelegate =
////        sdk!.register(self)
//        VKSdk.wakeUpSession(Scope, complete: {(state: VKAuthorizationState, error: Error?) -> Void in
//            if state == .authorized {
//                print("yes")
//            } else {
//                VKSdk.authorize(self.Scope)
//            }
//            return
//        })

    }
    
    @IBAction func sdcsd(_ sender: Any) {
        var video : VKRequest = VKApi.request(withMethod: "video.get", andParameters: ["owner_id": "5526715"])
        video.execute(resultBlock: { (response) -> Void in
            let videos = response?.json as! NSDictionary
            let videoCount = videos["count"]!
            let items = videos["items"] as! NSArray
            let first = items[0] as! NSDictionary
            let firstTitle = first["title"] as! String
            print(firstTitle)
            print(videoCount)
        },errorBlock: {(Error) -> Void in
            print(Error)
        })
        print("wdewedwe")
    }
    func getVideo(ownner: String){
        ///
    }
    
}

