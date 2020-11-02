//  ___FILEHEADER___

import Foundation

class ___FILEBASENAME___ {
    
    static func build() -> ___VARIABLE_productName___ViewController {
        let vc = ___VARIABLE_productName___ViewController.createFromNib()

		let viewModel: ___VARIABLE_productName___ViewModel = {
			let dependency = ___VARIABLE_productName___ViewModel.Dependency()
			return ___VARIABLE_productName___ViewModel(dependency: dependency)
		}()

        vc.inputs = viewModel
        vc.outputs = viewModel

        return vc
    }
    
}
