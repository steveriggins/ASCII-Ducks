//
//  ScreenReducer.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/28/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import Foundation
import ReSwift

// This reducer takes an existing state of type AppState
// And checks to see what kind of action we'd like to operate on it
// If we got a ScreenActionNext, we ask the state's currentScreen what the next 
// screen should be (not sure if this is correct) and then updates it in a new copy
// of the state. We then return the state

// The current version of ReSwift declares the state parameter as an optional, so without
// reading the documentation, coded it to return a default AppState if no existing state was
// passed in, as the return type is required

struct ScreenReducer: Reducer {
    typealias ReducerStateType = AppState

    func handleAction(action: Action,  state: AppState?) -> AppState {
        if var newState = state {
            switch action {
            case _ as ScreenActionNext:
                newState.currentScreen = nextScreen(newState)
            default:
                break
            }
            
            return newState
        }
        
        return AppState() // We were not passed a state, so return a default state
    }
    
    func nextScreen(state: AppState) -> Screen {
        switch state.currentScreen {
        case .A:
            return .B
        case .B:
            return .C
        case .C:
            return .A
        }
    }

}