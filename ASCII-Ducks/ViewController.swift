//
//  ViewController.swift
//  ASCII-Ducks
//
//  Created by Steven W. Riggins on 1/28/16.
//  Copyright © 2016 Steve Riggins. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    @IBOutlet weak var label: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        mainStore.unsubscribe(self)
    }

    func newState(state: AppState) {
        label.text = "\(state.currentScreen)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextScreenAction(sender: AnyObject) {
        mainStore.dispatch(ScreenActionNext())
    }
    
    typealias StoreSubscriberStateType = AppState
}

