;;==========================================================================================
;;  SISTEMA EXPERTO PARA CONSULTAR PROBLEMAS CON MICROONDAS
;;En el siguiente sistema experto se realizará simular la elección de un problema con un
;;microondas y el sistema te dara una solución

;;Definimos un template para todos nuestros problemas
(deftemplate problema-microondas
                (slot codigo) )

;;Definimos los problemas del microondas sin calentar
(defrule microondas1-0
            (problema-microondas
                    (codigo Sdiodo) )
            => (printout t crlf "El diodo convierte la salida de energía de A / C del transformador a D / C, duplicando el voltaje a casi 5,000 voltios. Este alto voltaje alimenta al magnetrón para calentar la comida. Si el diodo se quema, el magnetrón no recibirá suficiente voltaje para funcionar, evitando que el microondas se caliente. Cuando el diodo falla, a menudo se quema visiblemente. Inspeccione el diodo y si el diodo está quemado, reemplácelo. Si la inspección del diodo no es concluyente, pruébelo con un multímetro que use una batería de 9 voltioso coloque una batería de 9 voltios en serie con el diodo. Cuando se invierten los cables, el diodo solo debe tener continuidad en una dirección. (Advertencia: el horno de microondas puede almacenar una cantidad letal de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desconectado. Debido al alto voltaje de funcionamiento y la posibilidad de descarga eléctrica, es extremadamente peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el diodo)." crlf crlf) )

(defrule microondas1-1
            (problema-microondas
                    (codigo SintrPuerta) )
            => (printout t crlf "La mayoría de las microondas tienen interruptores de tres o cuatro puertas. Cuando la puerta del microondas se cierra, los interruptores de la puerta actúan en secuencia para garantizar que la puerta se cierre correctamente. Si alguno de los interruptores de la puerta falla, el microondas no arrancará ni se calentará. Para determinar si alguno de los interruptores de la puerta está defectuoso, use un multímetro para probar la continuidad de cada uno de los interruptores. Si alguno de los interruptores de la puerta no tiene continuidad, reemplácelo. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en sucondensador de alto voltaje, incluso después de que el horno de microondas se haya desconectado. Debido al potencial de descarga eléctrica, es extremadamente peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar un interruptor de puerta)." crlf crlf) )

(defrule microondas1-2
            (problema-microondas
                    (codigo Smagnetron) )
            => (printout t crlf "El magnetrón utiliza corriente continua de alto voltaje y alta corriente para generar la frecuencia de microondas que cocina los alimentos. Si el magnetrón se quema, el microondas no se calentará. El magnetrón no es reparable; si el magnetrón se quema, debe reemplazarlo. (Advertencia: el horno de microondas puede almacenar una cantidad letal de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desenchufado. Debido al alto voltaje de funcionamiento y la posibilidad de descarga eléctrica, es extremadamente peligrosoReemplace los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el magnetrón)." crlf crlf) )

(defrule microondas1-3
            (problema-microondas
                    (codigo ScondAlto) )
            => (printout t crlf "El condensador de alto voltaje funciona con el diodo de alto voltaje para convertir la salida del transformador a voltaje de CC y duplicar el voltaje de salida. Si el condensador se quema, todo el circuito de alto voltaje dejará de funcionar correctamente y el microondas no se calentará. Para determinar si el capacitor de alto voltaje está defectuoso, use un medidor VOM con capacidad de prueba de capacitancia. ("+"Advertencia: el horno microondas puede almacenar una cantidad letal de electricidad en su condensador de alto voltaje, incluso después deEl horno microondas ha sido desconectado. Debido al alto voltaje de funcionamiento y la posibilidad de descarga eléctrica, es extremadamente peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el condensador de alto voltaje)." crlf crlf) )

(defrule microondas1-4
                (problema-microondas
                        (codigo StranfAltoV) )
                => (printout t crlf "Los hornos de microondas producen un voltaje muy alto para alimentar la antena de magnetrón, que emite la energía que cocina los alimentos. Cuando falla un transformador de alto voltaje, generalmente se formará un arco y tendrá un olor a quemado. (Advertencia: el horno de microondas puede almacenar una cantidad letal de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desconectado. Debido al alto voltaje de funcionamiento y la posibilidad de descarga eléctrica, es extremadamente peligroso reemplazar los componentes electrónicos enun microondas. Solo un técnico con licencia debe reemplazar el transformador de alto voltaje)." crlf crlf) )

