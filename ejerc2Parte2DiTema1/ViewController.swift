//
//  ViewController.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 02/11/2023.
//

import UIKit

class ViewController: UIViewController, ObtenerExamen { //ObtenerExamen a mano q es protocolo q hemos creado

    @IBOutlet weak var txtIndice: UITextField!
    @IBOutlet weak var lbResultado: UILabel!
    
    var listaExamenes: [Examen]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaExamenes = []
    }


    @IBAction func btnVerExamen(_ sender: Any) {
        let indice = txtIndice.text!
        
        if !indice.isEmpty && Int(indice)! >= 1 &&  Int(indice)! >= listaExamenes.count{
        lbResultado.text = listaExamenes[Int(indice)! - 1].toString()
        }else{
            lbResultado.text = "ERROR en el indice"
        }
    }
    
    func obtener(dato: Examen) {
        listaExamenes.append(dato)
    }
    
    //prepare + elegir la opcion del segue + tabulador
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EXAMEN" {
            let destino = segue.destination as!
                InsertarExamenViewController
            destino.delegate = self
        }
    }
}

