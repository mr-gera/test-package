// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import PolyKit

public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        Polygon(count: 6, cornerRadius: 60)
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}
