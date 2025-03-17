//
//  SuccessfulViewController.swift
//  VPN APP
//
//  Created by Atharva Lavhate on 17/03/25.
//

import UIKit

class SuccessfulViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setupUI()
    }
    
    func setupUI(){
        
        let rhinoImageView = UIImageView()
        rhinoImageView.image = UIImage(named: "whiteRhino")
        rhinoImageView.contentMode = .scaleAspectFit
        rhinoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let successLabel = UILabel()
        successLabel.text = "Connected Successfully."
        successLabel.textColor = .white
        successLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let message = UILabel()
        message.text = "You are securely connected to Ryn Lite"
        message.textColor = .white
        message.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        message.translatesAutoresizingMaskIntoConstraints = false
        
        let share = UIImageView()
        share.image = UIImage(named: "Frame")
        share.contentMode = .scaleAspectFit
        share.translatesAutoresizingMaskIntoConstraints = false
        
        let browseButton = UIButton()
        browseButton.setTitle("Continue browsing", for: .normal)
        browseButton.tintColor = .white
        browseButton.frame = CGRect(x: 0, y: 0, width: 100, height: 30)
        browseButton.translatesAutoresizingMaskIntoConstraints = false
    
        view.addSubview(rhinoImageView)
        view.addSubview(successLabel)
        view.addSubview(message)
        view.addSubview(share)
        view.addSubview(browseButton)
        
        NSLayoutConstraint.activate([
            
            rhinoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rhinoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            rhinoImageView.widthAnchor.constraint(equalToConstant: 150),
            rhinoImageView.heightAnchor.constraint(equalToConstant: 150),

            successLabel.topAnchor.constraint(equalTo: rhinoImageView.bottomAnchor, constant: 20),
            successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            message.topAnchor.constraint(equalTo: successLabel.bottomAnchor, constant: 8),
            message.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            share.topAnchor.constraint(equalTo: message.bottomAnchor, constant: 40),
            share.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            share.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            share.heightAnchor.constraint(equalToConstant: 80),
            
            browseButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            browseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
