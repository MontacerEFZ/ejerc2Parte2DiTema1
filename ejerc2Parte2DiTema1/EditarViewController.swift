//aa
//  EditarViewController.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 09/11/2023.
//

import UIKit

class EditarViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTotalPreguntas: UITextField!
    @IBOutlet weak var txtAcertadas: UITextField!
    
    var delegate: ObtenerExamen!
    var examen: Examen!
    var posicion: Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtNombre.text = examen.nombre
        txtTotalPreguntas.text = String(examen.totalPreguntas)
        txtAcertadas.text = String(examen.totalAcertadas)
    }
    

    @IBAction func btnEliminar(_ sender: Any) {
        delegate.eliminar(posicion: posicion)
        self.dismiss(animated: true, completion: nil)
    }

    
    @IBAction func btnModificar(_ sender: Any) {
        let nuevoExamen = Examen(nombre: txtNombre.text!, totalPreguntas: Int(txtTotalPreguntas.text!)!,  totalAcertadas: Int(txtAcertadas.text!)!)
        delegate.modificar(posicion: posicion, nuevoExamen: nuevoExamen)
        self.dismiss(animated: true, completion: nil)
    }
}
