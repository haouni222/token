Pour utiliser le token, vous devez disposer d'un (Ou ici pour faire les demonstrations plusieurs) portefeuille Metamask disposant de monnaie pour effectuer des transferts.

Le token est lui construit a partir des standards ERC20 avec l'addon BEP20 Et les fonctionalites de securites d'OpenZepplin (Permetant la gestion des droits et la securite)

Le contrat est plutot simple, deux roles sont disponible en plus du role d'OWNER (compte ayant deployer le contrat) qui sont le MINTER ROLE et le BURNER ROLE

Je n'ai implementer que de tres simple fonctions pour demontrer que le token fonctionne

GrantRoleTo Qui permet d'aujouter un role a un user. (Adresse user, HashRole(recuperable via les fonctions GET qui sont predevelopper par les standards ERC20))

De la meme facon RevokeRoleFrom (Adresse user, HashRole via getter functions)

Burn Function qui demande evidement le role de BURNER (A quel adresse souhaitons nous bruler des tokens et combiens de token ?)

Mint Function qui demande le role de MINTER (A quel adresse/beneficiaire souhaitons nous creer des nouveaux token et pour quel valeurs ?)

Enfin les standards ERC20 et BEP20 implementes des fonctions directement. 
Je n'utilise que Transfert et les getters mais les autres sont pour la plupart Name explecit. 