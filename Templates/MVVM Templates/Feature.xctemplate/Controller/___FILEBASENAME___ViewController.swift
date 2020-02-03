//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Components

internal class ___VARIABLE_featureName___ViewController: UIViewController, StatefulViewProtocol {

    // MARK: - Internal Properties

    internal var theView: ___VARIABLE_featureName___View {
        return self.view as! ___VARIABLE_featureName___View // swiftlint:disable:this force_cast
    }

    // MARK: - Life Cicle

    internal init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    internal required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Override Methods

    internal override func loadView() {
        self.view = ___VARIABLE_featureName___View(frame: UIScreen.main.bounds)
    }

    internal override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
        configureViewState()
        loadData()
    }

    // MARK: - Private methods

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

            backButton = UIButton(type: .custom)
            backButton.theme(with: Style.Button.headerNegative)
            backButton.setTitle(IconLibrary.fechar.rawValue, for: .normal)
            backButton.setTitleColor(Pallet.negativeGreyscaleColor100, for: .normal)
            backButton.addTarget(self, action: #selector(pressBackButton), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        }
    }

    private func loadData() {

    }

    private func updateView() {

    }

    // MARK: - Action Button

    @objc internal func pressBackButton() {

    }

}

// MARK: - Extensions

extension ___VARIABLE_featureName___ViewController: PlaceholderErrorViewDelegate {

    internal func didTryAgain() {
        loadData()
    }

}