//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class SubViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }
}


class MyViewController : UIViewController {
    var btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        btn = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 40))
        view.addSubview(btn)
        btn.backgroundColor = .blue
        btn.setTitle("Click Me", for: .normal)
        btn.addTarget(self, action: #selector(clickBtn), for: .touchUpInside)
    }

    @objc func clickBtn() {
        print("click me")
        let vc = SubViewController()
        self.present(vc, animated: true, completion: nil)
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

