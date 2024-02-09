//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Lucas on 08/02/24.
//

//
//  DetailedView.swift
//  Notes Watch App
//
//  Created by Lucas on 06/02/24.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTY

    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            Image(systemName: "gear")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            
            Text("Lucas igarashi")
                .foregroundStyle(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct CreditsView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    
    static var previews: some View {
        CreditsView()
    }
}
