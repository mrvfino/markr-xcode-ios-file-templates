//  ___FILEHEADER___

import Foundation
import UIKit

protocol CreatedFromNib: AnyObject {
    static func createFromNib(fromBundle bundle: Bundle?) -> Self
}

extension CreatedFromNib where Self: UIViewController {
    
    static func createFromNib(fromBundle bundle: Bundle? = nil) -> Self {
        return Self(nibName: String(describing: Self.self), bundle: bundle)
    }
    
}
