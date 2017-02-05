(*ALGORITHME : Bataille navale
//BUT : reproduire la bataille navale
//ENTREE : les zones visées
//SORTIE : le plateau et si oui ou non l'adversaire est touché

const
max <- 10 : entier

type cells = enregistrement
	x, y : entier

type bateau = enregistrement
	shipT1 : tableau[1..5] de cells
	shipT2 : tableau[1,1..5] de cells

type flotte = enregistrement
	tabFlotte : tableau(1..max) de bateau

type
	plateau : tableau[0..11,0..11] de chaine

procedure plateauUn(joueurUn : plateau)//creation des deux plateaux
	var : i, j : entier
	debut
		pour i <- 0 A 11 FAIRE
			pour j <- 0 A 11 FAIRE
				si (i = 0) OU (j = 11) ALORS
					joueurUn[i,j] <- chr(ord(@)+i)
				SINON
					joueurUn[i,j] <-"."
					SI (j = 0) OU (i=11) ALORS
						joueurUn[i,j] <- chr(ord(0)+j)
					FINSI
				FINSI
			FINPOUR
		FINPOUR
	fin

procedure plateauDeux(joueurDeux : plateau)
	var : i, j : entier
	debut
		pour i <- 0 A 11 FAIRE
			pour j <- 0 A 11 FAIRE
				si (i = 0) OU (j = 11) ALORS
					joueurDeux[i,j] <- chr(ord(@)+i)
				SINON
					joueurDeux[i,j] <- .
					SI (j = 0) OU (i=11) ALORS
						joueurDeux[i,j] <- chr(ord(0)+j)
					FINSI
				FINSI
			FINPOUR
		FINPOUR
	fin

procedure afficherP1(joueurUn : plateau)//affichage des 2 joueurs
	var : i, j : entier
	debut
		ECRIRE joueurUn[i,j]
	fin

procedure afficherP2(joueurDeux : plateau)
	var : i,j : entier
	debut
		ECRIRE joueurDeux[i,j]
	fin
procedure creer_bateau1 (b1 : bateau)//creation des 10 bateaux
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 2 FAIRE
			b1[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 2 FAIRE
			b1[i,j].shipT2 <-"O"
	fin

procedure creer_bateau2 (b2 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 3 FAIRE
			b2[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 3 FAIRE
			b2[i,j].shipT2 <-"O"
	fin
procedure creer_bateau3 (b3 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 3 FAIRE
			b3[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 3 FAIRE
			b3[i,j].shipT2 <-"O"
	fin

procedure creer_bateau4 (b4 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 4 FAIRE
			b4[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 4 FAIRE
			b4[i,j].shipT2 <-"O"
	fin

procedure creer_bateau5 (b5 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 5 FAIRE
			b5[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 5 FAIRE
			b5[i,j].shipT2 <-"O"
	fin

procedure creer_bateau6 (b6 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 2 FAIRE
			b6[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 2 FAIRE
			b6[i,j].shipT2 <-"O"
	fin

procedure creer_bateau7 (b7 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 3 FAIRE
			b7[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 3 FAIRE
			b7[i,j].shipT2 <-"O"
	fin

procedure creer_bateau8 (b8 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 3 FAIRE
			b8[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 3 FAIRE
			b8[i,j].shipT2 <-"O"
	fin

procedure creer_bateau9 (b9 : bateau)
	var : i,j, a : entier
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 4 FAIRE
			b9[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 4 FAIRE
			b9[i,j].shipT2 <-"O"
	fin

procedure creer_bateau10 (b10 : bateau)
	var : i,j, a : ENTIER
	debut
		randomize
		a<-0
	a<- random(2)
	si a = 0 alors
		pour i <- 1 A 5 FAIRE
			b10[i,j].shipT1 <- "O"
	si a = 1 alors
		pour j <- 1 A 5 FAIRE
			b10[i,j].shipT2 <-"O"
	fin

prodecure place_bateaux (joueurUn, joueurDeux : plateau; b1, b2, b3, b4, b5, b6, b7, b8, b9, b10: bateau)
	var : i,j, a :entier
	debut
		a <- 0
		PENDANT QUE a <> 10 FAIRE//placement aléatoire des bateaux
			REPETER
			randomize
			i <- random(10)+1
			j <- random(10)+1
			JUSQU'A joueurUn[i,j] = "."
			a <- a +1
			si a = 1 alors
				joueurUn <- b1[i,j]
			finsi
			si a = 2 alors
				joueurUn <- b2[i,j]
			finsi
			si a = 3 alors
				joueurUn <- b3[i,j]
			finsi
			si a = 4 alors
				joueurUn <- b4[i,j]
			finsi
			si a = 5 alors
				joueurUn <- b5[i,j]
			finsi
			si a = 6 alors
				joueurDeux <- b6[i,j]
			finsi
			si a = 7 alors
				joueurDeux <- b7[i,j]
			finsi
			si a = 8 alors
				joueurDeux <- b8[i,j]
			finsi
			si a = 9 alors
				joueurDeux <- b9[i,j]
			finsi
			si a = 10 alors
				joueurDeux <- b10[i,j]
			finsi
		finpendant
	fin

fonction verif(joueurUn, joueurDeux : plateau)// verifie si la case est touchée
var : i,j : entier
debut
	si joueurUn = O alors
		verif <- TRUE
	SINON
		verif <- FALSE
	finsi
fin

procedure jeu1(joueurUn, joueurDeux : plateau; b1, b2, b3, b4, b5, b6, b7, b8, b9, b10 : bateau)
	var : i,j : entier
	debut
		ECRIRE "Joueur un, à vous!"//partie du joueur 1
		LIRE i, j
		verif(joueurUn, joueurDeux : plateau)
		si verif = TRUE ALORS
			joueurUn[i,j] <- "X"
			ECRIRE "Touché!"
		SINON
			ECRIRE "Raté!"
	fin

procedure jeu2(joueurUn, joueurDeux : plateau; b1, b2, b3, b4, b5, b6, b7, b8, b9, b10 : bateau)
	var : i,j : entier
	debut
		ECRIRE "Joueur deux, à vous!"//partie du joueur 2
		LIRE i, j
		verif(joueurUn, joueurDeux : plateau)
		si verif = TRUE ALORS
			joueurDeux[i,j] <- "X"
			ECRIRE "Touché!"
		SINON
			ECRIRE "Raté!"
	fin


var i, j, a, compteur1, compteur2 : ENTIER
JoueurUn, JoueurDeux :plateau
b1, b2, b3, b4, b5, b6, b7, b8, b9, b10 : bateau

DEBUT
	PlateauUn(JoueurUn)
	PlateauDeux(JoueurDeux)
	AfficherP1(JoueurUn)
	AfficherP2(JoueurDeux)
	Creer_bateau1(b1)
	creer_bateau2(b2)
	creer_bateau3(b3)
	creer_bateau4(b4)
	creer_bateau5(b5)
	creer_bateau6(b6)
	creer_bateau7(b7)
	creer_bateau8(b8)
	creer_bateau9(b9)
	creer_bateau10(b10)
	place_bateaux(joueurUn, joueurDeux, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10)
	répéter
	compteur1<- 0
	compteur2<- 0
	jeu1
	jeu2
	Pour i <- 1 A 10 faire
		pour j <- 1 A 10 faire
			si joueurUn = X alors
				compteur1 <- compteur1 +1
			si joueurDeux = X alors
				compteur2 <- compteur2 +1
	JUSQU'A (compteur1 = 18) OU (compteur2 = 18)
FIN
*)
