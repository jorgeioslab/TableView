//
//  EmojiTableViewController.swift
//  ProyectoEmoji
//
//  Created by Jorge on 08/11/23.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emoji: [Emoji] = [Emoji(simbolo: "😃", nombre: "Feliz", descripcion: "Esta feliz", uso: "Cuando algo te da felicidad",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "😜", nombre: "Broma", descripcion: "Picaro", uso: "Cuando se utiliza para mostrar algo picaro que se hizo",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🥰", nombre: "Enamorado", descripcion: "Cuando estas enamorado", uso: "Para decirle a alguien que estas enamorado",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🥳", nombre: "Fiesta", descripcion: "Cuando estas de fiesta", uso: "Para avisar que iras de fiesta",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🧐", nombre: "Investigacion", descripcion: "Cuando investigas algo", uso: "Cuando quieres saber algo",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "😂", nombre: "Gracioso", descripcion: "Cuando algo que da mucha risa", uso: "Para decir que algo estuvo graciosos",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🤯", nombre: "Sorpresa", descripcion: "Estoy sorprendido", uso: "Para decir que algo te sorprendio mucho",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "😡", nombre: "Enojo", descripcion: "Cuando algo da coraje", uso: "Para decir que te enojaste",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🤢", nombre: "Asco", descripcion: "Cuando algo es un poco asqueroso", uso: "Para decir que algo da asco",categoria: "Cara",fechaCreacion: "10/11/23"),
    Emoji(simbolo: "🤕", nombre: "Enfermo", descripcion: "Cuando enfermas", uso: "Para avisar que estas enfermo",categoria: "Cara",fechaCreacion: "10/11/23")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return emoji.count
        }
        else {
            return 1
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)

        // Configure the cell...
        let tmpemoj = emoji[indexPath.row]
        cell.textLabel?.text = "\(tmpemoj.simbolo) - \(tmpemoj.nombre) "
        cell.detailTextLabel?.text = tmpemoj.descripcion
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedEmoji = emoji.remove(at: fromIndexPath.row)
        emoji.insert(movedEmoji, at: to.row)
        tableView.reloadData()
    }
    */
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emoji.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        // Aquí debes actualizar tu fuente de datos para reflejar el cambio en la posición de la celda
        let movedItem = emoji.remove(at: sourceIndexPath.row)
        emoji.insert(movedItem, at: destinationIndexPath.row)

        // Actualiza la interfaz de usuario sin recargar toda la tabla
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
