/*:
 支持音视频、图片、storyboard等资源
 ![类型](ress.png)
 */

import UIKit
import PlaygroundSupport

let img = UIImage(named: "ress")
let imgView = UIImageView(image: img)
imgView.frame = CGRect(x: 0, y: 10, width: 300, height: 300)

PlaygroundPage.current.liveView = imgView
