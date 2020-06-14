//
//  CellSampleTableViewCell.swift
//  customCellClassSampleApp
//
//  Created by 尾原徳泰 on 2020/06/15.
//  Copyright © 2020 尾原徳泰. All rights reserved.
//

import UIKit

class CellSampleTableViewCell: UITableViewCell {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
