import SwiftUI

public struct LineGraphPointerShape: Shape {
    private let point: CGPoint?
    
    public init(point: CGPoint?) {
        self.point = point
    }
    
    public  func path(in rect: CGRect) -> Path {
        guard let point = self.point else { return Path() }
        var path = Path()
        path.move(to: CGPoint(x: point.x, y: rect.size.height))
        path.addLine(to: CGPoint(x: point.x, y: rect.origin.y))
        return path
    }
}

