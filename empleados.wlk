//Escribir aqui los objetos

object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method cambiarSueldo (_sueldo){ // para cambiar el sueldo de Galván 
        sueldo = _sueldo
    }

    method sueldo () {
        return sueldo
    }

    method gastar(monto) {
        deuda = deuda + monto
        dinero = dinero - monto
    }
}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0

    method venderEmpanada () {
        empanadasVendidas = empanadasVendidas + 1
        }

    method sueldo () {
        return 15 * empanadasVendidas
        }
    
    method acumularSueldo () {
        totalCobrado = totalCobrado + self.sueldo()
        empanadasVendidas = 0 // porque si cobro, empiza un nuevo mes y no vendio aun empanadas en ese mes nuevo 
    }

}

object gimenez {
    var fondo = 300000
    
    method fondo () {
        return fondo
    }
    method pagoEmpleado (empleado) {
        fondo = 300000 - empleado.sueldo()
    }

}





    






