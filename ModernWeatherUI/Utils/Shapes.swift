//
//  Shapes.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 24/05/2025.
//

import SwiftUI

struct Arc: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    path.move(to: CGPoint(x: rect.minX - 1, y: rect.minY))
    path.addQuadCurve(to: CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
    path.addLine(to: CGPoint(x: rect.maxX + 1, y:rect.maxY + 1))
    path.addLine(to: CGPoint(x: rect.minX - 1, y: rect.maxY + 1))
    path.closeSubpath()
    return path
  }
}

struct CenterTrapezoidIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.42105*width, y: 0))
        path.addLine(to: CGPoint(x: 0.57895*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.77343*width, y: 0.48699*height), control1: CGPoint(x: 0.69925*width, y: 0), control2: CGPoint(x: 0.73497*width, y: 0.2414*height))
        path.addCurve(to: CGPoint(x: 0.98496*width, y: height), control1: CGPoint(x: 0.81325*width, y: 0.74125*height), control2: CGPoint(x: 0.85338*width, y: height))
        path.addLine(to: CGPoint(x: 0.01504*width, y: height))
        path.addCurve(to: CGPoint(x: 0.22657*width, y: 0.48699*height), control1: CGPoint(x: 0.14662*width, y: height), control2: CGPoint(x: 0.18675*width, y: 0.74125*height))
        path.addCurve(to: CGPoint(x: 0.42105*width, y: 0), control1: CGPoint(x: 0.26503*width, y: 0.2414*height), control2: CGPoint(x: 0.30075*width, y: 0))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42105*width, y: 0.0025*height))
        path.addLine(to: CGPoint(x: 0.57895*width, y: 0.0025*height))
        path.addCurve(to: CGPoint(x: 0.70616*width, y: 0.15301*height), control1: CGPoint(x: 0.63881*width, y: 0.0025*height), control2: CGPoint(x: 0.67755*width, y: 0.0625*height))
        path.addCurve(to: CGPoint(x: 0.76536*width, y: 0.44198*height), control1: CGPoint(x: 0.73124*width, y: 0.23236*height), control2: CGPoint(x: 0.74853*width, y: 0.33518*height))
        path.addLine(to: CGPoint(x: 0.77256*width, y: 0.48795*height))
        path.addCurve(to: CGPoint(x: 0.84408*width, y: 0.84048*height), control1: CGPoint(x: 0.79246*width, y: 0.61499*height), control2: CGPoint(x: 0.8125*width, y: 0.74365*height))
        path.addCurve(to: CGPoint(x: 0.95458*width, y: 0.9975*height), control1: CGPoint(x: 0.87058*width, y: 0.92175*height), control2: CGPoint(x: 0.9052*width, y: 0.98056*height))
        path.addLine(to: CGPoint(x: 0.04542*width, y: 0.9975*height))
        path.addCurve(to: CGPoint(x: 0.15592*width, y: 0.84048*height), control1: CGPoint(x: 0.09481*width, y: 0.98056*height), control2: CGPoint(x: 0.12942*width, y: 0.92175*height))
        path.addCurve(to: CGPoint(x: 0.21995*width, y: 0.5356*height), control1: CGPoint(x: 0.18355*width, y: 0.75575*height), control2: CGPoint(x: 0.20235*width, y: 0.64665*height))
        path.addLine(to: CGPoint(x: 0.22744*width, y: 0.48795*height))
        path.addCurve(to: CGPoint(x: 0.29384*width, y: 0.15301*height), control1: CGPoint(x: 0.24669*width, y: 0.36504*height), control2: CGPoint(x: 0.26518*width, y: 0.2437*height))
        path.addCurve(to: CGPoint(x: 0.42105*width, y: 0.0025*height), control1: CGPoint(x: 0.32245*width, y: 0.0625*height), control2: CGPoint(x: 0.36119*width, y: 0.0025*height))
        path.closeSubpath()
        return path
    }
}

