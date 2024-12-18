//**************************************************************
// Archivo:    Programa1.as
// Proyecto:   Convertir temperatura de Celsius a Fahrenheit
// Autor:      [Kevin Omar Alvarez Hernandez]
// Fecha:      [05/11/2024]
// Descripción:
//             [Convertir temperatura de Celsius a Fahrenheit]
// 
// Derechos de autor © [2024] [Kevin Omar Alvarez Hernandez]. 
// * Todos los derechos reservados.
// * 
// 
// **************************************************************//


// 1. Temperature Conversion (Celsius to Fahrenheit)
// Formula: °F = (°C × 9/5) + 32
// Filename: Programa1
.data
    result: .skip 8         // Reserve space for result

.text
.global _start
_start:
    mov     x19, #25        // Celsius temperature (example: 25°C)
    
    // Multiply by 9
    mov     x20, #9
    mul     x19, x19, x20
    
    // Divide by 5
    mov     x20, #5
    udiv    x19, x19, x20
    
    // Add 32
    add     x19, x19, #32   // Result in Fahrenheit

    // Exit
    mov     x0, x19
    mov     x8, #93
    svc     #0