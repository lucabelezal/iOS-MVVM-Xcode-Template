//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import CoordinatorKit

public protocol ___VARIABLE_fileName___EventProtocol {
    func handle(action: ___VARIABLE_fileName___Action)
}

public enum ___VARIABLE_fileName___Action: Event {

    case back

    public func sendToHandler(_ handler: ___VARIABLE_fileName___EventProtocol) {
        handler.handle(action: self)
    }

}
