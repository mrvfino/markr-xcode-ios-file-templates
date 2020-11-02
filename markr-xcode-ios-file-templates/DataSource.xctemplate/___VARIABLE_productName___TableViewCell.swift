//  ___FILEHEADER___

import UIKit
import RxCocoa
import RxSwift

protocol ___VARIABLE_productName___TableViewCellDisplayData {
    var id: Int { get }
}

class ___VARIABLE_productName___TableViewCell: UITableViewCell, CustomCell {
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var tapEventButton: UIButton!
    
    // MARK: - Init
    
    var disposeBag: DisposeBag = DisposeBag()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
    
}


extension ___VARIABLE_productName___TableViewCell {
    
    func configure(withDisplayData displayData: ___VARIABLE_productName___TableViewCellDisplayData) {
    }
    
}