(defrule microondas1-5
                (problema-microondas
                        (codigo SfusTerm) )
                => (printout t crlf "El fusible térmico corta la energía al microondas si el microondas se sobrecalienta. Para determinar si el fusible térmico se ha fundido, use un multímetro para probar su continuidad. Si el fusible no tiene continuidad, reemplácelo. El fusible térmico no se puede reiniciar; si el fusible está fundido, debe reemplazarse. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desconectado. Debido al potencial de descarga eléctrica, es extremadamentepeligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el fusible térmico)." crlf crlf) )

(defrule microondas1-6
                (problema-microondas
                        (codigo Stermoprotector) )
                => (printout t crlf "El termoprotector corta la energía del microondas si se sobrecalienta. Si el termoprotector se dispara, el microondas no arrancará ni se calentará. Para determinar si el termoprotector tiene fallas, use un multímetro para probar su continuidad. Si el termoprotector no tiene continuidad, reemplácelo. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desenchufado. Debido a la posibilidad de descarga eléctrica, es extremadamente peligrosoEs necesario reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el termoprotector." crlf crlf) )

(defrule microondas1-7
                (problema-microondas
                        (codigo StabCtrlPrin) )
                => (printout t crlf "El tablero de control principal puede estar defectuoso. Sin embargo, esto no suele ser el caso. Los paneles de control a menudo se diagnostican erróneamente; antes de reemplazar el panel de control, verifique todas las partes defectuosas más comunes. Si ha determinado que todos los demás componentes funcionan correctamente, reemplace la placa de control principal. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desenchufado. Debido al potencial de descarga eléctricack, es extremadamente peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el tablero de control principal)." crlf crlf) )

;;Definimos los problemas del microondas sin rotar la tabla
(defrule microondas2-0
            (problema-microondas
                    (codigo TmtrPlGi) )
            => (printout t crlf "Use un multímetro para probar la continuidad del motor. Si el motor de la plataforma giratoria no tiene continuidad, reemplácelo." crlf crlf) )

(defrule microondas2-1
            (problema-microondas
                    (codigo TacopUBanV) )
            => (printout t crlf "Si el plato giratorio de microondas no gira, el acoplamiento de la unidad de la bandeja de vidrio podría romperse o despojarse. Tire suavemente del acoplamiento del eje del motor de accionamiento para inspeccionar el acoplamiento de accionamiento en busca de daños." crlf crlf) )

(defrule microondas2-2
            (problema-microondas
                    (codigo TsopBanVid) )
            => (printout t crlf "Si el plato giratorio de microondas no gira, el soporte de la bandeja de vidrio podría romperse o despojarse. Tire suavemente del soporte del eje del motor de accionamiento para inspeccionar el soporte de la bandeja en busca de daños." crlf crlf) )

(defrule microondas2-3
            (problema-microondas
                    (codigo TconUsuTabVis) )
            => (printout t crlf "El control de usuario y la placa de visualización pueden estar defectuosos. Sin embargo, es mucho más probable que el motor de la plataforma giratoria tenga la culpa. Primero, pruebe la potencia entrante al motor de la plataforma giratoria. Si el motor no recibe energía, el control del usuario y la placa de visualización pueden estar defectuosos. Si el control de usuario y la placa de visualización están defectuosos, reemplácelos." crlf crlf) )

(defrule microondas2-4
                (problema-microondas
                        (codigo Ttouchpad) )
                => (printout t crlf "El panel táctil puede estar defectuoso. Sin embargo, es mucho más probable que el motor de la plataforma giratoria tenga la culpa. Primero, pruebe el motor de la plataforma giratoria. Si el motor no está defectuoso, es posible que el panel táctil esté defectuoso. Para determinar si el panel táctil está defectuoso, intente presionar cada uno de los botones del panel de control. Si algunos de los botones responden correctamente mientras que otros no, reemplace el panel táctil." crlf crlf) )

