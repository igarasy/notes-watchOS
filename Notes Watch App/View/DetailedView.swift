//
//  DetailedView.swift
//  Notes Watch App
//
//  Created by Lucas on 06/02/24.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTY
    
    let note: Note
    let count: Int
    let index: Int
    
    
    // MARK: - BODY
    
    var body: some View{
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3) {
            
            // HEADER
            HStack{
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundStyle(.accent)
            
            // CONTENT
            
            Spacer()
            
            ScrollView(.vertical){
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center)  {
               Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
            } //: HStack
            .foregroundStyle(.secondary)
            
        }//: VSTACK
        .padding(3)
    }
}


struct DetailView_Previews: PreviewProvider{
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    
    static var previews: some View{
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
