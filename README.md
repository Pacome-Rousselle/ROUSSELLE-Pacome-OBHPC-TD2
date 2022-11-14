## Automatisation :

    Afin de pouvoir répéter les mesures et rendre le procédé portable, la production de fichiers de performance et de leurs graphiques associés est automatisée au moyen de scripts bash, deux par sous-dossier, avec un script central dans le dossier parent :

    Les scripts run fixe la taille des matrices à multiplier et crée les fichiers de performance de chaque compilateur par versions (les flags d’optimisation ont leur propre fichier). Tous les lancements d’exécutables sont successivement affectés au coeur 1 via la commande taskset.

    Les scripts data crée les fichiers de performance pour chaque version avec grep et les place dans un sous-dossier dédié. Les fichiers .dat des compilateurs sont déplacés dans un autre sous-dossier dédié. Il utilise ensuite les scripts gnuplot présents dans le sous-dossier plot pour produire les graphiques correspondants à chaque fichier de performance, avant de les stocker dans le sous-dossier graphs.

    Le script central perf.sh rentre successivement dans chaque sous-dossier avant d’appeler leurs scripts run et data, ce après avoir fixé la fréquence du coeur 1 sur le gouverneur performance avec cpupower. La fréquence est fixée à nouveau avant chaque entrée dans un sous-dossier.

## Makefile :

    Les seuls ajouts au Makefile de chaque code consistent en l’ajout de quatre lignes de compilation, une pour chaque flag d’optimisation, suivi de la création de l’exécutable associé. Ainsi, compiler le code source de dgemm avec un flag O2 produit l’exécutable dgemmO2.

## Informations sur l’architecture cible :

    Les informations du hardware sur lequel les mesures ont été effectuées, prises à l’aide des commandes lscpu et cat sont stockées dans les fichiers texte cpuinfo, lscpu (question 0.1) et registers (question 0.2).