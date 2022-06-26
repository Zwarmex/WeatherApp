//
//  ChangeTimeOfDayView.swift
//  Weather
//
//  Created by Julien Pollart on 25/06/2022.
//

import SwiftUI

struct ChangeTimeOfDayView: View {
    
    @Binding var isNight: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            
            Button {
                isNight = true
                presentationMode.wrappedValue.dismiss()
            } label: {
                ButtonLabel(title: "Make Night",
                            textColor: .white,
                            backgroundColor: .black,
                            imageName: "moon.stars.fill")
            }
            .padding(.bottom, 30)
            
            Button {
                isNight = false
                presentationMode.wrappedValue.dismiss()
            } label: {
                ButtonLabel(title: "Make Day",
                            textColor: .white,
                            backgroundColor: .blue,
                            imageName: "cloud.sun.fill")
            }
            
        }
    }
}

struct ChangeTimeOfDayView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeTimeOfDayView(isNight: .constant(false))
    }
}
