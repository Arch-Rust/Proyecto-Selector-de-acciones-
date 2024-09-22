def mejor_momento_para_invertir(precios)
  mayor_ganancia = 0
  dia_compra = 0
  dia_venta = 1

  i = 0
  while i < precios.length - 1
    j = i + 1
    while j < precios.length
      ganancia = precios[j] - precios[i]
      if ganancia > mayor_ganancia
        mayor_ganancia = ganancia
        dia_compra = i
        dia_venta = j
      end
      j += 1
    end
    i += 1
  end

  [dia_compra, dia_venta]
end

# Ejemplo de uso:
precios_acciones = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts "#{mejor_momento_para_invertir(precios_acciones)}"