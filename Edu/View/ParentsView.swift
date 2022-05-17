//
//  ParentsView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI



class CalendarLoader {
    
    let url = URL(string: "https://picsum.photos/200")!
    
    func downloadCalendar(completionHandler: @escaping (_ image: UIImage?, _ error: Error?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard
                let data = data,
                let image = UIImage(data: data),
                let response = response as? HTTPURLResponse,
                response.statusCode >= 200 && response.statusCode < 300 else {
                completionHandler(nil, error)
                print("nah")
                return
            }
            completionHandler(image, nil)
            print("yay")
        }
        .resume()
    }
}




class CalendarViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    let loader = CalendarLoader()
    
    func fetchImage() {
        loader.downloadCalendar { [weak self] image, error in
            DispatchQueue.main.async {
                self?.image = image
            }
        }
    }
    
    
}




struct ParentsView: View {
    @StateObject var vm = CalendarViewModel()
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        
//        NavigationView {
//            List(networkManager.posts){ post in
//                NavigationLink(destination: DetailView(url: post.url)) {
//                    HStack {
//                        Text(String(post.points))
//                        Text(post.title)
//                    }
//
//                }
//               // .navigationBarTitle("H4XOR News")
//            }
        
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
            }
        }
            .onAppear {
                vm.fetchImage()
              // self.networkManager.fetchData()
            }
        }
        
    }
    


    struct ParentsView_Previews: PreviewProvider {
        static var previews: some View {
            ParentsView()
        }
    }

