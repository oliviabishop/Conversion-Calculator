//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Olivia Bishop on 4/12/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
   
    @IBOutlet var outputDisplay: UITextField!
    
    
    @IBOutlet var inputDisplay: UITextField!
    
    
    
    
    
    let ConverterArray = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                          Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                          Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                          Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
    
    
   
    
    
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       outputDisplay.text = ConverterArray[0].outputUnit
       inputDisplay.text = ConverterArray[0].inputUnit
        
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        }
    
    
    
   
    @IBAction func ConverterButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil , preferredStyle: UIAlertControllerStyle.actionSheet)
        
        
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.ConverterArray[0].outputUnit
            self.inputDisplay.text = self.ConverterArray[0].inputUnit
            
            
        } ))
        
        
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.ConverterArray[1].outputUnit
            self.inputDisplay.text = self.ConverterArray[1].inputUnit
            
            
        } ))
        
        
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.ConverterArray[2].outputUnit
            self.inputDisplay.text = self.ConverterArray[2].inputUnit
            
            
        } ))
        
        
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.ConverterArray[3].outputUnit
            self.inputDisplay.text = self.ConverterArray[3].inputUnit
            
            
        } ))
        
        self.present(alert, animated: true, completion: nil)
        
        
        
        
        
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
