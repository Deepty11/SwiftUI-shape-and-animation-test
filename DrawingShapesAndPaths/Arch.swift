//
//  Arch.swift
//  DrawingShapesAndPaths
//
//  Created by Rehnuma Reza on 11/14/22.
//

import SwiftUI

struct Arch: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockWise: Bool
    
    func path(in rect: CGRect) -> Path {
        let modifiedAngle = Angle.degrees(0)
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.minY),
                    radius: rect.midY - 100,
                    startAngle: startAngle - modifiedAngle ,
                    endAngle: endAngle - modifiedAngle,
                    clockwise: clockWise)
        
        return path
    }

}
