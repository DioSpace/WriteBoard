//
//  header.swift
//  swift_UI02
//
//  Created by William on 2018/7/30.
//  Copyright © 2018年 William. All rights reserved.
//

import UIKit

//屏幕宽
let ScreenWIDTH = UIScreen.main.bounds.width
//屏幕高
let ScreenHEIGHT = UIScreen.main.bounds.height

//获取导航栏高度
func getNavigationBarHeight() -> CGFloat {
    let nav = UINavigationController()
    let navigationHeight = nav.navigationBar.frame.size.height
    return navigationHeight
}
//获取tabBar高度
func getTabBarHeight() -> CGFloat {
    let tabBarCon = UITabBarController()
    let tabBarHeight = tabBarCon.tabBar.frame.size.height
    return tabBarHeight
}
