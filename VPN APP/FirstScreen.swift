//
//  FirstScreen.swift
//  VPN APP
//
//  Created by Atharva Lavhate on 16/03/25.
//

import UIKit

class FirstScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    @objc private func connectTapped() {
        let loadingVC1 = LoadingViewController()
        loadingVC1.modalPresentationStyle = .fullScreen
        present(loadingVC1, animated: true)
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        // Top Bar
        let topBar = UIView()
        topBar.backgroundColor = UIColor.purple
        topBar.translatesAutoresizingMaskIntoConstraints = false
        
        let curvedBackground = CurvedBackgroundView()
        curvedBackground.translatesAutoresizingMaskIntoConstraints = false

        
        let extendButton = UIButton()
        extendButton.setTitle("EXTEND VPN TIME", for: .normal)
        extendButton.backgroundColor = UIColor.purple.withAlphaComponent(0.2)
        extendButton.setTitleColor(.purple, for: .normal)
        extendButton.layer.cornerRadius = 10
        extendButton.translatesAutoresizingMaskIntoConstraints = false
        
        let premiumButton = UIButton()
        premiumButton.setImage(UIImage(named: "Premium-3"), for: .normal)
        premiumButton.imageView?.contentMode = .scaleAspectFit
        premiumButton.imageView?.clipsToBounds = true
        premiumButton.translatesAutoresizingMaskIntoConstraints = false
        
       
        let timerLabel = UILabel()
        timerLabel.text = "00:00:00"
        timerLabel.textColor = .purple
        timerLabel.font = UIFont.boldSystemFont(ofSize: 32)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let statusLabel = UILabel()
        statusLabel.text = "❌ You are Unprotected"
        statusLabel.textColor = .red
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //rhino image
        let rhinoImageView = UIImageView()
        rhinoImageView.image = UIImage(named: "rhino")
        rhinoImageView.contentMode = .scaleAspectFit
        rhinoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        // Connect Button
        let connectButton = UIButton()
        connectButton.setImage(UIImage(named: "connect"), for: .normal)
        connectButton.addTarget(self, action: #selector(connectTapped), for: .touchUpInside)
        connectButton.translatesAutoresizingMaskIntoConstraints = false
        
        let connectLabel = UILabel()
        connectLabel.text = "TAP TO CONNECT"
        connectLabel.textColor = .purple
        connectLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        connectLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Tab Bar
        let tabBar = UIView()
        tabBar.backgroundColor = .purple
        tabBar.translatesAutoresizingMaskIntoConstraints = false
        
        
        let squareButton = UIButton()
        squareButton.setImage(UIImage(systemName: "rectangle.stack.fill"), for: .normal)
        squareButton.tintColor = .white
        squareButton.translatesAutoresizingMaskIntoConstraints = false
        
        let homeButton = UIButton()
        homeButton.setImage(UIImage(systemName: "house.fill"), for: .normal)
        homeButton.tintColor = .white
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        
        let settingsButton = UIButton()
        settingsButton.setImage(UIImage(systemName: "gearshape.fill"), for: .normal)
        settingsButton.tintColor = .white
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Add Subviews
        view.addSubview(topBar)
        view.addSubview(extendButton)
        view.addSubview(premiumButton)
        view.addSubview(timerLabel)
        view.addSubview(statusLabel)
        view.addSubview(rhinoImageView)
        view.addSubview(connectButton)
        view.addSubview(connectLabel)
        view.addSubview(tabBar)
        tabBar.addSubview(homeButton)
        tabBar.addSubview(settingsButton)
        tabBar.addSubview(squareButton)
        
        view.addSubview(curvedBackground)
        view.sendSubviewToBack(curvedBackground)
        
        // AutoLayout
        NSLayoutConstraint.activate([
            topBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topBar.heightAnchor.constraint(equalToConstant: 50),
            
            extendButton.centerYAnchor.constraint(equalTo: topBar.bottomAnchor, constant: 50),
            extendButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            extendButton.widthAnchor.constraint(equalToConstant: 250),
            extendButton.heightAnchor.constraint(equalToConstant: 50),
            
            premiumButton.centerYAnchor.constraint(equalTo: extendButton.centerYAnchor),
            premiumButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            premiumButton.widthAnchor.constraint(equalToConstant: 50),
            premiumButton.heightAnchor.constraint(equalToConstant: 50),
            
            timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timerLabel.topAnchor.constraint(equalTo: extendButton.bottomAnchor, constant: 40),
            
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 10),
            
            rhinoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rhinoImageView.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 70),
            rhinoImageView.widthAnchor.constraint(equalToConstant: 200),
            rhinoImageView.heightAnchor.constraint(equalToConstant: 200),
            
            connectButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connectButton.topAnchor.constraint(equalTo: rhinoImageView.bottomAnchor, constant: 40),
            connectButton.widthAnchor.constraint(equalToConstant: 100),
            connectButton.heightAnchor.constraint(equalToConstant: 100),
            
            connectLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connectLabel.topAnchor.constraint(equalTo: connectButton.bottomAnchor, constant: 20),
            
            tabBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabBar.heightAnchor.constraint(equalToConstant: 60),
            
            homeButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            homeButton.centerYAnchor.constraint(equalTo: tabBar.centerYAnchor),
            homeButton.widthAnchor.constraint(equalToConstant: 50),
            homeButton.heightAnchor.constraint(equalToConstant: 50),
            
            settingsButton.trailingAnchor.constraint(equalTo: tabBar.trailingAnchor, constant: -70),
            settingsButton.centerYAnchor.constraint(equalTo: tabBar.centerYAnchor),
            settingsButton.widthAnchor.constraint(equalToConstant: 50),
            settingsButton.heightAnchor.constraint(equalToConstant: 50),
            
            squareButton.leadingAnchor.constraint(equalTo: tabBar.leadingAnchor, constant: 60),
            squareButton.centerYAnchor.constraint(equalTo: tabBar.centerYAnchor),
            squareButton.widthAnchor.constraint(equalToConstant: 40),
            squareButton.heightAnchor.constraint(equalToConstant: 40),
            
            curvedBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            curvedBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            curvedBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            curvedBackground.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        ])
    }
}


class CurvedBackgroundView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        backgroundColor = .clear
    }

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        let purpleColor = UIColor.purple.withAlphaComponent(0.2).cgColor
        context.setFillColor(purpleColor)

        let path = UIBezierPath()

        let width = rect.width
        let height = rect.height

        
        path.move(to: CGPoint(x: 0, y: height * 0.3))

        path.addQuadCurve(to: CGPoint(x: width, y: height * 0.3),
                          controlPoint: CGPoint(x: width / 2, y: height * 0.0))

        //filling the bottom
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        
        path.fill()
    }
}


