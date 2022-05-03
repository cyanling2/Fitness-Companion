//
//  Picker.swift
//  fitness companion WatchKit Extension
//
//  Created by Yan Xiaofeng on 4/25/22.
//

import UIKit
import WatchKit

class Drink: WKInterfaceController {
    
    @IBOutlet var Picker: WKInterfacePicker!
    
    lazy var itemArray: [WKPickerItem] = {
        var its = [WKPickerItem]()
        let captions = ["①", "②", "③", "④", "⑤"]
        let titles = ["Gr Tst V Oat", "Vt Carml Macch", "Mountain Dew", "Coke", "banana smoothie"]
        
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

