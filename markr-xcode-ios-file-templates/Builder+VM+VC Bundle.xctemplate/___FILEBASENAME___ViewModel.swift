//  ___FILEHEADER___

import Foundation
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___Input {
//    func getElements()
}

protocol ___FILEBASENAME___Output {
    var isProcessing: BehaviorRelay<Bool> { get }
    var errorMessage: BehaviorRelay<String> { get }
}

class ___FILEBASENAME___: ___FILEBASENAME___Output {

    // MARK: - Init
    
	struct Dependency {
	}

	init(dependency: Dependency) {
		self.dependency = dependency
	}
    
    var inputs: ___FILEBASENAME___Input { return self }
    var outputs: ___FILEBASENAME___Output { return self }
    
    // MARK: - Outputs
    
    let isProcessing: BehaviorRelay<Bool> = BehaviorRelay(value: false)
    let errorMessage: BehaviorRelay<String> = BehaviorRelay(value: "")

	// MARK: - Private

	private var dependency: Dependency
	private var disposeBag = DisposeBag()

    // MARK: - Deinit
    
	deinit {
		print("--Deallocating \(self)")
	}

}

// MARK: - Input(s)

extension ___FILEBASENAME___: ___FILEBASENAME___Input {
    
//	func getElements() {
//
//	}

}
