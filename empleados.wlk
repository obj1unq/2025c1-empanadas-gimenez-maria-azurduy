//Escribir aqui los objetos
object galvan {
  var sueldo = 15000
  var deuda = 0
  var dinero = 0
  
  method sueldo(_sueldo) { // para cambiar el sueldo de Galván //setter: cambia el valor del atributo
    sueldo = _sueldo
  }
  
  method sueldo() = sueldo // getter: devuelve un atributo

  method deuda() = deuda
  
  method gastar(monto) {
    deuda += monto // 
  }
  
  method cobrarSueldo() {
    if (sueldo >= deuda) {
      dinero = (dinero + sueldo) - deuda
      deuda = 0
    } else {
      deuda -= sueldo
    }
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalCobrado = 0
  var precioEmpanada = 15 // 
  
  method venderEmpanada() {
    empanadasVendidas += 1 //suma a las empanadas ya vendidas 
  }
  
  method sueldo() = precioEmpanada * empanadasVendidas
  
  method acumularSueldo() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
    // porque si cobro, empiza un nuevo mes y no vendio aun empanadas en ese mes nuevo 
  }
}

object gimenez {
  var fondo = 300000
  
  method fondo() = fondo
  
  method pagoEmpleado(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
}



    






