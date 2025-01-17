# Sistema C2

Desenvolvido para centralizar o controle e gerenciamento dos veículos oficiais de um órgão público. O C2 é um sistema web desenvolvido na linguagem PHP com design responsivo para suportar dispositivos móveis.

# Uso

1. Certifique-se de ter o Git instalado em sua máquina. Você pode baixar e instalar o Git a partir do site oficial: [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

2. Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina. Você pode baixar e instalar a partir do site oficial: 
- [Docker](https://docs.docker.com/get-docker/).
- [Docker Compose](https://docs.docker.com/compose/install/).

3. Instale o `Composer`. Site oficial [Composer](https://getcomposer.org/doc/00-intro.md)

4. Abra o terminal ou prompt de comando e navegue até um diretório de sua prefrência. Substitua `suapasta` pelo nome do seu diretório:
   ```bash
   cd suapasta
   ```

5.Clone este repositório para sua máquina local através do comando abaixo:
```bash
git clone https://github.com/marcelobuzzetti/Controle.git
```

6. Navegue até o diretório que você acabou de clonar.

   ```bash
    cd Controle
   ```

7. Instale os pacotes:
    ```bash
    composer install --ignore-platform-reqs
    ```

8. Execute o Docker Compose:
    ```bash
    docker-compose -p controle up -d
    ```

9. Abra seu navegador e visite `http://localhost`.

10. O Usuário e Senha padrões do sistema são `admin`.

11. Para colocar uma imagem dentro do QRCode, deve-se salvar uma imagem, no formato PNG, com o nome brasao.png, na pasta libs/imagens

12. Para parar o sistema:
    ```bash
    docker-compose -p controle stop
    ```
    
13. Parar e remover os container :
    ```bash
    docker-compose -p controle down
    ```