(defrule microondas2-5
                (problema-microondas
                        (codigo Tpaneles) )
                => (printout t crlf "El panel táctil y el panel de control pueden estar defectuosos. Sin embargo, es mucho más probable que el motor de la plataforma giratoria tenga la culpa. Primero, pruebe el motor de la plataforma giratoria. Si el motor no está defectuoso, es posible que el panel táctil y el panel de control estén defectuosos. Para determinar si el panel táctil y el panel de control están defectuosos, intente presionar cada uno de los botones en el panel de control. Si algunos de los botones responden correctamente mientras que otros no, reemplace el panel táctil y el panel de control." crlf crlf) )

(defrule microondas2-6
                (problema-microondas
                        (codigo TtabCtrlPrin) )
                => (printout t crlf "El control principal puede estar defectuoso. Sin embargo, es mucho más probable que el motor de la plataforma giratoria tenga la culpa. Primero, verifique la potencia de entrada al motor de la plataforma giratoria. Si el motor de la plataforma giratoria no recibe energía, la placa de control principal puede tener la culpa." crlf crlf) )

;;Definimos los problemas del microondas sin funcionar
(defrule microondas3-0
            (problema-microondas
                    (codigo NfusLin) )
            => (printout t crlf "Si pasa demasiada corriente a través de los circuitos de microondas, se fundirá el fusible de línea. Si se funde el fusible de línea, el microondas no arrancará. Para determinar si el fusible de la línea tiene fallas, use un multímetro para probar su continuidad. Si el fusible no tiene continuidad, reemplácelo. Además, debe investigar y resolver el problema que causó la explosión del fusible. Si no resuelve el problema subyacente, el nuevo fusible también se fundirá. (Precaución: el horno de microondas puede almacenar miles de voltios de electriqueza en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desconectado. Debido al potencial de descarga eléctrica, es extremadamente peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el fusible de línea)." crlf crlf) )

(defrule microondas3-1
            (problema-microondas
                    (codigo NtabCtrlPrin) )
            => (printout t crlf "El tablero de control principal puede estar defectuoso. Sin embargo, esto no suele ser el caso. Los paneles de control a menudo se diagnostican erróneamente: verifique todas las partes defectuosas más comunes. Si ha determinado que todos los demás componentes funcionan correctamente, reemplace la placa de control principal. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desenchufado. Debido a la posibilidad de descarga eléctrica, es extremadamente peligroso responderAce los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el tablero de control principal)." crlf crlf) )

(defrule microondas3-2
            (problema-microondas
                    (codigo NfusTerm) )
            => (printout t crlf "El fusible térmico corta la energía al microondas si el microondas se sobrecalienta. Para determinar si el fusible térmico se ha fundido, use un multímetro para probar su continuidad. Si el fusible no tiene continuidad, reemplácelo. El fusible térmico no se puede reiniciar; si el fusible está fundido, debe reemplazarse. (Precaución: el horno de microondas puede almacenar miles de voltios de electricidad en su condensador de alto voltaje, incluso después de que el horno de microondas se haya desenchufado. Debido al potencial de descarga eléctrica, es extremoy peligroso reemplazar los componentes electrónicos en un microondas. Solo un técnico con licencia debe reemplazar el fusible térmico)." crlf crlf) )

(defrule microondas3-3
            (problema-microondas
                    (codigo Ntermprot) )
            => (printout t crlf "Si el microondas se sobrecalienta, el termoprotector se dispara para cortar el voltaje al microondas. Para determinar si el termoprotector tiene fallas, use un multímetro para probar su continuidad. Si el termoprotector no tiene continuidad y no se puede restablecer, reemplácelo." crlf crlf) )

(defrule microondas3-4
            (problema-microondas
                    (codigo Ntermstato) )
            => (printout t crlf "Si el microondas funciona durante unos segundos y se detiene, el termostato podría estar defectuoso. Vea nuestro video sobre pruebas de termostatos." crlf crlf) )
