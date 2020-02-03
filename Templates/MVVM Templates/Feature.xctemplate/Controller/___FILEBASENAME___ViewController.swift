//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Components

internal class ___VARIABLE_featureName___ViewController: UIViewController, StatefulViewProtocol {

    internal var theView: ___VARIABLE_featureName___View {
        return self.view as! ___VARIABLE_featureName___View // swiftlint:disable:this force_cast
    }

    // private let service: ___VARIABLE_featureName___ServiceProtocol
    private let closeButton: UIButton

    // private var data: Any {
    //    didSet {
    //        updateView()
    //    }
    // }

    internal init() { // service: ___VARIABLE_featureName___ServiceProtocol
        // self.service = service
        self.closeButton = UIButton(type: .custom)
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    internal required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    internal override func loadView() {
        self.view = ___VARIABLE_featureName___View(frame: .zero)
        self.theView.delegate = self
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureViewState()
        configureViewState()
        loadData()
    }

    @objc internal func close() {

    }

    private func loadData() {

    }

    // MARK: - Private method

    private func configureViewState() {
        self.loadingView = PlaceholderLoadingView()
        self.loadingView?.presentedView.backgroundColor = self.view.backgroundColor
        self.loadingView?.viewModel = PlaceholderLoadingViewModel(text: L10n.Wallet.stateLoading)
        self.errorView = PlaceholderErrorView(frame: view.frame, delegate: self)
    }

    private func configureNavigationBar() {
        if let navigationBar = navigationController?.navigationBar {
            navigationBar.theme(with: Style.NavigationBar.defaultHeader)
            navigationBar.barColor = Pallet.brandingColorPrimary100
            navigationBar.shadowImage = UIImage()

            closeButton.theme(with: Style.Button.headerNegative)
            closeButton.setTitle(IconLibrary.fechar.rawValue, for: .normal)
            closeButton.setTitleColor(Pallet.negativeGreyscaleColor100, for: .normal)
            closeButton.addTarget(self, action: #selector(close), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: closeButton)
        }
    }

    private func updateView() {

    }

}

// MARK: - Extensions

extension ___VARIABLE_featureName___ViewController: PlaceholderErrorViewDelegate {

    internal func didTryAgain() {
        loadData()
    }

}