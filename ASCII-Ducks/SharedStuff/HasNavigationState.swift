//
//  HasNavigationState.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/29/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import UIKit

struct NavigationState {
    var viewControllers:[UIViewController]
}

protocol HasNavigationState {
    var navigationState: NavigationState { get set }
}

