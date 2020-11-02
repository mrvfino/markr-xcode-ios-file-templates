//  ___FILEHEADER___

import Foundation
import UIKit

protocol ___FILEBASENAME___Delegate: AnyObject {
	func dettach(_ coordinator: ___FILEBASENAME___)
}


class ___FILEBASENAME___: CoordinatorType {

	weak var delegate: ___FILEBASENAME___Delegate?

    var childCoordinators: [CoordinatorType] = []
	var modalSource: UIViewController
    
	init(modalSource: UIViewController) {
        self.modalSource = modalSource
    }
    
    func start() {
    }
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}
