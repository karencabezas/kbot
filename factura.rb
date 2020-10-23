def facturas(cantidad)
    total= cantidad*10
	"******** FACTURA ********\n" +
	"Precio Unitario: $ 10 \n" +
	"Cantidad: #{cantidad} \n" +
    "Total: $ #{total} " 
end

cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
puts facturas(cantidad)