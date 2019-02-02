//
//  DeveloperViewController.swift
//  SwiftClicker
//
//  Created by JiaChen(: on 13/3/18.
//  Copyright © 2018 JiaChen(:. All rights reserved.
//

import UIKit

class DeveloperViewController: UIViewController {

    
    @IBOutlet weak var timerSwitch: UISwitch!
    @IBAction func resetButton(_ sender: Any) {
            intesityStepperOUt.isEnabled = false
            intesityStepperOUt.value = 0
            intensityNum.text = String(Int(intesityStepperOUt.value))
            UserDefaults.standard.set(false, forKey: "hackSwitch")
        
    }
    @IBOutlet weak var hackSwitchOut: UISwitch!
    @IBOutlet weak var intensityNum: UILabel!
    @IBAction func hackSwitch(_ sender: Any) {
        if (sender as AnyObject).isOn == true {
            intesityStepperOUt.isEnabled = true
            intesityStepperOUt.value = 0
            intensityNum.text = String(Int(intesityStepperOUt.value))
            UserDefaults.standard.set(true, forKey: "hackSwitch")
        }
        else {
            intesityStepperOUt.isEnabled = false
            intesityStepperOUt.value = 0
            intensityNum.text = String(Int(intesityStepperOUt.value))
            UserDefaults.standard.set(false, forKey: "hackSwitch")
        }
    }
    @IBOutlet weak var intesityStepperOUt: UIStepper!
    @IBAction func intensityStepper(_ sender: Any) {
        intensityNum.text = String(Int(intesityStepperOUt.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        timerSwitch.isOn = false
        
        if (UserDefaults.standard.bool(forKey: "hackSwitch") == true) {
            hackSwitchOut.isOn = true
            intesityStepperOUt.isEnabled = true
            intesityStepperOUt.value = Double(UserDefaults.standard.integer(forKey: "Intensity"))
            intensityNum.text = String(Int(intesityStepperOUt.value))
        }
        else {
            hackSwitchOut.isOn = false
            intesityStepperOUt.isEnabled = false
            intesityStepperOUt.value = 0
            intensityNum.text = String(Int(intesityStepperOUt.value))
        }
        intesityStepperOUt.autorepeat = true
        intesityStepperOUt.maximumValue = 100
        intesityStepperOUt.minimumValue = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        intesityStepperOUt.isEnabled = false
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(Int(intesityStepperOUt.value), forKey: "Intensity")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
