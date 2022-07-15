//
//  CancionCell.swift
//  Tabla
//
//  Created by user217123 on 7/14/22.
//

import UIKit

class CancionCell: UITableViewCell {
    
    @IBOutlet weak var imagenCancion: UIImageView!
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblAnio: UILabel!
    @IBOutlet weak var lblAutor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
