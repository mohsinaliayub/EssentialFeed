//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Mohsin Ali Ayub on 14.05.25.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
