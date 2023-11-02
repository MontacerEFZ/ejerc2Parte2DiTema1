//
//  InsertarExamenViewController.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 02/11/2023.
//

import UIKit

class InsertarExamenViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTotalPreguntas: UITextField!
    @IBOutlet weak var txtTotalAcertadas: UITextField!
    
    var delegate: ObtenerExamen?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnInsertarExamen(_ sender: Any) {
        let nombre = txtNombre.text!
        let totalP = txtTotalPreguntas.text!
        let totalA = txtTotalAcertadas.text!
        
        if nombre.isEmpty || totalP.isEmpty || totalA.isEmpty {
            //faltan datos
            let alert = UIAlertController(title: "error", message: "faltan datos", preferredStyle: .alert) //los alerts tienen 2 partes:
                                                                                                        //un controller y un action
            alert.addAction(UIAlertAction(title: "ok", style: .destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            //enviamos un examen de vuelta
            let examen = Examen(nombre: nombre, totalPreguntas: Int(totalP)!, totalAcertadas: Int(totalA)!)
            delegate?.obtener(dato: examen)
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
