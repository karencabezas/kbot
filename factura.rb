def facturas(cantidad,precioUnitario,p_descuento)
    subtotal=cantidad*precioUnitario
    preciodescuento = (subtotal)*p_descuento*0.01
    totaldescuento= (subtotal - preciodescuento)
    total = totaldescuento + totaldescuento*0.0825
    "******** FACTURA ********\n" +
    "Precio Unitario: $ #{precioUnitario} \n" +
    "Cantidad: #{cantidad} \n" +
    "Descuento: #{p_descuento}% \n" +
    "Impuesto: 8.25% \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
p_descuento = ARGV[2].to_i
puts facturas(cantidad,precioUnitario,p_descuento)