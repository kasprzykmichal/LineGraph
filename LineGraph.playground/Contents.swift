import UIKit
import SwiftUI
import PlaygroundSupport

let values: [Double] = (0...150).map({ _ in Double.random(in: 0...5) })

let lineGraphView = LineGraphView(values: values)
let controller = UIHostingController(rootView: lineGraphView)

let rect = CGRect(x: 0, y: 0, width: 500, height: 200)
controller.view.frame = rect
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = controller.view
