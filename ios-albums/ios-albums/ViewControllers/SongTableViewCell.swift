//
//  SongTableViewCell.swift
//  ios-albums
//
//  Created by Lambda_School_Loaner_219 on 1/13/20.
//  Copyright © 2020 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {
//outlets
    
    @IBAction func titleTextField(_ sender: Any) {
    }
    
    @IBOutlet weak var durationTextField: UITextField!
    
    @IBAction func AddSongButton(_ sender: Any) {
    }
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
