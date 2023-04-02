//
//  DatePickerContentView.swift
//  ExampleCollection
//
//  Created by link on 30/03/2023.
//

import SwiftUI

struct DatePickerContentView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            DatePicker("Date picker", selection: $selectedDate, displayedComponents: .hourAndMinute)
            
            DatePicker(
                "Date", selection: $selectedDate, in: ...Date(), displayedComponents: [.date]
            )
            .onChange(of: selectedDate, perform: { date in
                print(date)
            })
            
            let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
            let endDate = Calendar.current.date(byAdding: .day, value: 7, to: Date())!
            let dateRange = startDate ... endDate
            
            DatePicker("Date picker", selection: $selectedDate, in: dateRange, displayedComponents: [.date])
            
            DatePicker("Date picker wheel", selection: $selectedDate)
                .datePickerStyle(.wheel)
            
            DatePicker("Date picker", selection: $selectedDate)
                .datePickerStyle(.compact)
                .accentColor(.red)
        }
    }
}

struct DatePickerContentView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerContentView()
    }
}
