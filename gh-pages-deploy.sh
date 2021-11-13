#!/bin/bash

# Este script fue obtenido de: https://sangsoonam.github.io/2019/02/08/using-git-worktree-to-deploy-github-pages.html 

DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`


echo -e "\033[0;32mUpdating main...\033[0m"
git add --all
git commit -m "Actualización automática del $DIA a las $HORA"
git push origin

