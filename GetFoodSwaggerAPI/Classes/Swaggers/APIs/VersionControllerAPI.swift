//
// VersionControllerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import PromiseKit


open class VersionControllerAPI {     /**
     Receives all versions for this API

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func versionControllerGetRoutes(completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        versionControllerGetRoutesWithRequestBuilder().execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }
    /**
     Receives all versions for this API

     - returns: Promise<Void>
     */
    open class func versionControllerGetRoutes() -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        versionControllerGetRoutes() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Receives all versions for this API
     - GET 

     - returns: RequestBuilder<Void> 
     */
    open class func versionControllerGetRoutesWithRequestBuilder() -> RequestBuilder<Void> {
        let path = ""
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

}
