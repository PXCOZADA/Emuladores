; ---------------------------------------------
; Script AutoHotkey para automatizar dxwsetup.exe
; ---------------------------------------------

; Ruta completa al dxwsetup.exe
dxPath := "C:\Users\Ryzen\Desktop\Only Red\Requerimientos\Requerimientos Only Red Cheats\Requisitos Visuales DirectX\dxwsetup.exe"

; Ejecutar dxwsetup.exe
Run, %dxPath%, , , pid

; Esperar que aparezca la ventana principal del instalador
WinWait, Microsoft DirectX End-User Runtime Web Installer
WinActivate

Sleep, 1000  ; Pequeña pausa para asegurar que cargue

; 1️⃣ Aceptar contrato
ControlClick, Button1, Microsoft DirectX End-User Runtime Web Installer ; Boton "Acepto el contrato"
Sleep, 500
ControlClick, Button2, Microsoft DirectX End-User Runtime Web Installer ; Boton "Siguiente"
Sleep, 1000

; 2️⃣ Desmarcar barra de Bing si aparece
; Nota: La barra puede ser un checkbox, se intenta desmarcar
Control, UnCheck, Button1, Microsoft DirectX End-User Runtime Web Installer
Sleep, 500
ControlClick, Button2, Microsoft DirectX End-User Runtime Web Installer ; Boton "Siguiente"
Sleep, 2000

; 3️⃣ Ignorar mensaje de error de descarga
If WinExist("Error de instalación de DirectX") {
    WinActivate
    Sleep, 500
    ControlClick, Button1, Error de instalación de DirectX ; Boton "Aceptar"
    Sleep, 500
}

; 4️⃣ Finalizar instalación
ControlClick, Button3, Microsoft DirectX End-User Runtime Web Installer ; Boton "Finalizar"

ExitApp