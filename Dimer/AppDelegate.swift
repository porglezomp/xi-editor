// Copyright 2016 Google Inc. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    var coreConnection: CoreConnection?


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        print(NSBundle.mainBundle().bundlePath)
        let corePath = NSBundle.mainBundle().pathForResource("python/dimercore", ofType: "py")
        if let corePath = corePath {
            print(corePath)
            coreConnection = CoreConnection(path: corePath)
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}
