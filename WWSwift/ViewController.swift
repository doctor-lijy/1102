//
//  ViewController.swift
//  WWSwift
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "WWSwift"

        let imageView = UIImageView(image: UIImage(systemName: "swift"))
        imageView.tintColor = .systemBlue
        imageView.contentMode = .scaleAspectFit

        let label = UILabel()
        label.text = "Hello, WWSwift!"
        label.font = .systemFont(ofSize: 24, weight: .medium)

        view.addSubview(imageView)
        view.addSubview(label)

        imageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
            make.width.height.equalTo(80)
        }

        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
}
