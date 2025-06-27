Pour deployer le token j'ai eut besoin de :

Metamask : 
Une extention afin de se connecter depuis ChainIDE ou de valider les transactions.
Depuis le site Metamask j'ai du creer un portefeuille et y choisir le reseau BnB Smart chain TestNet 
Nom du réseau : BNB Smart Chain Testnet  
Nouvelle URL RPC : https://data-seed-prebsc-1-s1.binance.org:8545/  
ID de chaîne : 97  
Symbole : tBNB  
URL du scanner : https://testnet.bscscan.com
Afin d'avoir des fonds pour realiser des transactions blockchain, j'ai rejoin le discord officiel de BnB Chain et ait utiliser le faucet afin de recevoir des tBNB.


ChainIDE:
Creer un compte, et y creer un nouveau projet en specifiant bien avec quels blockchain et quel type de contrat ou de template ou souhaite publier, Ici BNB CHAIN et BEP-20
Enfin, sur la page du projet, y modifier le code dans le format de file deja creer par chainIDE, modifier le nom du token, y rajouter les fonctions que l'on souhaite utiliser, une page HTML pour ceux qui le souhaite ... 
Bien connecter son ChainIDE a nos portefeuille Metamask grace a son extention. (Monnaie indispensable pour le deployement il me semble (Pour les transaction c'est sur))

Enfin, il ne reste plus qu'a compiler (En choisant bien la bonne version de compilateur (A voir en haut du code)) et le deployer (Outils sur la droite de la page de ChainIDE)

Pour interagir, j'ai fais le choix d'utiliser directement les outils integres de ChainIDE car ils sont parfait pour simplement dev, test et debug.

Les verifications de transactions peuvent se voir de multiples facon  
Depuis le compilateur avec ses retours d'erreur et ses reussites
Depuis L'extention Metamask en y ajoutant bien l'adresse du contrat deployes. 
Depuis testnet Bscscan soit en utilisant l'adresse d'un des participant a la transaction, l'adresse de la monnaie, ou celle de la transaction.
https://testnet.bscscan.com/

 



