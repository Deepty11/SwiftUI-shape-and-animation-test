//
//  Triangle.swift
//  DrawingShapesAndPaths
//
//  Created by Rehnuma Reza on 11/14/22.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        
        path.addLines([CGPoint(x: rect.midX, y: rect.minY),
                       CGPoint(x: rect.minX, y: rect.maxY),
                       CGPoint(x:rect.maxX, y: rect.maxY)])
        
        return path
    }
}
