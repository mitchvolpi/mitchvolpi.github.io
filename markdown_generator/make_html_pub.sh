#!/bin/bash 

CF=$PWD
echo $CF/_publications/plain_publication_list.html

cd /Users/mvolpi/Documents/admin_generic/perso/PublicationList/

htlatex plain_publication_list.tex
biber plain_publication_list
htlatex plain_publication_list.tex

mv ./plain_publication_list.html $CF/_publications/plain_publication_list.html

cd $CF