//
//  ViewController.swift
//  randomizer
//
//  Created by Alibek Kozhambekov on 19.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let movieDict: [String: UIImage] = [
        "The 8th Night": #imageLiteral(resourceName: "8th night"),
        "The Deep House": #imageLiteral(resourceName: "deepHouse"),
        "Old": #imageLiteral(resourceName: "old"),
        "Infinite": #imageLiteral(resourceName: "infinite"),
        "No Time To Die": #imageLiteral(resourceName: "noTimeToDie"),
        "Red Notice": #imageLiteral(resourceName: "redNotice"),
        "Sweet & Sour": #imageLiteral(resourceName: "sweet&sour"),
        "The Guilty": #imageLiteral(resourceName: "theGuilty"),
        "Forever Reach": #imageLiteral(resourceName: "Unknown"),
        "Venom": #imageLiteral(resourceName: "venom")
    ]

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    @IBAction func buttonPressed(_ sender: UIButton) {
        let randomMovie = movieDict.randomElement()
        textLabel.text = randomMovie?.key
        imageView.image = randomMovie?.value
        myButton.titleLabel?.text = "Press"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        textLabel.text = "Press button below to see a list of movies"
        myButton.backgroundColor = .red
        myButton.setTitle("Press", for: .normal)
    }
}

