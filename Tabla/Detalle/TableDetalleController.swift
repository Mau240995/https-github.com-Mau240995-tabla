//
//  TableDetalleController.swift
//  Tabla
//
//  Created by user217123 on 7/14/22.
//

import UIKit

class TableDetalleController: UITableViewController {
    
    let arregloCarros = [
        [Carro(imagen: "Sentra", marca: "Nissan", modelo: "Sentra", precio: "$350,000.00")],
        [Carro(imagen: "Jetta", marca: "VM", modelo: "Jetta", precio: "$400,000.00")]]
        
        override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arregloCarros.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloCarros[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaCarroD", for: indexPath) as!  CeldaDetalleController
        let carro = arregloCarros[indexPath.section][indexPath.row]
        
        cell.imagCeCeldaCarro.image = UIImage(named: carro.imagen!)
        cell.lblCeldaCarro.text = carro.modelo!

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        let carro = arregloCarros[indexPath!.section][indexPath!.row]
        let dc = segue.destination as! DetalleCarroController
        dc.carro = carro
    }
 

}
