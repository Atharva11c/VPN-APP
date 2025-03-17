//
//  LoadingViewController.swift
//  VPN APP
//
//  Created by Atharva Lavhate on 17/03/25.
//

import UIKit

class LoadingViewController: UIViewController {
    
    private let loadingLabel: UILabel = {
        let label = UILabel()
        label.text = "Ryn is finding the fastest server...."
        label.textColor = .purple
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()

    private let rhinoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "rhino")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let progressBar: UIProgressView = {
        let progress = UIProgressView(progressViewStyle: .default)
        progress.progressTintColor = .purple
        progress.trackTintColor = .lightGray
        progress.setProgress(0.2, animated: true)
        return progress
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        loading()
    }

    private func setupUI() {
        
        let curvedBackground = CurvedBackgroundView()
        curvedBackground.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loadingLabel)
        view.addSubview(progressBar)
        view.addSubview(rhinoImageView)
        view.addSubview(curvedBackground)
        view.sendSubviewToBack(curvedBackground)
        

        loadingLabel.translatesAutoresizingMaskIntoConstraints = false
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        rhinoImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            loadingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),

            rhinoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rhinoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            rhinoImageView.widthAnchor.constraint(equalToConstant: 200),
            rhinoImageView.heightAnchor.constraint(equalToConstant: 200),

            progressBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            progressBar.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            progressBar.widthAnchor.constraint(equalToConstant: 250),
            progressBar.heightAnchor.constraint(equalToConstant: 10),
            
            curvedBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            curvedBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            curvedBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            curvedBackground.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
        
    }


    private func loading() {
        
        updateProgress(to: 0.5, text: "Rhino hunting down the server...", delay: 1) {

            self.updateProgress(to: 0.8, text: "Rhino hunting down the server...", delay: 1) {
           
                self.updateProgress(to: 0.8, text: "Server hunted down successfully!", delay: 1){
                    
                    self.finalSuccessState()
                    
                }
            }
        }
    }

    private func updateProgress(to value: Float, text: String, delay: TimeInterval, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            UIView.animate(withDuration: 0.5) {
                self.progressBar.setProgress(value, animated: true)
                self.loadingLabel.text = text
            }
            completion()
        }
    }

    private func finalSuccessState() {
        let successfulVC = SuccessfulViewController()
        
        successfulVC.modalPresentationStyle = .fullScreen
        present(successfulVC, animated: true)
    }
    
    
}



