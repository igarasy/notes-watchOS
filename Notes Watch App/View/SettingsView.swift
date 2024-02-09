//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Lucas on 08/02/24.
//

import SwiftUI

struct SettingsView: View {
    // property
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
   
    
    // MARK: - FUNCTION
    
    func update() {
        lineCount = Int(value)
    }
    
    init () {
        update()
    }
    
    // body
 
    var body: some View {
        VStack(spacing: 8){
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            // SLIDER
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
                .foregroundStyle(.accent)
        } //: VStack
    }
}

#Preview {
    SettingsView()
}
