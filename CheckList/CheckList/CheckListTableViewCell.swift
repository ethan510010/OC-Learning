//
//  CheckListTableViewCell.swift
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

import UIKit

protocol CheckButtonDidTappedProtocol {
    func checkButtonDidTapped(index:IndexPath)
}

class CheckListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    var index:IndexPath?
    var delegate:CheckButtonDidTappedProtocol?
    
    @IBAction func checkAction(_ sender: UIButton) {
        guard let index = index else {return}
        delegate?.checkButtonDidTapped(index: index)
    }
    
    func updateUI(model:ListModel){
        self.titleLabel.text = model.listName
        if model.finished{
            checkButton.setTitle("Finished", for: .normal)
        }else{
            checkButton.setTitle("Not yet", for: .normal)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
