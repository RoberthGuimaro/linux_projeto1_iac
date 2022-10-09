#!/bin/bash

echo "Criando usuários do sistema...."

useradd quest10 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd 054494Rpg@)
passwd quest10 -e

useradd quest11 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd 054494Rpg@)
passwd quest11 -e

useradd quest12 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd 054494Rpg@)
passwd quest12 -e

useradd quest13 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd 054494Rpg@)
passwd quest13 -e


echo "Finalizado!!"
