def facturas(cantidad,precioUnitario)
    subtotal=cantidad*precioUnitario
    preciodescuento = (subtotal)*0.03
    totaldescuento= (subtotal - preciodescuento)
    total = totaldescuento + totaldescuento*0.0825
    "******** FACTURA ********\n" +
    "Precio Unitario: $ #{precioUnitario} \n" +
    "Cantidad: #{cantidad} \n" +
    "Descuento: 3% \n" +
    "Impuesto: 8.25% \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
puts facturas(cantidad,precioUnitario)