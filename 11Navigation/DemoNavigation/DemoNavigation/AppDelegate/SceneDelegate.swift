//
//  SceneDelegate.swift
//  DemoNavigation
//
//  Created by Le Phuong Tien on 11/11/19.
//  Copyright © 2019 Fx Studio. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        let vc = FirstViewController()
        let navi = UINavigationController(rootViewController: vc)
        
        //navi.navigationBar.backgroundColor = .cyan
        //navi.navigationBar.tintColor = .systemPink
        //navi.navigationBar.barTintColor = .systemPink
        navi.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        window.rootViewController = navi
        
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}


}

