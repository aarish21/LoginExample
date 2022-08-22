//
//  GetData.swift
//  Swift Collection
//
//  Created by Aarish on 17/08/22.
//

import Foundation

class GetData {
    func getTopAnime(completionHandler: @escaping(_ result: [TopAnime]?) -> Void) {
          guard let url = URL(string: "https://api.jikan.moe/v4/top/anime") else {
              print("error")
              return
          }
          URLSession.shared.dataTask(with: url) { (data, _, error) in
              if let data = data {
                  if let decodedResponse = try? JSONDecoder().decode(TopData.self, from: data) {
                      completionHandler(decodedResponse.data)
                  }
                  return
              }
              print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
          }.resume()
      }
}
