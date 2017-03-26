//
//  ViewController.swift
//  hamburguesasEnElMundo
//
//  Created by Sebastian Ferro on 2017/03/25.
//  Copyright © 2017 Sebastian Ferro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()
    
    @IBOutlet weak var labelPaises: UILabel!
    @IBOutlet weak var labelHamburguesa: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DameUnaHamburguesa() {
        let colorAleatorio = colores.regresaColorAleatorio()

        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
        labelPaises.text = paises.obtenPais()
        labelHamburguesa.text  = hamburguesas.obtenHamburguesa()
    }

}

