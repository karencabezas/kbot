class Factura
    def initialize(estado)
        @estado = estado
        @descuentos ={1000 => 3, 5000 => 5, 7000 => 7,10000 => 10, 50000 => 15}
    end

    def descuentos(subtotal)
        @tasadescuento = @descuentos[@descuentos.select{|monto,tasa| subtotal>=monto}.keys.max]
        return subtotal*@tasadescuento
    end

    def impuestos()
        impuestos = {
        "UT"  => 6.85,
        "CA" => 5.36}
        @tasaimpuesto = impuestos[@estado]
    end

    def facturas(cantidad,precioUnitario)
        subtotal=cantidad*precioUnitario
        preciodescuento = descuentos(subtotal)*0.01
        totaldescuento= (subtotal - preciodescuento)
        impuestos()
        total = totaldescuento + totaldescuento*@tasaimpuesto*0.01
        "******** FACTURA ********\n" +
        "Precio Unitario: $ #{precioUnitario} \n" +
        "Cantidad: #{cantidad} \n" +
        "Subtotal sin descuento: $ #{subtotal} \n" +
        "Descuento: #{@tasadescuento} % \n" +
        "Precio aplicando descuento: $ #{totaldescuento} \n" +
        "Impuesto: #{@tasaimpuesto} % \n" +
        "Total: $ #{total} " 
    end
end
cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i
estado = Factura.new(ARGV[2])
puts estado.facturas(cantidad,precioUnitario)