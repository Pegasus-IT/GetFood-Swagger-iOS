//
// ListControllerAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import PromiseKit


open class ListControllerAPI {     /**
     Create a new list
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerCreate(body: ListCreateUpdate? = nil, completion: @escaping ((_ data: ListModel?,_ error: Error?) -> Void)) {
        listControllerCreateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Create a new list
     - parameter body: (body)  (optional)
     - returns: Promise<ListModel>
     */
    open class func listControllerCreate( body: ListCreateUpdate? = nil) -> Promise<ListModel> {
        let deferred = Promise<ListModel>.pending()
        listControllerCreate(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Create a new list
     - POST /v1/list
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ListModel> 
     */
    open class func listControllerCreateWithRequestBuilder(body: ListCreateUpdate? = nil) -> RequestBuilder<ListModel> {
        let path = "/v1/list"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ListModel>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Deletes a list
     - parameter listId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerDelete(listId: String, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        listControllerDeleteWithRequestBuilder(listId: listId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Deletes a list
     - parameter listId: (path)  
     - returns: Promise<Bool>
     */
    open class func listControllerDelete( listId: String) -> Promise<Bool> {
        let deferred = Promise<Bool>.pending()
        listControllerDelete(listId: listId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Deletes a list
     - DELETE /v1/list/{listId}
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter listId: (path)  

     - returns: RequestBuilder<Bool> 
     */
    open class func listControllerDeleteWithRequestBuilder(listId: String) -> RequestBuilder<Bool> {
        var path = "/v1/list/{listId}"
        let listIdPreEscape = "\(listId)"
        let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{listId}", with: listIdPostEscape, options: .literal, range: nil)
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Get a list
     - parameter listId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerGet(listId: String, completion: @escaping ((_ data: ListModel?,_ error: Error?) -> Void)) {
        listControllerGetWithRequestBuilder(listId: listId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Get a list
     - parameter listId: (path)  
     - returns: Promise<ListModel>
     */
    open class func listControllerGet( listId: String) -> Promise<ListModel> {
        let deferred = Promise<ListModel>.pending()
        listControllerGet(listId: listId) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Get a list
     - GET /v1/list/{listId}
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter listId: (path)  

     - returns: RequestBuilder<ListModel> 
     */
    open class func listControllerGetWithRequestBuilder(listId: String) -> RequestBuilder<ListModel> {
        var path = "/v1/list/{listId}"
        let listIdPreEscape = "\(listId)"
        let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{listId}", with: listIdPostEscape, options: .literal, range: nil)
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ListModel>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Receives the available colors for the list

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerGetColors(completion: @escaping ((_ data: [ListModel]?,_ error: Error?) -> Void)) {
        listControllerGetColorsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Receives the available colors for the list

     - returns: Promise<[ListModel]>
     */
    open class func listControllerGetColors() -> Promise<[ListModel]> {
        let deferred = Promise<[ListModel]>.pending()
        listControllerGetColors() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Receives the available colors for the list
     - GET /v1/list/colors
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<[ListModel]> 
     */
    open class func listControllerGetColorsWithRequestBuilder() -> RequestBuilder<[ListModel]> {
        let path = "/v1/list/colors"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[ListModel]>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Receives the lists the current user has access to

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerGetLists(completion: @escaping ((_ data: [ListModel]?,_ error: Error?) -> Void)) {
        listControllerGetListsWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Receives the lists the current user has access to

     - returns: Promise<[ListModel]>
     */
    open class func listControllerGetLists() -> Promise<[ListModel]> {
        let deferred = Promise<[ListModel]>.pending()
        listControllerGetLists() { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Receives the lists the current user has access to
     - GET /v1/list
     - API Key:
       - type: apiKey X-User-Token 
       - name: token

     - returns: RequestBuilder<[ListModel]> 
     */
    open class func listControllerGetListsWithRequestBuilder() -> RequestBuilder<[ListModel]> {
        let path = "/v1/list"
        let URLString = GetFoodSwaggerAPIAPI.basePath + path        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[ListModel]>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

    /**
     Update a list
     - parameter listId: (path)       - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listControllerUpdate(listId: String, body: ListCreateUpdate? = nil, completion: @escaping ((_ data: ListModel?,_ error: Error?) -> Void)) {
        listControllerUpdateWithRequestBuilder(listId: listId, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }
    /**
     Update a list
     - parameter listId: (path)       - parameter body: (body)  (optional)
     - returns: Promise<ListModel>
     */
    open class func listControllerUpdate( listId: String,  body: ListCreateUpdate? = nil) -> Promise<ListModel> {
        let deferred = Promise<ListModel>.pending()
        listControllerUpdate(listId: listId, body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }


    /**
     Update a list
     - PUT /v1/list/{listId}
     - API Key:
       - type: apiKey X-User-Token 
       - name: token
     - parameter listId: (path)       - parameter body: (body)  (optional)

     - returns: RequestBuilder<ListModel> 
     */
    open class func listControllerUpdateWithRequestBuilder(listId: String, body: ListCreateUpdate? = nil) -> RequestBuilder<ListModel> {
        var path = "/v1/list/{listId}"
        let listIdPreEscape = "\(listId)"
        let listIdPostEscape = listIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{listId}", with: listIdPostEscape, options: .literal, range: nil)
        let URLString = GetFoodSwaggerAPIAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ListModel>.Type = GetFoodSwaggerAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: )
    }

}
