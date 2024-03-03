//
//  NetworkManager.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 02/03/2024.
//

import Foundation

protocol NetworkService {
    func fetch<U: Endpoint, T: Decodable>(endpoint: U, expectedType: T.Type, completion: @escaping (Result<T, Error>) -> ())
}

final class NetworkManager: NetworkService {
    func fetch<U: Endpoint, T: Decodable>(endpoint: U, expectedType: T.Type, completion: @escaping (Result<T, Error>) -> ()) {
        var urlRequest = URLRequest(url: endpoint.requestURL)
        urlRequest.httpMethod = endpoint.method.uppercased()
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            
            guard let data else { return }
            do {
                let dataResponse = try JSONDecoder().decode(expectedType.self, from: data)
                completion(.success(dataResponse))
            } catch {
                print("decoding error")
                completion(.failure(error))
                return
            }
        }
        
        task.resume()
    }
}
