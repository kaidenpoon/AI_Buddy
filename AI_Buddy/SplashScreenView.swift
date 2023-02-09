//
//  SplashScreenView.swift
//  WiseBot
//
//  Created by baobeiAi on 1/30/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            // load main screen after isActive set to true
            Home()
        }else{
            ZStack{
                LinearGradient(colors: [.black, .black], startPoint: .zero, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center){
                    Spacer()
                    Image("luanchScreen")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width/1.1, height: UIScreen.main.bounds.width/1.1)
                    Spacer()
                    Group {
                        Text("Copyright")
                            .font(.body)
                        
                        Text("© 2021 baobeiai Inc.")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)

                }
                .padding()
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.5)){
                        self.size = 1.1
                        self.opacity = 1.0
                    }
                }
                .background(.white)

            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
