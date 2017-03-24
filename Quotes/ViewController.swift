import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorTextLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    
    var quoteBook = QuoteBook()

    @IBAction func getNewQuoteTapped(_ sender: AnyObject)
    {
        let randomQuote = quoteBook.getRandomQuote()
        let author = quoteBook.getAuthor(for: randomQuote)
        let authorImageName = quoteBook.getImageName(for: author)
        
        quoteTextLabel.text = randomQuote
        authorTextLabel.text = author
        authorImageView.image = UIImage(named: authorImageName)
    }
}