struct CrossIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.2334*width, y: 0.50293*height))
        path.addCurve(to: CGPoint(x: 0.28063*width, y: 0.55016*height), control1: CGPoint(x: 0.2334*width, y: 0.52903*height), control2: CGPoint(x: 0.25453*width, y: 0.55016*height))
        path.addLine(to: CGPoint(x: 0.45308*width, y: 0.55016*height))
        path.addLine(to: CGPoint(x: 0.45308*width, y: 0.72261*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.76984*height), control1: CGPoint(x: 0.45308*width, y: 0.7484*height), control2: CGPoint(x: 0.4739*width, y: 0.76984*height))
        path.addCurve(to: CGPoint(x: 0.54723*width, y: 0.72261*height), control1: CGPoint(x: 0.5261*width, y: 0.76984*height), control2: CGPoint(x: 0.54723*width, y: 0.7484*height))
        path.addLine(to: CGPoint(x: 0.54723*width, y: 0.55016*height))
        path.addLine(to: CGPoint(x: 0.71968*width, y: 0.55016*height))
        path.addCurve(to: CGPoint(x: 0.7666*width, y: 0.50293*height), control1: CGPoint(x: 0.74547*width, y: 0.55016*height), control2: CGPoint(x: 0.7666*width, y: 0.52903*height))
        path.addCurve(to: CGPoint(x: 0.71968*width, y: 0.45601*height), control1: CGPoint(x: 0.7666*width, y: 0.47714*height), control2: CGPoint(x: 0.74547*width, y: 0.45601*height))
        path.addLine(to: CGPoint(x: 0.54723*width, y: 0.45601*height))
        path.addLine(to: CGPoint(x: 0.54723*width, y: 0.28356*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.23633*height), control1: CGPoint(x: 0.54723*width, y: 0.25777*height), control2: CGPoint(x: 0.5261*width, y: 0.23633*height))
        path.addCurve(to: CGPoint(x: 0.45308*width, y: 0.28356*height), control1: CGPoint(x: 0.4739*width, y: 0.23633*height), control2: CGPoint(x: 0.45308*width, y: 0.25777*height))
        path.addLine(to: CGPoint(x: 0.45308*width, y: 0.45601*height))
        path.addLine(to: CGPoint(x: 0.28063*width, y: 0.45601*height))
        path.addCurve(to: CGPoint(x: 0.2334*width, y: 0.50293*height), control1: CGPoint(x: 0.25453*width, y: 0.45601*height), control2: CGPoint(x: 0.2334*width, y: 0.47714*height))
        path.closeSubpath()
        return path
    }
}


struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.37965*height))
        path.addCurve(to: CGPoint(x: 0.03312*width, y: 0.02995*height), control1: CGPoint(x: 0, y: 0.18083*height), control2: CGPoint(x: 0, y: 0.08142*height))
        path.addCurve(to: CGPoint(x: 0.21492*width, y: 0.04559*height), control1: CGPoint(x: 0.06623*width, y: -0.02153*height), control2: CGPoint(x: 0.1158*width, y: 0.00085*height))
        path.addLine(to: CGPoint(x: 0.9003*width, y: 0.35499*height))
        path.addCurve(to: CGPoint(x: 0.98602*width, y: 0.42173*height), control1: CGPoint(x: 0.94813*width, y: 0.37658*height), control2: CGPoint(x: 0.97204*width, y: 0.38738*height))
        path.addCurve(to: CGPoint(x: width, y: 0.59997*height), control1: CGPoint(x: width, y: 0.45609*height), control2: CGPoint(x: width, y: 0.50405*height))
        path.addLine(to: CGPoint(x: width, y: 0.74857*height))
        path.addCurve(to: CGPoint(x: 0.98116*width, y: 0.96318*height), control1: CGPoint(x: width, y: 0.8671*height), control2: CGPoint(x: width, y: 0.92636*height))
        path.addCurve(to: CGPoint(x: 0.87135*width, y: height), control1: CGPoint(x: 0.96232*width, y: height), control2: CGPoint(x: 0.93199*width, y: height))
        path.addLine(to: CGPoint(x: 0.12865*width, y: height))
        path.addCurve(to: CGPoint(x: 0.01884*width, y: 0.96318*height), control1: CGPoint(x: 0.06801*width, y: height), control2: CGPoint(x: 0.03768*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.74857*height), control1: CGPoint(x: 0, y: 0.92636*height), control2: CGPoint(x: 0, y: 0.8671*height))
        path.addLine(to: CGPoint(x: 0, y: 0.37965*height))
        path.closeSubpath()
        return path
    }
}
