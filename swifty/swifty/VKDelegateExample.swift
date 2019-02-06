//
//  VKDelegateExample.swift
//  swifty
//
//  Created by Артем Закиров on 06.02.2019.
//  Copyright © 2019 bmstu. All rights reserved.
//

import Foundation
import SwiftyVK
import UIKit

final class VKDelegateExample: SwiftyVKDelegate {
    
    let appId = "6848921"
    let scopes: Scopes = [.video]
    
    init() {
        VK.setUp(appId: appId, delegate: self)
    }
    
    func vkNeedsScopes(for sessionId: String) -> Scopes {
        return scopes
    }
    
    func vkNeedToPresent(viewController: VKViewController) {
        // This code works only for simplest cases and one screen applications
        // If you have application with two or more screens, you should use different implementation
        // HINT: google it - get top most UIViewController
        #if os(macOS)
        if let contentController = NSApplication.shared.keyWindow?.contentViewController {
            contentController.presentViewControllerAsSheet(viewController)
        }
        #elseif os(iOS)
        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
            rootController.present(viewController, animated: true)
        }
        #endif
    }
    
    func vkTokenCreated(for sessionId: String, info: [String : String]) {
        print("token created in session \(sessionId) with info \(info)")
    }
    
    func vkTokenUpdated(for sessionId: String, info: [String : String]) {
        print("token updated in session \(sessionId) with info \(info)")
    }
    
    func vkTokenRemoved(for sessionId: String) {
        print("token removed in session \(sessionId)")
    }
}
