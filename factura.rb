def descuentos(subtotal)
    @descuentos ={1000 => 3}
    @tasadescuento = @descuentos[@descuentos.select{|monto,tasa| subtotal>=monto}.keys.max]
    return subtotal*@tasadescuento
end

def facturas(cantidad,precioUnitario)
    subtotal=cantidad*precioUnitario
    preciodescuento = descuentos(subtotal)*0.01
    totaldescuento= (subtotal - preciodescuento)
    total = totaldescuento + totaldescuento*0.0825
    "******** FACTURA ********\n" +
    "Precio Unitario: $ #{precioUnitario} \n" +
    "Cantidad: #{cantidad} \n" +
    "Descuento: #{@tasadescuento} % \n" +
    "Impuesto: 8.25% \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
puts facturas(cantidad,precioUnitario)