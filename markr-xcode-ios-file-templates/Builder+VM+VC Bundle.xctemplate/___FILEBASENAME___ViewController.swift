//  ___FILEHEADER___

import UIKit
import MBProgressHUD
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___Delegate: AnyObject {
    func dismiss(_ vc: ___FILEBASENAME___)
}

class ___FILEBASENAME___: UIViewController, CreatedFromNib, DisplaysProgress {

    weak var delegate: ___FILEBASENAME___Delegate?

    // MARK: - Outlets

    // MARK: - DisplaysProgress

    var viewForHUD: UIView {
        return self.view
    }

    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        initViews()
        initViewModel()
    }

    // MARK: - ViewModel

    var inputs: ___VARIABLE_productName___ViewModelInput!
    var outputs: ___VARIABLE_productName___ViewModelOutput!

    // MARK: - Private

    private var disposeBag = DisposeBag()

    // MARK: - Deinit

    deinit {
        print("--Deallocating \(self)")
    }

}

// MARK: - Init data
extension ___FILEBASENAME___ {

    private func initData() {
    }

}

// MARK: - Init views
extension ___FILEBASENAME___ {

    private func initViews() {
    }


}

// MARK: - Bindings
extension ___FILEBASENAME___ {

    private func initViewModel() {
        bindInputs()
        bindOutputs()
    }

    private func bindInputs() {

    }

    private func bindOutputs() {

        outputs
            .isProcessing
            .asDriver()
            .drive(onNext: { [unowned self] (isProcessing) in
                if isProcessing {
                    self.showProgress()
                } else {
                    self.hideProgress()
                }
            }).disposed(by: disposeBag)

        outputs
            .errorMessage
            .asDriver()
            .filter { !$0.isEmpty }
            .drive(onNext: { [unowned self] (errorMessage) in
                self.showAlert(type: .error, title: nil, message: errorMessage)
            }).disposed(by: disposeBag)

    }

}
