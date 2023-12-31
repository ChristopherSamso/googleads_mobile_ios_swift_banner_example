//
//  Copyright (C) 2015 Google, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import GoogleMobileAds
import UIKit

class ViewController: UIViewController {

  /// The banner view.
  @IBOutlet var bannerView: GAMBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()
    var frameRect = bannerView.frame
    frameRect.size.width = view.bounds.width
    frameRect.size.height = 250.0
    bannerView.frame = frameRect
    bannerView.adUnitID = "/701/iphone.wp.test"
    bannerView.rootViewController = self
    bannerView.validAdSizes = [NSValueFromGADAdSize(GADAdSizeMediumRectangle), NSValueFromGADAdSize(GADAdSizeFluid)]
    bannerView.load(GAMRequest())
  }

}
