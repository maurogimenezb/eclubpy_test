# Generación de APK Android - eClub Test
Este repositorio contiene los archivos y configuraciones necesarias para generar una APK Android a partir de mi proyecto Flutter.

<br />
<div>
  &emsp;&emsp;&emsp;
  <img src="https://github.com/maurogimenezb/eclubpy_test/blob/main/images/Screenshot_1710305805.png" alt="Light theme" width="300">
  &emsp;&emsp;&emsp;&emsp;
  <img src="https://github.com/maurogimenezb/eclubpy_test/blob/main/images/Screenshot_1710305815.png" alt="Dark theme" width="300">  
   &emsp;&emsp;&emsp;&emsp;
  <img src="https://github.com/maurogimenezb/eclubpy_test/blob/main/images/Screenshot_1710305825.png" alt="Dark theme" width="300">  
   &emsp;&emsp;&emsp;&emsp;
  <img src="https://github.com/maurogimenezb/eclubpy_test/blob/main/images/Screenshot_1710305842.png" alt="Dark theme" width="300">  
   &emsp;&emsp;&emsp;&emsp;
  <img src="https://github.com/maurogimenezb/eclubpy_test/blob/main/images/Screenshot_1710305854.png" alt="Dark theme" width="300">  
</div>
<br />

# Requisitos Previos

Tener Flutter y Visual Studio Code instalados en tu sistema.

# Pasos para Generar la APK

Primero clonar el repositorio del proyecto 

```
git clone https://github.com/maurogimenezb/eclubpy_test.git
```

Una vez que tengas el proyecto hay que descargar todas las depedencias necesarias, esto ya dentro del proyecto

```
flutter pub get
```

Luego de eso podes generar la apk 

```
flutter build apk
```

Esto generará un archivo APK en la ruta build/app/outputs/flutter-apk/app-release.apk dentro del proyecto

# Instalar la APK

- Conecta tu dispositivo Android al ordenador mediante un cable USB.
- Abre Android Studio y selecciona tu dispositivo como destino de depuración.
- Arrastra y suelta el archivo APK generado en tu dispositivo.
- En tu dispositivo, habilita la instalación de aplicaciones desde fuentes desconocidas si aún no lo has hecho.
- Abre el archivo APK en tu dispositivo y sigue las instrucciones para instalar la aplicación.