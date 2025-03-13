//
//  CustomButton.swift
//  iOS-Study
//
//  Created by andev on 3/13/25.
//

import SwiftUI

struct CustomButton: View {
    let placeholder: String
    
    var body: some View {
        Button(action: {
            print("버튼이 눌러졌습니다!")
        }, label: {
            Text(placeholder)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
        })
    }
}


#Preview {
    CustomButton(placeholder: "버튼 이름이 바뀌었습니다!")
}
