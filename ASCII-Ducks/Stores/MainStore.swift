//
//  MainStore.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/29/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import Foundation
import ReSwift

// Temporary hack to create a state store for the app in a global
// Would be better hung off a singleton or the app
let mainStore = Store<AppState>(reducer: ScreenReducer(), state: AppState(), middleware: [])
