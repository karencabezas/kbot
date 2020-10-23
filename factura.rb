def facturas(cantidad)
    preciodescuento = (cantidad*10)*0.03
    total= cantidad*10 - preciodescuento
    "******** FACTURA ********\n" +
    "Precio Unitario: $ 10 \n" +
    "Cantidad: #{cantidad} \n" +
    "Descuento: 3% \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
puts facturas(cantidad)