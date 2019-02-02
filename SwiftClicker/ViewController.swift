//
//  ViewController.swift
//  SwiftClicker
//
//  Created by JiaChen(: on 13/3/18.
//  Copyright © 2018 JiaChen(:. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counterInt = 0
    
    func yeoControl(){
        switch counterInt {
        case 0:
            yeoQuote.text = "Hello"
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect1.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select1.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select1.JPG"), for: .highlighted)
            
            
        case 1..<10:
            yeoQuote.text = "Do no harm to yourself, do no harm to others, do no harm to the school"
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect1.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select1.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select1.JPG"), for: .highlighted)
            
            
        case 10..<30:
            yeoQuote.text = "One day I should really confiscate your phone, keep taking photos of me..."
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect2.jpg"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select2.jpg"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select2.jpg"), for: .highlighted)

        case 30..<100:
            yeoQuote.text = "Delete all the photos of me..."
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect3.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select3 copy.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select3 copy.JPG"), for: .highlighted)
        case 100..<500:
            yeoQuote.text = "You are so dead..."
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect4.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select4.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select4.JPG"), for: .highlighted)
        default:
            yeoQuote.text = "You must think about what you want to be in life..."
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect5.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select5.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select5.JPG"), for: .highlighted)
        }
    }

    @IBAction func counterAdd(_ sender: Any) {
        switch UserDefaults.standard.integer(forKey: "Intensity")/10 {
        case 0:
            counterInt += 1
            countNumber.text = String(counterInt)
            yeoControl()
        case 1:
            counterInt += 2
            countNumber.text = String(counterInt)
            yeoControl()
        case 2:
            counterInt += 4
            countNumber.text = String(counterInt)
            yeoControl()
            
        case 3:
            counterInt += 8
            countNumber.text = String(counterInt)
            yeoControl()
        case 4:
            counterInt += 16
            countNumber.text = String(counterInt)
            yeoControl()
        case 5:
            counterInt += 32
            countNumber.text = String(counterInt)
            yeoControl()
        case 4:
            counterInt += 64
            countNumber.text = String(counterInt)
            yeoControl()
        case 4:
            counterInt += 128
            countNumber.text = String(counterInt)
            yeoControl()
        case 5:
            counterInt += 256
            countNumber.text = String(counterInt)
            yeoControl()
        case 6:
            counterInt += 512
            countNumber.text = String(counterInt)
            yeoControl()
        case 7:
            counterInt += 1024
            countNumber.text = String(counterInt)
            yeoControl()
        case 8:
            counterInt += 2048
            countNumber.text = String(counterInt)
            yeoControl()
        case 9:
            counterInt += 4096
            countNumber.text = String(counterInt)
            yeoControl()
        case 10:
            counterInt += 8192
            countNumber.text = String(counterInt)
            yeoControl()
        default:
            yeoQuote.text = "You must think about what you want to be in life..."
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "unselect5.JPG"), for: .normal)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select5.JPG"), for: .selected)
            yeoJpeg.setBackgroundImage(#imageLiteral(resourceName: "select5.JPG"), for: .highlighted)
        }
        
    }
    @IBOutlet var countNumber: UILabel!
    @IBOutlet weak var yeoQuote: UILabel!
    @IBOutlet weak var yeoJpeg: UIButton!
    @IBAction func ResetBtn(_ sender: Any) {
        counterInt = 0
        countNumber.text = String(counterInt)
        yeoControl()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        yeoControl()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

