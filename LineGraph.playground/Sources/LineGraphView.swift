import SwiftUI

public struct LineGraphView: View {
    private let values: [Double]

    public init(values: [Double]) {
        self.values = values
    }
    
    public var body: some View {
        ZStack {
            LineGraphAxesView()
            LineGraphPlotShape(values: self.values)
                .stroke(Color.yellow, lineWidth: 0.5)
        }
        .padding(10)
        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
        .drawingGroup()
    }
}

