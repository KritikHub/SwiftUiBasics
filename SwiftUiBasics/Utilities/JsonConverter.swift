//
//  JsonConverter.swift
//  SwiftUiBasics
//
//  Created by Manish Patidar on 08/06/24.
//

import Foundation


protocol DataFactoryProtocol {
    func loadData<T: Decodable>(from path: FilePathEndpoints) -> T?
}

enum FilePathEndpoints: String {
    case songsList = "songsList"
}

struct NetworkDataFactory: DataFactoryProtocol {
    func loadData<T>(from path: FilePathEndpoints) -> T? where T : Decodable {
        //API Call
        return nil
    }
}


struct CoreDataFactory: DataFactoryProtocol {
    func loadData<T>(from path: FilePathEndpoints) -> T? where T : Decodable {
        //Fetch from Core Data
        return nil
    }
}

struct DataFactory: DataFactoryProtocol {
    
    func loadData<T: Decodable>(from path: FilePathEndpoints) -> T? {
        
        let path = Bundle.main.path(
            forResource: path.rawValue,
            ofType: "json"
        )!
        
        guard let data =  try? Data(contentsOf: URL(filePath: path)) else {
            return nil
        }
        
        do {
            let response = try JSONDecoder().decode(T.self, from: data)
            return response
        } catch let error {
            print("Error: ",error.localizedDescription)
            fatalError("Data Unavailable!")
        }
    }
}
