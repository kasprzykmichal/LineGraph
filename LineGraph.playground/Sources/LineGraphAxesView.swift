import SwiftUI
import Foundation

public struct LineGraphAxesView: View {
    @State var point: CGPoint? = nil
    
    public var body: some View {
        ZStack {
                Rectangle()
                    .fill(Color(.sRGB, red: 1, green: 1, blue: 1, opacity: 0.01))
                LineGraphAxesShape()
                    .stroke(Color.white, lineWidth: 1.0)
                LineGraphPointerShape(point: point)
                    .stroke(Color.white, lineWidth: 1.0)
            }
            .gesture(
                DragGesture()
                    .onChanged { (result) in
                        self.point = result.location
                    }
                    .onEnded { (result) in
                        self.point = nil
                }
        )
    }
}

