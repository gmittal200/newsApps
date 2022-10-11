//
//  ScreenRouter.swift
//  NewsApps
//
//  Created by Gautam Mittal on 11/10/22.
//

import Foundation
import UIKit

// protocol which defines methods to transition to diferent screen in the app
protocol AppRoutable {

}

class AppRouter: AppRoutable {
    private let navigationController: UINavigationController
    private let screenBuilder: ScreenBuilder

    init(navigationController: UINavigationController,
         screenBuilder: ScreenBuilder) {
        self.navigationController = navigationController
        self.screenBuilder = screenBuilder
    }

    func enterApp() {
        let screen = screenBuilder.getHomeScreen()
        navigationController.pushViewController(screen, animated: false)
    }
}
