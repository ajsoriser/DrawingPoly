//
//  SecondViewController.swift
//  DrawingPoly
//
//  Created by Aaron James on 1/7/18.
//  Copyright © 2018 Aaron James. All rights reserved.
//

import UIKit

protocol Polygon {
    var name: String { get }
    var sides: Int { get }
    func perimiter(S1: Float, S2: Float) -> Float
    func area(S1: Float, S2: Float) -> Float
}

class Draw: Polygon{
    var name: String = ""
    
    var sides: Int = 0
    
    func perimiter(S1: Float, S2: Float) -> Float {
        var Perim: Float
        if (self.sides > 3){
            Perim = (S1 * 2) + (S2 * 2)
        }
        else{
            let S3 = sqrt(Float((S1*S1) + (S2 * S2)))
            Perim = S3 + S2 + S1
        }
        return Perim
    }
    
    func area(S1: Float, S2: Float) -> Float {
        var Area: Float
        if (self.sides > 3){
            Area = S1 * S2
        }
        else{
            Area = 0.5 * (S1 * S2)
        }
        return Area
    }
    
    
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DrawShapes(_ sender: Any) {
        //Get Small Triangle
    var ST = Draw()
        print(ST.name = "Small Triangle, sides 3, 4, 5")
        print(ST.sides = 3)
        print(ST.perimiter(S1: 3, S2: 4))
        print(ST.area(S1: 3, S2: 4))
        
    var SS = Draw()
        print(SS.name = "Small Square, sides 15, 15")
        print(SS.sides = 4)
        print(SS.perimiter(S1: 15, S2: 15))
        print(SS.area(S1: 15, S2: 15))
    var SR = Draw()
        print(SR.name = "Small Rectangle, sides 20, 13")
        print(SR.sides = 4)
        print(SR.perimiter(S1: 20, S2: 13))
        print(SR.area(S1: 20, S2: 13))
    var LT = Draw()
        print(LT.name = "Large Triangle, sides 6, 8, 10")
        print(LT.sides = 3)
        print(LT.perimiter(S1: 6, S2: 8))
        print(LT.area(S1: 6, S2: 8))
    var LS = Draw()
        print(LS.name = "Large Square, sides 25, 25")
        print(LS.sides = 4)
        print(LS.perimiter(S1: 25, S2: 25))
        print(LS.area(S1: 25, S2: 25))
    var LR = Draw()
        print(LR.name = "Large Rectamgle, sides 17, 50")
        print(LR.sides = 3)
        print(LR.perimiter(S1: 17, S2: 50))
        print(LR.area(S1: 17, S2: 50))
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
