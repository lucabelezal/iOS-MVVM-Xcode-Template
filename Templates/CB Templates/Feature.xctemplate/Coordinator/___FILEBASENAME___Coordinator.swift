//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Components
import Coordinator

internal final class ___VARIABLE_featureName___Coordinator: Coordinator {

    // MARK: - Public Property

    internal let rootViewController: UINavigationController

    // MARK: - Private Property

    private let service: <#T##R___VARIABLE_featureName___ServiceProtocol#>

    // MARK: - Life Cycle

    internal init(service: <#T##R___VARIABLE_featureName___ServiceProtocol#>) {
        self.service = service
        rootViewController = NavigationController()

        self.initialFlow()
    }

    // MARK: - Private Methods

    private func initialFlow() {}

}

extension ___VARIABLE_featureName___Coordinator: ___VARIABLE_featureName___EventProtocol {

    func handle(action: ___VARIABLE_featureName___Action) {
        switch action {
        case .back:
            router(NavigationTransition.back())
        }
    }

}
