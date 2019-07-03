import SwiftUI

public struct LineGraphAxesShape: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.origin.x, y: rect.size.height))
        path.addLine(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
        path.move(to: CGPoint(x: rect.origin.x, y: rect.size.height))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        return path
    }
}

