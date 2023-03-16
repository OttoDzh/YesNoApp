//
//  NetWorkiManager.swift
//  YesNo
//
//  Created by Otto Dzhandzhuliya on 04.03.2023.
//

import Foundation

class NetWorkManager {

    static let params = "?force=<answer>"
  
    static func getData(params: String, comepletion: @escaping(_ yesno: YesNo) -> Void ) {
        let yesUrl = "https://yesno.wtf/api\(params)"
        guard let urlString = URL(string: yesUrl) else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: urlString) { data, _ , error in
            guard  let data = data else {
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            do {
                let yesNo = try JSONDecoder().decode(YesNo.self, from: data)
                comepletion(yesNo)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }  
}



