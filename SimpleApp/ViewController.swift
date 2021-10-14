//
//  ViewController.swift
//  TemplateProject
//
//  Created by Alex Sartain on 08/10/2021.
//
/*
 TO-DO:
    -Closures
    -Callback Functions
    -Optionals
    -HTTP Requests / REST API, service to get data
 */

import UIKit

class ViewController: UIViewController {
    let scoreboard = Scoreboard()
    let score = UILabel()
    @objc func answerQuestionCorrect() {
        scoreboard.answerQuestion(correct: true)
        updateScoreText()
    }
    
    @objc func updateScoreText() {
        score.text = "Score: \(scoreboard.getScore())"
    }
    
    @objc func answerQuestionIncorrect() {
        scoreboard.answerQuestion(correct: false)
        updateScoreText()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        title = "popmaster"
        let correctButton = UIButton()
        let incorrectButton = UIButton()
        updateScoreText()
        correctButton.addTarget(self, action: #selector(answerQuestionCorrect), for: .touchUpInside)
        incorrectButton.addTarget(self, action: #selector(answerQuestionIncorrect), for: .touchUpInside)
        correctButton.setTitle("Correct", for: .normal)
        correctButton.backgroundColor = .green
        incorrectButton.setTitle("Incorrect", for: .normal)
        incorrectButton.backgroundColor = .red
        //let buttonTitle = localize(.first_view_controller_button)
       // button.setTitle(buttonTitle, for: .normal)
        correctButton.translatesAutoresizingMaskIntoConstraints = false
        incorrectButton.translatesAutoresizingMaskIntoConstraints = false
        score.translatesAutoresizingMaskIntoConstraints = false
        //button.backgroundColor = .secondarySystemBackground
        correctButton.setTitleColor(.label, for: .normal)
        correctButton.titleLabel?.adjustsFontForContentSizeCategory = true
        correctButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        correctButton.layer.cornerRadius = 10
        incorrectButton.setTitleColor(.label, for: .normal)
        incorrectButton.titleLabel?.adjustsFontForContentSizeCategory = true
        incorrectButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .body)
        incorrectButton.layer.cornerRadius = 10
        view.addSubview(score)
        view.addSubview(correctButton)
        view.addSubview(incorrectButton)
        
        NSLayoutConstraint.activate([
            //score.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            //score.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 15),
            //score.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -15),
            //score.heightAnchor.constraint(greaterThanOrEqualToConstant: 44),
            correctButton.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: -15),
            incorrectButton.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: 15),
            correctButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            incorrectButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            self.score.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            self.score.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 0)
        ])
    }

}

