//
//  AppDelegate.swift
//  SinaWeiBo
//
//  Created by panda zheng on 15/6/18.
//  Copyright (c) 2015年 panda zheng. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //1.创建窗口
        self.window?.frame = UIScreen.mainScreen().bounds  //窗口大小等于屏幕的大小
        
        //2.创建根视图控制器
        var tabbarVC = UITabBarController()
        self.window?.rootViewController = tabbarVC
        
        //3.创建子视图控制器
        var Home = HomeViewController()
        var Mess = MessViewController()
        var Foun = FounViewController()
        var My   = MyViewController()
        
        addChildVc(Home, title: "首页", image: "tabbar_home", selectedImage: "tabbar_home_highlighted")
        addChildVc(Mess, title: "消息", image: "tabbar_message_center", selectedImage: "tabbar_message_center_highlighted")
        addChildVc(Foun, title: "搜索", image: "tabbar_discover", selectedImage: "tabbar_discover_highlighted")
        addChildVc(My, title: "我", image: "tabbar_profile", selectedImage: "tabbar_profile_highlighted")
        
        tabbarVC.addChildViewController(Home)
        tabbarVC.addChildViewController(Mess)
        tabbarVC.addChildViewController(Foun)
        tabbarVC.addChildViewController(My)
        
        //4.显示窗口
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    //封装ViewController
    func addChildVc(childVc : UIViewController, title : String,image : String,selectedImage : String)
    {
        childVc.tabBarItem.title = title
        childVc.tabBarItem.image = UIImage(named: image)
        childVc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        /*
        Home.tabBarItem.title = "首页"
        Mess.tabBarItem.title = "消息"
        My.tabBarItem.title = "我"
        Foun.tabBarItem.title = "搜索"
        
        Home.tabBarItem.image = UIImage(named: "tabbar_home")
        Mess.tabBarItem.image = UIImage(named: "tabbar_message_center")
        My.tabBarItem.image = UIImage(named: "tabbar_profile")
        Foun.tabBarItem.image = UIImage(named: "tabbar_discover")
        
        Home.tabBarItem.selectedImage = UIImage(named: "tabbar_home_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        Mess.tabBarItem.selectedImage = UIImage(named: "tabbar_message_center_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        My.tabBarItem.selectedImage = UIImage(named: "tabbar_profile_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        Foun.tabBarItem.selectedImage = UIImage(named: "tabbar_discover_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)*/
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

