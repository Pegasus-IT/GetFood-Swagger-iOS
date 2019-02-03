//
// FamilyControllerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import PromiseKit


open class FamilyControllerAPI {     /**
     Create family
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func familyControllerCreate(body: FamilyCreateUpdate? = nil, completion: @escaping ((_ data: Family?,_ error: Error?) -> Void)) {
        familyControllerCreateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Create family
     - parameter body: (body)  (optional)
     - returns: Promise<Family>
     */
    open class func familyControllerCreate( body: FamilyCreateUpdate? = nil) -> Promise<Family> {
        let deferred = Promise<Family>.pending()
        familyControllerCreate(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Create family
     - POST /v1/family
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Family> 
     */
    open class func familyControllerCreateWithRequestBuilder(body: FamilyCreateUpdate? = nil) -> RequestBuilder<Family> {
        let path = "/v1/family"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Family>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Receives active family

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func familyControllerGetActiveFamily(completion: @escaping ((_ data: Family?,_ error: Error?) -> Void)) {
        familyControllerGetActiveFamilyWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Receives active family

     - returns: Promise<Family>
     */
    open class func familyControllerGetActiveFamily() -> Promise<Family> {
        let deferred = Promise<Family>.pending()
        familyControllerGetActiveFamily() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Receives active family
     - GET /v1/family
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<Family> 
     */
    open class func familyControllerGetActiveFamilyWithRequestBuilder() -> RequestBuilder<Family> {
        let path = "/v1/family"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Family>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Join family
     - parameter familyId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func familyControllerJoinFamily(familyId: String, completion: @escaping ((_ data: Family?,_ error: Error?) -> Void)) {
        familyControllerJoinFamilyWithRequestBuilder(familyId: familyId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Join family
     - parameter familyId: (path)  
     - returns: Promise<Family>
     */
    open class func familyControllerJoinFamily( familyId: String) -> Promise<Family> {
        let deferred = Promise<Family>.pending()
        familyControllerJoinFamily(familyId: familyId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Join family
     - POST /v1/family/{familyId}/join
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter familyId: (path)  

     - returns: RequestBuilder<Family> 
     */
    open class func familyControllerJoinFamilyWithRequestBuilder(familyId: String) -> RequestBuilder<Family> {
        var path = "/v1/family/{familyId}/join"
        let familyIdPreEscape = "\(familyId)"
        let familyIdPostEscape = familyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{familyId}", with: familyIdPostEscape, options: .literal, range: nil)
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Family>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Leaves active family

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func familyControllerLeaveActiveFamily(completion: @escaping ((_ data: Family?,_ error: Error?) -> Void)) {
        familyControllerLeaveActiveFamilyWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Leaves active family

     - returns: Promise<Family>
     */
    open class func familyControllerLeaveActiveFamily() -> Promise<Family> {
        let deferred = Promise<Family>.pending()
        familyControllerLeaveActiveFamily() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Leaves active family
     - DELETE /v1/family
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<Family> 
     */
    open class func familyControllerLeaveActiveFamilyWithRequestBuilder() -> RequestBuilder<Family> {
        let path = "/v1/family"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Family>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Update active family
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func familyControllerUpdate(body: FamilyCreateUpdate? = nil, completion: @escaping ((_ data: Family?,_ error: Error?) -> Void)) {
        familyControllerUpdateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Update active family
     - parameter body: (body)  (optional)
     - returns: Promise<Family>
     */
    open class func familyControllerUpdate( body: FamilyCreateUpdate? = nil) -> Promise<Family> {
        let deferred = Promise<Family>.pending()
        familyControllerUpdate(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Update active family
     - PUT /v1/family
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Family> 
     */
    open class func familyControllerUpdateWithRequestBuilder(body: FamilyCreateUpdate? = nil) -> RequestBuilder<Family> {
        let path = "/v1/family"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Family>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

}