//
//  ScreenStore.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/28/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import UIKit
import ReSwift

// A screen enumeration that represents the different screens the app
// can be on
enum Screen {
    case A
    case B
    case C
}

struct AppState: StateType, HasNavigationState {
    var currentScreen: Screen = .A
    var navigationState: NavigationState = NavigationState(viewControllers:[ViewControllerA.newFromStoryBoard()])
}
