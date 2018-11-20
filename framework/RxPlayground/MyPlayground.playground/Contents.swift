import UIKit
import RxSwift

Observable.just(1).subscribe { event in
    print(event)
}
