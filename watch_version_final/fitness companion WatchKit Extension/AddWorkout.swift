//
//  Picker.swift
//  fitness companion WatchKit Extension
//
//  Created by Yan Xiaofeng on 4/25/22.
//

import UIKit
import WatchKit

class AddWorkout: WKInterfaceController {
    
    @IBOutlet var Picker: WKInterfacePicker!
    
    lazy var itemArray: [WKPickerItem] = {
        var its = [WKPickerItem]()
        let captions = ["①", "②", "③", "④", "⑤"]
        let titles = ["Bench Press (5000 lb)", "Dumbell Flyer (1000 lb)", "Squat (1000 lb)", "Weightlifting (2000 lb)", "Running"]
        
        for i in 0...4 {
            let item = WKPickerItem()
            item.title = titles[i]
            item.caption = captions[i]
            its.append(item)
        }
        return its
    }()
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        Picker.setItems(itemArray)
        
        Picker.focus()
    }
    
    @IBAction func listPickerSelect(_ value: Int) {
        print(itemArray[value].title!)
    }

    
    override func pickerDidFocus(_ picker: WKInterfacePicker) {
        if picker == Picker {
            print("ListPicker Did Focus")
        }
    }

    override func pickerDidResignFocus(_ picker: WKInterfacePicker) {
        if picker == Picker {
            print("ListPicker Did Resign Focus")
        }
    }
    
    override func pickerDidSettle(_ picker: WKInterfacePicker) {
        if picker == Picker {
            print("ListPicker Did Settle")
        }
    }

}

