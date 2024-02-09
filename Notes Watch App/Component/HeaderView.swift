//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Lucas on 08/02/24.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    
    var title: String = ""
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title3)
                    .foregroundStyle(.accent)
            }
            
            
            // SEPARATOR
            

            HStack{
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundStyle(.accent)
        } //: VSTACK
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credits")
            HeaderView( )
        }
    }
}
