# Procesamiento de señales, Fundamentos

Maestria en sistemas embebidos

# Compilación y Descarga de FW a EDU-CIAA-NXP con Docker
1. Instalar [docker][docker] si no está instalado
1. Asegurarse de que esté correctamente instalado:
    ```sh
    docker --version
    ```
1. Si reporta que el usuario no tiene suficientes permisos, revisar esta [guía][sudoless]
1. Utilizar la herramienta `ciaa-tools`:
    ```sh
    ./ciaa-tools --build --flash ./clases/1_clase/ciaa/psf1/
    ```

[docker]: https://get.docker.com/
[sudoless]: https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user