//
//  AQDatePicker.swift
//  TestingGitLink
//
//  Created by Akash Yashavanthrao Shindhe on 27/01/21.
//

import SwiftUI

struct AQDatePicker: View {
    @State private var date = Date()
    var body: some View {
        Form {
            SectionView(title: "DatePicker", description: "A control for selecting an absolute date.",codeSample: ".pickerStyle(DefaultDatePickerStyle())") {
                DatePicker(
                        "Start Date",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                .datePickerStyle(DefaultDatePickerStyle())
                
            }
            Group {
                #if os(iOS)
                SectionView(title: "DatePicker", description: "A control for selecting an absolute date.",codeSample: ".pickerStyle(DefaultDatePickerStyle())") {
                    DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                    .datePickerStyle(WheelDatePickerStyle())

                }
                #endif
                #if os(OSX)
                SectionView(title: "DatePicker", description: "A control for selecting an absolute date.",codeSample: ".datePickerStyle(FieldDatePickerStyle())") {
                    DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                    .datePickerStyle(FieldDatePickerStyle())
                    
                }
                #endif
                SectionView(title: "DatePicker", description: "A control for selecting an absolute date.",codeSample: ".datePickerStyle(GraphicalDatePickerStyle())") {
                    DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    
                }
                #if os(OSX)
                SectionView(title: "DatePicker", description: "A control for selecting an absolute date.",codeSample: ".datePickerStyle(StepperFieldDatePickerStyle())") {
                    DatePicker(
                            "Start Date",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                    .datePickerStyle(StepperFieldDatePickerStyle())
                    
                }
                #endif
            }
        }
    }
}

struct AQDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        AQDatePicker()
    }
}
