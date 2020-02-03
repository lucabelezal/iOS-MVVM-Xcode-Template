//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import NetworkCore

internal enum ___VARIABLE_featureName___Router: Requestable {

    case example

    internal var method: HTTPMethod {
        switch self {
        case .example:
            return .get
        }
    }

    internal var path: String {
        //let session = NetworkService.configuration.environment.user

        switch self {
        case .example:
            return ""
        }
    }

    internal var parameters: Parameters? {
        //let session = NetworkService.configuration.environment.user

        switch self {
        case .example:
            return [
                "example": ""
            ]
        default:
            return nil
        }
    }

    internal func asURLRequest() throws -> URLRequest {
        let url = NetworkService.configuration.environment.type.baseURL
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue

        switch self {
        //case .example:
        //    urlRequest = try URLEncoding().encode(urlRequest, with: parameters)
        case .example:
            urlRequest = try JSONEncoding().encode(urlRequest, with: parameters)
        }
        return urlRequest
    }

}
