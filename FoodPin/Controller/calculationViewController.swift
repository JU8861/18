//
//  calculationViewController.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2021/1/7.
//  Copyright © 2021 NDHU_CSIE. All rights reserved.
//

import UIKit

enum OperationType{
    case add
    case subtract
    case multiply
    case divide
    case none
}

class calculationViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performingMath = false
    var opertion:OperationType = .none
    
    func makeOKNumberString(from number:Double){
        if floor(number) == number{
            label.text = "\(Double(number))"
        }else{
            label.text = "\(number)"
        }
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBAction func numbers(_ sender: UIButton){
        let inputNumber = sender.tag-1
        if label.text != nil{
            if label.text == "0"{
                label.text = "\(inputNumber)"
            }else{
                label.text = label.text! + "\(inputNumber)"
            }
        }
        numberOnScreen = (label.text! as NSString).doubleValue
        
    }
    @IBAction func clear (_ sender: UIButton) {
        label.text = "0"
        label2.text = ""
        numberOnScreen = 0
        previousNumber = 0
        performingMath = false
        opertion = .none
    }
    @IBAction func add(_ sender: UIButton){
        label.text = ""
        label2.text = "+"
        opertion = .add
        performingMath = true
        previousNumber = numberOnScreen
    }
    @IBAction func subtract(_ sender: UIButton){
        label.text = ""
        label2.text = "-"
        opertion = .subtract
        performingMath = true
        previousNumber = numberOnScreen
    }
    @IBAction func multiply(_ sender: UIButton){
        label.text = ""
        label2.text = "*"
        opertion = .multiply
        performingMath = true
        previousNumber = numberOnScreen
    }
    @IBAction func divide(_ sender: UIButton){
        label.text = ""
        label2.text = "/"
        opertion = .divide
        performingMath = true
        previousNumber = numberOnScreen
    }
    @IBAction func giveMeAnswer(_ sender: UIButton){
        if performingMath == true{
            switch opertion{
                case .add:
                    label.text = "\(previousNumber + numberOnScreen)"
                    //makeOKNumberString(from: numberOnScreen)
                case .subtract:
                    label.text = "\(previousNumber - numberOnScreen)"
                    //label.text = "87777"
                    //makeOKNumberString(from: numberOnScreen)
                case .multiply:
                    label.text = "\(previousNumber * numberOnScreen)"
                    //makeOKNumberString(from: numberOnScreen)
                case .divide:
                    label.text = "\(previousNumber / numberOnScreen)"
                    //makeOKNumberString(from: numberOnScreen)
                case .none:
                    label.text = "0"
            }
            performingMath = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
