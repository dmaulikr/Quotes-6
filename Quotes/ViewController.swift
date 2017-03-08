//
//  ViewController.swift
//  Quotes
//
//  Created by Богдан Быстрицкий on 02/12/2016.
//  Copyright © 2016 Bogdan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonInspireMe: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!

    var game : QuotesGame = QuotesGame()
    
    
    @IBAction func tapInspireMeButton(_ sender: Any) {
        
        if (game.currentQuoteIndex == game.quotes.count-1)
        {
            game.currentQuoteIndex = 0
            startQuotes()
        }
        else{
            updateQuotes()
        }
       
    }
    

    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        startQuotes()
        
    }

    func updateQuotes(){
        let nextQuote = game.getNextQuote()
        let authorNameLet = game.getAuthorName()
        let authorImageLet = UIImage(named: game.quotesAuthorImage[game.currentQuoteIndex])
        textLabel.text = nextQuote
        authorName.text = authorNameLet
        authorImage.image = authorImageLet
    }
    
    func startQuotes(){
        let startedImage = UIImage(named: "thumb_steve")
        authorImage.image = startedImage
        textLabel.text = game.quotes[game.currentQuoteIndex]
        authorName.text = game.quotesAuthor[game.currentQuoteIndex]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

