//
//  ViewController.swift
//  TestScrape
//
//  Created by peter7777usa on 03/05/2018.
//  Copyright (c) 2018 peter7777usa. All rights reserved.
//

import UIKit

import SwiftScraper

/// This example performs a search on Google, and prints the results.
class ViewController: UIViewController {
    var stepRunner: StepRunner!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let step1 = OpenPageStep(path: "http://www.chase.com")
        
        let step2 = PageChangeStep(
            functionName: "performSignin",
            params: "")
        stepRunner = StepRunner(moduleName: "ChaseScraping", steps: [step1, step2])
        stepRunner.insertWebViewIntoView(parent: view)
        stepRunner.state.afterChange.add { change in
            print("-----", change.newValue, "-----")
            switch change.newValue {
            case .inProgress(let index):
                print("About to run step at index", index)
            case .failure(let error):
                print("Failed: ", error.localizedDescription)
            case .success:
                print("Finished successfully")
            default:
                break
            }
        }
        stepRunner.run()
    }
    
    
    //Google image click
    //
    //override func viewDidLoad() {
    //    super.viewDidLoad()
    //
    //    let step1 = OpenPageStep(
    //        path: "https://www.google.com")
    //    let step2 = PageChangeStep(
    //        functionName: "performSearch",
    //        params: "SwiftScraper iOS")
    //
    //    let step3 = ScriptStep(functionName: "getSearchResults") { response, _ in
    //        if let responseArray = response as? [JSON] {
    //            responseArray.forEach { json in
    //                if let text = json["text"], let href = json["href"] {
    //                    print(text, "(", href, ")")
    //                }
    //            }
    //        }
    //        return .proceed
    //    }
    //
    //    stepRunner = StepRunner(moduleName: "GoogleSearch", steps: [step1, step2])
    //    stepRunner.insertWebViewIntoView(parent: view)
    //    stepRunner.state.afterChange.add { change in
    //        print("-----", change.newValue, "-----")
    //        switch change.newValue {
    //        case .inProgress(let index):
    //            print("About to run step at index", index)
    //        case .failure(let error):
    //            print("Failed: ", error.localizedDescription)
    //        case .success:
    //            print("Finished successfully")
    //        default:
    //            break
    //        }
    //    }
    //    stepRunner.run()
    //}
    
}






//let step1 = OpenPageStep(
//    path: "https://www.google.com",
//    assertionName: "assertGoogleTitle")
//
//let step2 = PageChangeStep(
//    functionName: "performSearch",
//    params: "Test",
//    assertionName: "assertSearchResultTitle")
//
//let step3 = ScriptStep(functionName: "getSearchResults") { response, _ in
//    if let responseArray = response as? [JSON] {
//        responseArray.forEach { json in
//            if let text = json["text"], let href = json["href"] {
//                print(text, "(", href, ")")
//            }
//        }
//    }
//    return .proceed
//}
//
//stepRunner = StepRunner(moduleName: "GoogleSearch", steps: [step1, step2, step3])
//stepRunner.insertWebViewIntoView(parent: view)
//stepRunner.state.afterChange.add { change in
//    print("-----", change.newValue, "-----")
//    switch change.newValue {
//    case .inProgress(let index):
//        print("About to run step at index", index)
//    case .failure(let error):
//        print("Failed: ", error.localizedDescription)
//    case .success:
//        print("Finished successfully")
//    default:
//        break
//    }
//}

