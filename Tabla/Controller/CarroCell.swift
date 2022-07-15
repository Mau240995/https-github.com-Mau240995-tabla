//
//  CarroCell.swift
//  Tabla
//
//  Created by user217123 on 7/14/22.
//

import UIKit

class CarroCell: UITableViewCell {

    @IBOutlet weak var imagenCarrro: UIImageView!
    
    @IBOutlet weak var lblMarca: UILabel!
    
    @IBOutlet weak var lblModelo: UILabel!
  
    @IBOutlet weak var lblPrecio: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
