//
//  NewShape.swift
//  DrawingShapesAndPaths
//
//  Created by Rehnuma Reza on 11/14/22.
//

import SwiftUI

struct NewShape: View {
    let startColor = Color(red: 233.0/255,
                           green: 78.0/255,
                           blue: 80.0/255)
    let endColor = Color(red: 233.0/255,
                         green: 200.0/255,
                         blue: 250.0/255)
    
    let startColorForMountain = Color(red: 255.0/255,
                                      green: 255.0/255,
                                      blue: 255.0/255)
    let midColorForMountain = Color(red: 211.0/255,
                                    green: 211.0/255,
                                    blue: 211.0/255)
    let endColorForMountain = Color(red: 100.0/255,
                                    green: 100.0/255,
                                    blue: 100.0/255)
    var body: some View {
        ZStack {
            Arch(startAngle: Angle.degrees(0),
                 endAngle: Angle.degrees(1),
                 clockWise: true)
            .fill(LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                                 startPoint: UnitPoint(x: 0.5, y: 0),
                                 endPoint: UnitPoint(x: 0.5, y: 1)).opacity(0.8))
            
            .frame(width: 400, height: 300)
            
            
            // Mountain
            Triangle()
                .fill(LinearGradient(gradient: Gradient(colors: [startColorForMountain,
                                                                 midColorForMountain,
                                                                 endColorForMountain]),
                                     startPoint: UnitPoint(x: 0.5, y: 0),
                                     endPoint: UnitPoint(x: 0.5, y: 0.8)))
                .frame(width: 300,height: 300)
            
            
            
            
        }
        
        
    }
    
    
    
}

struct NewShape_Previews: PreviewProvider {
    static var previews: some View {
        NewShape()
    }
}
