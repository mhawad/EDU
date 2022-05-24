//
//  FooterView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI
import MessageUI

struct FooterView: View {
    
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    
    
    var body: some View {
        let numberString = "919-360-7075"
        
        VStack {
            HStack{
                //facebook
                Link(destination: (URL(string:"https://www.facebook.com/TeachersofTomorrowAltCert/") ?? URL(string: "https://www.facebook.com/")!) ,
                     label: {
                      Label(
                        title: { Text("")},
                        icon: { Image("fb")
                                .resizable()
                                .frame(width: 42, height: 42)
                        })
                })
                
                //twitter
                Link(destination: (URL(string:"https://twitter.com/_TrinityAcademy?lang=en") ?? URL(string: "https://www.twitter.com/")!) ,
                     label: {
                      Label(
                        title: { Text("")},
                        icon: {  Image("twitter")
                                .resizable()
                                .frame(width: 35, height: 35)
                        })
                })
                
                
                //youtube
                Link(destination: (URL(string:"https://www.youtube.com/watch?v=MlNNGeusB7M") ?? URL(string: "https://www.youtube.com/")!) ,
                     label: {
                      Label(
                        title: { Text("")},
                        icon: { Image("YouTube")
                                .resizable()
                                .frame(width: 80, height: 35)
                        })
                })
                
                //instagram
                Link(destination: (URL(string:"https://www.instagram.com/thales.academy/") ?? URL(string: "https://www.instagram.com/")!) ,
                     label: {
                      Label(
                        title: { Text("")},
                        icon: { Image("inst")
                                .resizable()
                                .frame(width: 35, height: 35)
                        })
                })
                
                
    
            }
            .padding(.top)
            
            Text("1120 Buck Jones Road")
            
            Text("Raleigh, NC 27606")
                .font(.caption)
            
            HStack {
                Link("Get Directions", destination: URL(string: "https://www.google.com/maps/dir/Rolesville,+NC+27571/35.7692583,-78.7421796/@35.8354502,-78.737675,11z/data=!3m1!4b1!4m8!4m7!1m5!1m1!1s0x89ac4e3354328f81:0x5e91b662f97ccc7f!2m2!1d-78.4553013!2d35.9189174!1m0?hl=en-US")!)
                    .padding(.all, 7)
                Image(systemName: "location.fill")
            }
            
            
            Button (action: {
                let telephone = "tel://"
                let formattedString = telephone + numberString
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
            }) {
                Text(numberString)
            }
            
            
//            Text("Phone: (919) 264-1340")
//                .font(.caption)
            
            
//            
//            Button(action: {
//                      self.isShowingMailView.toggle()
//                  }) {
//                      Text("Tap Me")
//                  }
//                  .disabled(!MFMailComposeViewController.canSendMail())
//                  .sheet(isPresented: $isShowingMailView) {
//                      MailView(result: self.$result)
//                  }
            VStack {
                       if MFMailComposeViewController.canSendMail() {
                           Button("Show mail view") {
                               self.isShowingMailView.toggle()
                           }
                       }
//                else {
//                           Text("Can't send emails from this device")
//                       }
                       if result != nil {
                           Text("Result: \(String(describing: result))")
                               .lineLimit(nil)
                       }
                   }
                   .sheet(isPresented: $isShowingMailView) {
                       MailView(isShowing: self.$isShowingMailView, result: self.$result)
                   }
            
            
            
            
            Text("info@theacademy.org")
                .font(.caption)
                .padding(.bottom)
        }
        
        .frame(maxWidth: .infinity, maxHeight: 250)
        .background(Color("Yellow"))
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
