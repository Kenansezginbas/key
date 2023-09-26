//
//  SceneDelegate.swift
//  Key
//
//  Created by Kenan Sezginbaş on 26.09.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.screen.bounds)
        window?.windowScene         = windowScene
        window?.rootViewController  = SignInVC()
        window?.makeKeyAndVisible()
    }




}

