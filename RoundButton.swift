//
//  RoundButton.swift
//  Yummie
//
//  Created by Lily Jiang on 3/3/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: ( ()->() )?
    
    var body: some View {
        Button{
            didTap?()
        } label: {
            Text (title)
                .font(.customfont(.bold, fontSize: 30))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(13)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
