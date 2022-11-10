//
//  BadgeBackground.swift
//  DrawingShapesAndPaths
//
//  Created by Rehnuma Reza on 11/10/22.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometryReader in
            /* GeometryReader: so that shape takes the size of
             its entire containing view */
            Path { path in
                var width: CGFloat = min(geometryReader.size.width, geometryReader.size.height)
                var height = width
                
                /* NOTE:- shift the shape to the center using xScale and xOffset */
                
                /* xScale = how much width I want the shape to take in the
                 screen */
                let xScale: CGFloat = 0.832
                var xOffSet: CGFloat = width * (1 - 0.832) / 2.0
                
                width *= xScale
                
                /* move(to:) => moves the line of the shape within the bounds
                 of the shape, e.g. if we specify width and height with 300.0, then
                 the shape will be drawn within this 300 X 300 bound */
                path.move(to: CGPoint(x: width * 0.95 + xOffSet,
                                      y: height * (0.20 + HexagoneParameters.adjustment)))
                
                HexagoneParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(x: width * segment.line.x + xOffSet,
                                             y: height * segment.line.y))
                    
                    path.addQuadCurve(to: CGPoint(x: width * segment.curve.x + xOffSet,
                                                  y: height * segment.curve.y),
                                      control: CGPoint(x: width * segment.control.x + xOffSet,
                                                       y: height * segment.control.y))
                    
                }
                
                print("\(width), \(height)")
            }.foregroundColor(.black)
            
        }
        
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
