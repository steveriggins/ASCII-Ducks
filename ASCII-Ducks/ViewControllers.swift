//
//  ViewControllerA.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/29/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import UIKit
import ReSwift

// This is a worst case example of multiple viewControllers
// Implementing the same basic interface with the actions and
// Stores.

// This was done this way to allow each view controller to diverge over time
// newFromStoryBoard was replicated because it's late and I got tired of
// fighting the type system

// This example does NOT handle when a user goes back on the nav stack

class ViewControllerA : UIViewController, StoreSubscriber {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "A"
    }
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        self.navigationController?.setViewControllers(state.navigationState.viewControllers, animated: true)
    }

    @IBAction func nextStepAction(sender: AnyObject) {
        mainStore.dispatch(ScreenActionNext())
    }
    
    class func newFromStoryBoard() -> ViewControllerA {
        let bundle = NSBundle.mainBundle()
        let storyBoard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("ViewControllerA")
        return viewController as! ViewControllerA
    }
    
}

class ViewControllerB : UIViewController, StoreSubscriber {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "B"
    }
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        self.navigationController?.setViewControllers(state.navigationState.viewControllers, animated: true)
    }

    @IBAction func nextStepAction(sender: AnyObject) {
        mainStore.dispatch(ScreenActionNext())
    }
    
    class func newFromStoryBoard() -> ViewControllerB {
        let bundle = NSBundle.mainBundle()
        let storyBoard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("ViewControllerB")
        return viewController as! ViewControllerB
    }
    
}


class ViewControllerC : UIViewController, StoreSubscriber {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "C"
    }
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        self.navigationController?.setViewControllers(state.navigationState.viewControllers, animated: true)
    }

    @IBAction func nextStepAction(sender: AnyObject) {
        mainStore.dispatch(ScreenActionNext())
    }

    class func newFromStoryBoard() -> ViewControllerC {
        let bundle = NSBundle.mainBundle()
        let storyBoard = UIStoryboard(name: "Main", bundle: bundle)
        let viewController = storyBoard.instantiateViewControllerWithIdentifier("ViewControllerC")
        return viewController as! ViewControllerC
    }
    
}

