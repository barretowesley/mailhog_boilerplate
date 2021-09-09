# mailhog boilerplate

Serviço de email para teste local

As configurações de envio de email ficam em config.json


### Comandos
Subir o mailhog
    
    docker-compose up -d --build 

Derrubar o mailhog
    
    docker-compose down

Caso precise mudar a senha da interface web (a senha default é 123 e user biribinha);
    
    docker exec -t mailhog /bin/sh -c "MailHog bcrypt 123"

Coloque a saida do comando acima no arquivo auth.file depois do nome_do_user:
    
    docker-compose up -d --build 

## Dependencias
- docker
    - https://docs.docker.com/engine/install/

- docker-compose
    - https://docs.docker.com/compose/install/