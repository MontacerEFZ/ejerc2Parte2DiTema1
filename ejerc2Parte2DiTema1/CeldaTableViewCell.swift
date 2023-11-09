//
//  CeldaTableViewCell.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 09/11/2023.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbNota: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
