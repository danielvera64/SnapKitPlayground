//
//  ViewController.swift
//  SnapKitPlayground
//
//  Created by Daniel Vera on 8/19/19.
//  Copyright © 2019 Daniel Vera. All rights reserved.
//

import UIKit
import SnapKit

public class ViewController: UIViewController {
  
  public override func loadView() {
    print("--------_> loadView")
    let view = UIView()
    setUpWith(parent: view)
    self.view = view
  }
  
  override public func viewDidLoad() {
    print("--------_> viewDidLoad")
    super.viewDidLoad()
  }

  func setUpWith(parent: UIView) {
    parent.backgroundColor = .lightGray
    
    let titleLabel = UILabel()
    titleLabel.text = "Main Screen"
    titleLabel.textAlignment = .center
    titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
    titleLabel.textColor = .white
    parent.addSubview(titleLabel)
    titleLabel.snp.makeConstraints {
      $0.center.equalToSuperview()
    }
  }

}

