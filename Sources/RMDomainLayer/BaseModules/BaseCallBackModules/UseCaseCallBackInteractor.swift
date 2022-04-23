//
//  UseCaseCallBackInteractor.swift
//  RMDomainLayer
//
//  Created by Erkut Bas on 23.05.2022.
//


import Foundation
import RMNetworkEntityLayer

public protocol UseCaseCallBackInterface {
    
    associatedtype Response
    
    var onSuccessCompletion: ((Response) -> Void)? { get }
    
    func onSuccess(response: Response)
    func onError(error: ErrorResponse)
    
    func onSuccess(completion: @escaping (Response) -> Void)
    func onError(completion: @escaping (ErrorResponse) -> Void)
    func commonResult(completion: @escaping (Result<Response, ErrorResponse>) -> Void)
    
}
