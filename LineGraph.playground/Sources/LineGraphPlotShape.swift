import SwiftUI

public struct LineGraphPlotShape: Shape {
    private let values: [Double]
    
    public init(values: [Double]) {
        self.values = values
    }
    
    public func path(in rect: CGRect) -> Path {
        guard values.count > 0 else { return Path() }
        var path = Path()
        
        let widthStep = rect.size.width / CGFloat(values.count - 1)
        let heightStep = rect.size.height / CGFloat(values.max() ?? 0)

        if let value = values.first {
            let y = rect.size.height - CGFloat(value) * heightStep
            path.move(to: CGPoint(x: rect.origin.x, y: y))
        } else {
            path.move(to: CGPoint(x: rect.origin.x, y: rect.size.height))
        }
        
        for (index, value) in values.enumerated() {
            let value = CGFloat(value)
            let x = CGFloat(index) * widthStep
            let y = rect.size.height - CGFloat(value * heightStep)
            let point = CGPoint(x: x, y: y)
            path.addLine(to: point)
        }
        
        return path
    }
}

