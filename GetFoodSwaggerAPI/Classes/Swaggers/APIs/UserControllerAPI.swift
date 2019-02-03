//
// UserControllerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import PromiseKit


open class UserControllerAPI {     /**
     Authenticates a user
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userControllerAuthenticate(body: UserAuthenticationRequest? = nil, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userControllerAuthenticateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Authenticates a user
     - parameter body: (body)  (optional)
     - returns: Promise<User>
     */
    open class func userControllerAuthenticate( body: UserAuthenticationRequest? = nil) -> Promise<User> {
        let deferred = Promise<User>.pending()
        userControllerAuthenticate(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Authenticates a user
     - POST /v1/user/auth
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<User> 
     */
    open class func userControllerAuthenticateWithRequestBuilder(body: UserAuthenticationRequest? = nil) -> RequestBuilder<User> {
        let path = "/v1/user/auth"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Get current user

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userControllerCurrentUser(completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userControllerCurrentUserWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Get current user

     - returns: Promise<User>
     */
    open class func userControllerCurrentUser() -> Promise<User> {
        let deferred = Promise<User>.pending()
        userControllerCurrentUser() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Get current user
     - GET /v1/user
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<User> 
     */
    open class func userControllerCurrentUserWithRequestBuilder() -> RequestBuilder<User> {
        let path = "/v1/user"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Delete current user

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userControllerDelete(completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userControllerDeleteWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Delete current user

     - returns: Promise<User>
     */
    open class func userControllerDelete() -> Promise<User> {
        let deferred = Promise<User>.pending()
        userControllerDelete() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Delete current user
     - DELETE /v1/user
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<User> 
     */
    open class func userControllerDeleteWithRequestBuilder() -> RequestBuilder<User> {
        let path = "/v1/user"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Registers a new user
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userControllerRegister(body: UserCreateModel? = nil, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userControllerRegisterWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Registers a new user
     - parameter body: (body)  (optional)
     - returns: Promise<User>
     */
    open class func userControllerRegister( body: UserCreateModel? = nil) -> Promise<User> {
        let deferred = Promise<User>.pending()
        userControllerRegister(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Registers a new user
     - POST /v1/user
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<User> 
     */
    open class func userControllerRegisterWithRequestBuilder(body: UserCreateModel? = nil) -> RequestBuilder<User> {
        let path = "/v1/user"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Update current user
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userControllerUpdate(body: UserUpdateModel? = nil, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        userControllerUpdateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Update current user
     - parameter body: (body)  (optional)
     - returns: Promise<User>
     */
    open class func userControllerUpdate( body: UserUpdateModel? = nil) -> Promise<User> {
        let deferred = Promise<User>.pending()
        userControllerUpdate(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Update current user
     - PUT /v1/user
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<User> 
     */
    open class func userControllerUpdateWithRequestBuilder(body: UserUpdateModel? = nil) -> RequestBuilder<User> {
        let path = "/v1/user"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<User>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

}
