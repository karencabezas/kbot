def descuentos(subtotal)
    @descuentos ={1000 => 3, 5000 => 5, 7000 => 7,10000 => 10, 50000 => 15}
    @tasadescuento = @descuentos[@descuentos.select{|monto,tasa| subtotal>=monto}.keys.max]
    return subtotal*@tasadescuento
end

def facturas(cantidad,precioUnitario,p_impuesto)
    subtotal=cantidad*precioUnitario
    preciodescuento = descuentos(subtotal)*0.01
    totaldescuento= (subtotal - preciodescuento)
    total = totaldescuento + totaldescuento*p_impuesto*0.01
    "******** FACTURA ********\n" +
    "Precio Unitario: $ #{precioUnitario} \n" +
    "Cantidad: #{cantidad} \n" +
    "Descuento: #{@tasadescuento} % \n" +
    "Impuesto: #{p_impuesto}% \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
p_impuesto = ARGV[2].to_i
puts facturas(cantidad,precioUnitario,p_impuesto)