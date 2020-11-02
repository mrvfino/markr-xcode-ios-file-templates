//  ___FILEHEADER___

import Foundation
import Moya
import RxCocoa
import RxSwift

protocol ___FILEBASENAME___ControlEvents {
	var cellControlTapped: ControlEvent<Int> { get }
}

class ___FILEBASENAME___: NSObject, ___FILEBASENAME___ControlEvents {

	typealias DataType = ___VARIABLE_productName___TableViewCellDisplayData
	typealias TableViewCellType = ___VARIABLE_productName___TableViewCell

	// MARK: - Init

	let data: BehaviorRelay<[DataType]> = BehaviorRelay(value: [])
	let table: UITableView

	init(forTable table: UITableView) {
		self.table = table
		super.init()
		data
		.asDriver()
		.drive(onNext: { [unowned self] _ in
			self.table.reloadData()
		}).disposed(by: disposeBag)
	}

	// MARK: - Events

	var events: ___FILEBASENAME___ControlEvents { return self }

	private let _cellControlTapped: PublishRelay<Int> = PublishRelay()
	var cellControlTapped: ControlEvent<Int> {
		return ControlEvent(events: _cellControlTapped)
	}

	// MARK: - Private

	private var disposeBag: DisposeBag = DisposeBag()
    
    // MARK: - Deinit
    
    deinit {
        print("--Deallocating \(self)")
    }
    
}

extension ___FILEBASENAME___: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.value.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let datum = data.value[indexPath.row]
		let cell = tableView.dequeue(TableViewCellType.self, for: indexPath)

		cell.configure(withDisplayData: datum)

        cell.tapEventButton.rx.tap.asDriver().drive(onNext: { [unowned self] in
            let id = datum.id
            self._cellControlTapped.accept(id)
        }).disposed(by: cell.disposeBag)

		return cell
	}

}
