//
//  DetalleCarroController.swift
//  Tabla
//
//  Created by user217123 on 7/14/22.
//

import UIKit

class DetalleCarroController: UIViewController {
    var carro:Carro?
    
    @IBOutlet weak var lblDetallecarro: UILabel!
    @IBOutlet weak var imagDetalleCarro: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagDetalleCarro.image = UIImage(named: (carro?.imagen)!)
        lblDetallecarro.text = carro?.modelo
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
