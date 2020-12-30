//
//  ViewController.swift
//  question
//
//  Created by 7 on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var num: UILabel!
    
    
    var questions = [Question]()
    var index = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let question1 = Question(description: "やりらふぃー", answer: "パリピな人")
        questions.append(question1)
        
        let question2 = Question(description: "キュンです", answer: "韓国発祥の“指ハート”でキュンキュンしてる様子を表す")
        questions.append(question2)
        
        let question3 = Question(description: "〜してもろて", answer: "～してもらって")
        questions.append(question3)
        
        let question4 = Question(description: "いぇいいぇい", answer: "盛り上がったときの合の手や、乾杯などのときに使われる")
        questions.append(question4)
        
        let question5 = Question(description: "大丈夫そ？", answer: "大丈夫かな？")
        questions.append(question5)
        
        let question6 = Question(description: "飛ぶぞ", answer: "おいしすぎてやばい")
        questions.append(question6)
        
        let question7 = Question(description: "〜てり", answer: "“る”を“り”に言い変えて、かわいらしい響きの言葉に変える")
        questions.append(question7)
        
        let question8 = Question(description: "～ニダ", answer: "語尾に「ニダ。」をつけることによって韓国語化させる")
        questions.append(question8)
        
        let question9 = Question(description: "はにゃ", answer: "わからないことがあったときや、トボけるときに使う")
        questions.append(question9)
        
        let question10 = Question(description: "397", answer: "サンキューな、ありがとね")
        questions.append(question10)
        
        questions.shuffle()

        
        question.text = questions[index].description
        answer.text = ""
        num.text = "第 \(index + 1) 問"
        
    }


    @IBAction func showAnswer(_ sender: Any) {
        
        answer.text = questions[index].answer

    }
    
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        index = index + 1

        if index < questions.count {
            question.text = questions[index].description
            answer.text = ""
            num.text = "第 \(index + 1) 問"
        } else {
            index = 0
            
            question.text = questions[index].description
            answer.text = ""
            num.text = "第 \(index + 1) 問"
        }
        
        /*
        else {
            question.text = "終了"
            answer.text = ""
            num.text = ""
        }*/
    }
    
}

