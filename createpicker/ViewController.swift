//
//  ViewController.swift
//  createpicker
//
//  Created by apple on 8/16/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var  picker:UIPickerView!

    @IBOutlet weak var lbl: UILabel!
    var data1 = ["karthiga","1","#"]
    var data2 = ["papa","2","$"]
    var data3 = ["sai","3","%"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
    }


}
extension ViewController: UIPickerViewDataSource{
    

func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 3
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    if( component == 0){
        return data1.count
    }else if (component == 1){
        return data2.count
    }else{
        return data3.count
    }
}
}
extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if( component == 0){
            return data1[row]
        }else if (component == 1){
            return data2[row]
        }else{
            return data3[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let text = data1[pickerView.selectedRow(inComponent: 0)]
        let text1 = data2[pickerView.selectedRow(inComponent: 1)]
        let text2 = data3[pickerView.selectedRow(inComponent: 2)]
        lbl.text = "\(text)\(text1)\(text2)"
    }
    
}
