//
//  Nutrition.swift
//  fitness companion WatchKit Extension
//
//  Created by Yan Xiaofeng on 4/25/22.
//

import UIKit
import WatchKit
import HealthKit
import SwiftUI

class Nutrition: WKInterfaceController {

//    @IBOutlet var progressGroup: WKInterfaceGroup!
//    @IBOutlet var picker: WKInterfacePicker!
//
//    override func awake(withContext context: Any?) {
//        super.awake(withContext: context)
//
//        var images: [UIImage]! = []
//        var pickerItems: [WKPickerItem]! = []
//        for i in 0...100 {
//            let name = "activity-\(i)"
//            images.append(UIImage(named: name)!)
//            let j = 5*i
//            let pickerItem = WKPickerItem()
//            pickerItem.title = "\(j)/500"
//            pickerItems.append(pickerItem)
//        }
//
//        let progressImages = UIImage.animatedImage(with: images, duration: 0.0)
//        progressGroup.setBackgroundImage(progressImages)
//        picker.setCoordinatedAnimations([progressGroup])
//        picker.setItems(pickerItems)
//    }
    
    @IBOutlet var ActivityRing: WKInterfaceActivityRing!
    @IBOutlet var clabel: WKInterfaceLabel!
    // @IBOutlet var fat: HKActivitySummary!
    
    override func awake(withContext context: Any?) {
        
        super.awake(withContext: context)
        
        print("hello")
        print(sharedObj.globalPicker)
        var its = [WKPickerItem]()
        let captions = ["①", "②", "③"]
        let titles = ["Apple", "Banana", "Rice (100g)"]
        
        for i in 0...2 {
            let item = WKPickerItem()
            item.title = titles[i]
            item.caption = captions[i]
            its.append(item)
        }
        
        let joule = HKUnit(from: "J")
        let min = HKUnit(from: "min")
        let val1 = HKQuantity(unit: joule, doubleValue: 72.0)
        let val2 = HKQuantity(unit: joule, doubleValue: 500.0)
        var val3 = HKQuantity(unit: min, doubleValue: 100.0)
        clabel.setText("147")
        if (sharedObj.globalPicker != nil) {
            if (sharedObj.globalPicker.isEqual(its[0])) {
                val3 = HKQuantity(unit: min, doubleValue: 105.0)
                clabel.setText("187")
            } else if (sharedObj.globalPicker.isEqual(its[1])) {
                val3 = HKQuantity(unit: min, doubleValue: 125.0)
                clabel.setText("242")
            } else if (sharedObj.globalPicker.isEqual(its[2])) {
                val3 = HKQuantity(unit: min, doubleValue: 155.0)
                clabel.setText("353")
            }
        }
        let val4 = HKQuantity(unit: min, doubleValue: 500.0)
        let val5 = HKQuantity(unit: min, doubleValue: 135.0)
        let val6 = HKQuantity(unit: min, doubleValue: 500.0)
        
        // let fat: HKActivitySummary!
        let fat = HKActivitySummary()
        fat.activeEnergyBurned = val1
        fat.activeEnergyBurnedGoal = val2
        fat.appleExerciseTime = val3
        fat.appleExerciseTimeGoal = val4
        fat.appleMoveTime = val5
        fat.appleMoveTimeGoal = val6
        
        ActivityRing.setActivitySummary(fat, animated: true)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        let joule = HKUnit(from: "J")
        let min = HKUnit(from: "min")
        let val1 = HKQuantity(unit: joule, doubleValue: 72.0)
        let val2 = HKQuantity(unit: joule, doubleValue: 500.0)
        var val3 = HKQuantity(unit: min, doubleValue: 100.0)
        clabel.setText("147")
        if (sharedObj.globalPicker != nil) {
            print("hello")
            print(sharedObj.globalPicker)
            if (sharedObj.globalPicker == "Apple") {
                val3 = HKQuantity(unit: min, doubleValue: 105.0)
                clabel.setText("187")
                print("equals!")
            } else if (sharedObj.globalPicker.isEqual("Banana")) {
                val3 = HKQuantity(unit: min, doubleValue: 125.0)
                clabel.setText("242")
                print("equals!")
            } else if (sharedObj.globalPicker.isEqual("Rice (100g)")) {
                val3 = HKQuantity(unit: min, doubleValue: 155.0)
                clabel.setText("353")
                print("equals!")
            }
        }
        let val4 = HKQuantity(unit: min, doubleValue: 500.0)
        let val5 = HKQuantity(unit: min, doubleValue: 135.0)
        let val6 = HKQuantity(unit: min, doubleValue: 500.0)
        
        // let fat: HKActivitySummary!
        let fat = HKActivitySummary()
        fat.activeEnergyBurned = val1
        fat.activeEnergyBurnedGoal = val2
        fat.appleExerciseTime = val3
        fat.appleExerciseTimeGoal = val4
        fat.appleMoveTime = val5
        fat.appleMoveTimeGoal = val6
        
        ActivityRing.setActivitySummary(fat, animated: true)
    }
}
