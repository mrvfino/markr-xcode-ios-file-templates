//  ___FILEHEADER___

import Foundation
import Moya
import RxSwift

class ___FILEBASENAME___: RepositoryType {

	init(provider: ApiProvider = ApiProvider.default) {
		self.provider = provider
	}

	// MARK: - Private

	private var provider: ApiProvider
    
    // MARK: - Deinit
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}
