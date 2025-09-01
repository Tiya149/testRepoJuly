//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Student on 25/08/25.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    var book: Book?
    
    @IBOutlet weak var titleFIeld: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var lengthField: UITextField!
    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let book = book else {return}
        
        titleFIeld.text = book.title
        authorField.text = book.author
        genreField.text = book.genre
        lengthField.text = book.length
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let title = titleFIeld.text,
            let author = authorField.text,
            let genre = genreField.text,
            let length = lengthField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
    
    
    

    
    

    
}
    
