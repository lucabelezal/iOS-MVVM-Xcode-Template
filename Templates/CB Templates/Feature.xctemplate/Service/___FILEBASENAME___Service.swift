//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import NetworkCore

public class ___VARIABLE_featureName___Service: ___VARIABLE_featureName___ServiceProtocol {

    internal let service: NetworkServiceProtocol

    public init(service: NetworkServiceProtocol = NetworkService()) {
        self.service = service
    }

}