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
    let view = UIView()
    setUpWith(parent: view)
    self.view = view
  }
  
  override public func viewDidLoad() {
    super.viewDidLoad()
  }

  func setUpWith(parent: UIView) {
    parent.backgroundColor = .white
    
    let orangeView = UIView()
    orangeView.backgroundColor = UIColor(red: 30/255, green: 136/255, blue: 229/255, alpha: 1.0)
    parent.addSubview(orangeView)
    orangeView.snp.makeConstraints {
      $0.top.leading.trailing.equalToSuperview()
      $0.height.equalTo(parent.snp.height).multipliedBy(0.15)
    }
    
    let titleLabel = UILabel()
    titleLabel.text = "SnapQuiz"
    titleLabel.font = UIFont.boldSystemFont(ofSize: 25)
    titleLabel.textColor = .white
    orangeView.addSubview(titleLabel)
    titleLabel.snp.makeConstraints {
      $0.leading.trailing.bottom
        .equalToSuperview()
        .inset(UIEdgeInsets(top: 0, left: 20, bottom: 8, right: 20))
    }
    
    let timerContainerView = UIView()
    timerContainerView.layer.borderWidth = 1
    timerContainerView.layer.borderColor = UIColor.black.cgColor
    timerContainerView.layer.cornerRadius = 10
    parent.addSubview(timerContainerView)
    timerContainerView.snp.makeConstraints {
      $0.top.equalTo(orangeView.snp.bottom).offset(50)
      $0.centerX.equalToSuperview()
      $0.width.equalToSuperview().multipliedBy(0.3)
    }
    
    let timerLabel = UILabel()
    timerLabel.text = "00:00"
    timerLabel.font = .systemFont(ofSize: 15)
    timerLabel.textAlignment = .center
    timerContainerView.addSubview(timerLabel)
    timerLabel.snp.makeConstraints {
      $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12))
    }
  }

}

