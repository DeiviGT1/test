//
//  Secrets.swift
//  test
//
//  Created by David González on 10/19/24.
//

import Foundation

struct Secrets {
    static let apiKey: String = {
        if let path = Bundle.main.path(forResource: "Secrets", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path),
           let key = dict["API_KEY"] as? String {
            return key
        } else {
            // Proveer un valor por defecto o manejar el error de otra forma
            return "Clave por defecto"
        }
    }()
}
