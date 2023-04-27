//
//  CurveAppBar.swift
//  SmartLook
//
//  Created by Livia Lima on 25/04/23.
//

import SwiftUI

struct CurveAppBar: View {
    func path() -> Path {
        let rect: CGRect = UIScreen.main.bounds
        let width = rect.width
        let height = rect.height
        
        return Path { path in
            //Top left
            path.move(to: CGPoint(x: 0, y: 0))
            //Left vertical bound
            path.addLine(to: CGPoint(x: 0, y: height * 0.2))
            //Curve
            path.addCurve(to: CGPoint(x: width, y: height * 0.2), control1: CGPoint(x: height * 0.2, y: height * 0.3), control2: CGPoint(x: height * 0.3, y: height * 0.1))
            //Right vertical bound
            path.addLine(to: CGPoint(x: width, y: 0))
            
        }
    }
    var body: some View {
        ZStack{
            path().fill(Color("AppBarColor"))
        }
        
    }
}

struct CurveAppBar_Previews: PreviewProvider {
    static var previews: some View {
        CurveAppBar()
    }
}
