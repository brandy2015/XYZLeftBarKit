//
//  XYZLeftBar.swift
//  XYZLeftBarKit
//
//  Created by 张子豪 on 2019/12/16.
//  Copyright © 2019 张子豪. All rights reserved.
//

import UIKit
import SideMenu

class XYZLeftBar: NSObject {

}

//SideMenu_Extension
public extension UIViewController{
    
    
    private func LeftRightBar() {
        // Define the menus
        //        let leftMenuNavigationController = SideMenuNavigationController(rootViewController: YourViewController)
        //        SideMenuManager.default.leftMenuNavigationController = leftMenuNavigationController
        //
        //        let rightMenuNavigationController = SideMenuNavigationController(rootViewController: YourViewController)
        //        SideMenuManager.default.rightMenuNavigationController = rightMenuNavigationController
        //
        //        // Setup gestures: the left and/or right menus must be set up (above) for these to work.
        //        // Note that these continue to work on the Navigation Controller independent of the view controller it displays!
        //        SideMenuManager.default.addPanGestureToPresent(toView: self.navigationController!.navigationBar)
        //        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        //
        //        // (Optional) Prevent status bar area from turning black when menu appears:
        //        leftMenuNavigationController.statusBarEndAlpha = 0
        //        // Copy all settings to the other menu
        //        rightMenuNavigationController.settings = leftMenuNavigationController.settings
    }
    func AddLeftSideBar() {
        let NAV = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "LeftSideMemuTVCID")
        let leftMenuNavigationController = SideMenuNavigationController(rootViewController: NAV)
        
        SideMenuManager.default.leftMenuNavigationController = leftMenuNavigationController
        SideMenuManager.default.addPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        
        
    }
    
    func PresentLeftSideBar() {
        let NAV = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(withIdentifier: "LeftSideMemuTVCID")
        let menu = SideMenuNavigationController(rootViewController: NAV)
        menu.leftSide = true
        present(menu, animated: true, completion: nil)
    }
}
