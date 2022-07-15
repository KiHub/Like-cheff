//
//  Networkservice.swift
//  Like cheff
//
//  Created by  Mr.Ki on 15.07.2022.
//

import Foundation

enum NetworkError: Error {
    case badRequest
    case decodingError
}

class NetworkService {
    
    func get <T: Decodable>(url: URL, parse: (Data) -> T?) async throws -> T {
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        if (response as? HTTPURLResponse)?.statusCode != 200 {
            throw NetworkError.badRequest
        }
        guard let result = parse(data) else {
            throw NetworkError.decodingError
        }
        return result
        
    }
    
}
