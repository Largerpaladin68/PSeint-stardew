Algoritmo stardew_valley
	Definir time, maxTime, opcionesLugares, opcionesAcciones, salida, opciones2 Como Entero
	Definir madera, hierro, piedra, semillas, fruta Como Entero
	Definir energia Como Real
	Definir cofre, espacio Como Entero
	Definir hachaH, picoH, hachaP, picoP, huerta1 Como Logico
	definir nombre, sexo, mensaje_bienvenida Como Caracter
	
	Definir arbol Como cadena
	definir casa como cadena
	Definir  huerta como cadena
	definir huertasiembra como cadena
	definir cosecha como cadena
	definir i,j, respuesta  Como entero
	definir mina, minaMinada como cadena
	definir recoleccion, recolectado, personaje, rip como cadena
	
	espacio <- 5
	Dimension cofre[espacio]
	energia <- 1
	time <- 1
	maxTime <- 9
	madera <- 0
	hierro <- 0
	semillas <- 0
	fruta <- 0
	piedra <- 0
	hachaH <- Falso
	hachaP <- Falso
	picoH <- Falso
	picoP <- Falso
	huerta1 <- Falso
	
	
	Dimension arbol[9]
	arbol[1] <-"          _-_"  
	arbol[2] <-"       /~~   ~~\"  
	arbol[3] <-"    /~~         ~~\" 
	arbol[4] <-"   {               }"
	arbol[5] <-"    \  _-     -_  /"  
	arbol[6] <-"     ~   \\ //  ~"  
	arbol[7] <-"    - -   | | _- _" 
	arbol[8] <-"     _ -  | |   -_"
	arbol[9] <-"         // \\"   
	
	Dimension casa[15]
	casa[1]<-"   {   }"
	casa[2]<-"   {   }    _____"
	casa[3]<-"   {   }   /     \"
	casa[4]<-"  |_   _| /       \"
	casa[5]<-"    | |  /_________\"                                     
	casa[6]<-"    | | //   _  _   \\"
	casa[7]<-"    | |//  _| |_| |_  \\              _-_                _-_" 
	casa[8]<-"    | //  | |_____| |  \\          /~~   ~~\          /~~   ~~\"  
	casa[9]<-"    |//_________________\\      /~~         ~~\    /~~         ~~\"
	casa[10]<-"   /  ______| |______   \     {               }  {               }"    
	casa[11]<-"  /  |             |  \  \     \  _-     -_  /    \  _-     -_  /"
	casa[12]<-" /   |  _________  |   \  \     ~   \\ //  ~       ~   \\ //   ~ "
	casa[13]<-"|    |  |       |  |    |  |  _- -   | | _- _    _- -   | | _- _"
	casa[14]<-"|    |  |   o   |  |    |  |    _ -  | |   -_      _ -  | |   -_"
	casa[15]<-"|____|__|_______|__|____|__|        // \\              // \\  "
	
	
	Dimension huerta[15]
	
	huerta[1]<-"    {   }"
	huerta[2]<-"    {   }     _____"
	huerta[3]<-"    {   }    /     \"
	huerta[4]<-"   |_   _|  /       \"
	huerta[5]<-"     | |   /_________\"                                     
	huerta[6]<-"     | |  //   _  _   \\"
	huerta[7]<-"     | |//  _| |_| |_  \\              _-_                _-_          \\       ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~     \\  "
	huerta[8]<-"     | //  | |_____| |  \\          /~~   ~~\          /~~   ~~\        \\                                                                             \\ "
	huerta[9]<-"     |//_________________\\      /~~         ~~\    /~~         ~~\      \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~      \\  "
	huerta[10]<-"     /  ______| |______   \     {               }  {               }      \\                                                                             \\"
	huerta[11]<-"    /  |             |  \  \     \  _-     -_  /    \  _-     -_  /        \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\"
	huerta[12]<-"   /   |  _________  |   \  \     ~   \\ //  ~       ~   \\ //   ~          \\                                                                             \\"
	huerta[13]<-"  |    |  |       |  |    |  |  _- -   | | _- _    _- -   | | _- _           \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\ "
	huerta[14]<-"  |    |  |   o   |  |    |  |    _ -  | |   -_      _ -  | |   -_            \\                                                                             \\"
	huerta[15]<-"  |____|__|_______|__|____|__|        // \\              // \\                 \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\"
	
	Dimension huertasiembra[15]
	
	huertasiembra[1]<-"    {   }"
	huertasiembra[2]<-"    {   }     _____"
	huertasiembra[3]<-"    {   }    /     \"
	huertasiembra[4]<-"   |_   _|  /       \"
	huertasiembra[5]<-"     | |   /_________\"                                     
	huertasiembra[6]<-"     | |  //   _  _   \\"
	huertasiembra[7]<-"     | |//  _| |_| |_  \\              _-_                _-_          \\       ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~     \\  "
	huertasiembra[8]<-"     | //  | |_____| |  \\          /~~   ~~\          /~~   ~~\        \\           ^      ^       ^       ^      ^       ^       ^         ^         \\ "
	huertasiembra[9]<-"     |//_________________\\      /~~         ~~\    /~~         ~~\      \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~      \\  "
	huertasiembra[10]<-"     /  ______| |______   \     {               }  {               }      \\          ^      ^       ^       ^      ^       ^       ^         ^          \\"
	huertasiembra[11]<-"    /  |             |  \  \     \  _-     -_  /    \  _-     -_  /        \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\"
	huertasiembra[12]<-"   /   |  _________  |   \  \     ~   \\ //  ~       ~   \\ //   ~          \\          ^      ^       ^       ^      ^       ^       ^         ^          \\"
	huertasiembra[13]<-"  |    |  |       |  |    |  |  _- -   | | _- _    _- -   | | _- _           \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\ "
	huertasiembra[14]<-"  |    |  |   o   |  |    |  |    _ -  | |   -_      _ -  | |   -_            \\         ^      ^       ^       ^      ^       ^       ^         ^           \\"
	huertasiembra[15]<-"  |____|__|_______|__|____|__|        // \\              // \\                 \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~ ~~ ~~ ~~ ~~    \\"
	
	Dimension cosecha[15]
	cosecha[1]<-"   {   }                                                                          " 
	cosecha[2]<-"   {   }    _____                                                                  "
	cosecha[3]<-"   {   }   /     \                                                                "
	cosecha[4]<-"  |_   _| /       \                                                         \\                 ° ° °             ° ° °           ° ° °          ° ° °      \\ "
	cosecha[5]<-"    | |  /_________\                                                         \\               ° \°/ °           ° \°/ °         ° \°/ °        ° \°/ °      \\ "                                     
	cosecha[6]<-"    | | //   _  _   \\                                                        \\             °_\ | /_°         °_\ | /_°       °_\ | /_°	      °_\ | /_°	      \\  "
	cosecha[7]<-"    | |//  _| |_| |_  \\              _-_                _-_                   \\       ~~ ~~ ~~| | ~~ ~~ ~~ ~~ ~~| |~ ~~ ~~ ~~ ~~| |~~ ~~ ~~ ~~ | |~~ ~~     \\          " 
	cosecha[8]<-"    | //  | |_____| |  \\          /~~   ~~\          /~~   ~~\                 \\              | |               | |             | |            | |           \\     "  
	cosecha[9]<-"    |//_________________\\      /~~         ~~\    /~~         ~~\               \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~      \\    "
	cosecha[10]<-"    /  ______| |______   \     {               }  {               }               \\                 ° ° °             ° ° °           ° ° °          ° ° °      \\  "    
	cosecha[11]<-"   /  |             |  \  \     \  _-     -_  /    \  _-     -_  /                 \\      ~~  ~~  ~° \°/ ° ~~ ~~ ~~  ° \°/ ° ~~ ~~ ~~° \°/ ° ~~ ~~  ° \°/ °      \\"
	cosecha[12]<-"  /   |  _________  |   \  \     ~   \\ //  ~       ~   \\ //   ~                   \\             °_\ | /_°         °_\ | /_°       °_\ | /_°	      °_\ | /_°	      \\ "
	cosecha[13]<-" |    |  |       |  |    |  |  _- -   | | _- _    _- -   | | _- _                    \\       ~~ ~~ ~~| | ~~ ~~ ~~ ~~ ~~| |~ ~~ ~~ ~~ ~~| |~~ ~~ ~~ ~~ | |~~ ~~     \\ "
	cosecha[14]<-" |    |  |   o   |  |    |  |    _ -  | |   -_      _ -  | |   -_                     \\              | |               | |             | |            | |           \\ " 
	cosecha[15]<-" |____|__|_______|__|____|__|        // \\              // \\                          \\      ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~ ~~      \\ "
	
	Dimension mina[15]
	mina[1]<-"   |   |       "       
	mina[2]<-"   |___|                        --------   "
	mina[3]<-"   |   |                       |  MINA  |  "
	mina[4]<-"   |___|                        --------     "
	mina[5]<-",,,|   |,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,   "
	mina[6]<-"   |___|            æ                                                                     &&&"
	mina[7]<-"   |   | 	          æææ                                              Ö                   &&&&&&&  "
	mina[8]<-"                                          +                   æ                       &&&&&&&&&&&"
	mina[9]<-"                                         +++                 æææ                      "
	mina[10]<-"                 +          ¥¥¥                                                      "
	mina[11]<-"                +++          ¥                                                        "
	mina[12]<-"        &&&                                                                   "
	mina[13]<-"      &&&&&&&                              +             Æ                ¥¥¥           "
	mina[14]<-"    &&&&&&&&&&                            +++                              ¥            "
	mina[15]<-"  &&&&&&&&&&&&&& ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," 
	
	Dimension minaMinada[15]
	minaMinada[1]<-"   |   |       "       
	minaMinada[2]<-"   |___|                        --------   "
	minaMinada[3]<-"   |   |                       |  MINA  |  "
	minaMinada[4]<-"   |___|                        --------     "
	minaMinada[5]<-",,,|   |,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,   "
	minaMinada[6]<-"   |___|            x                                                           "
	minaMinada[7]<-"   |   | 	                                                             X         "
	minaMinada[8]<-"                                                              X                        &&&&&&&&&&&"
	minaMinada[9]<-"                                         X                                        "
	minaMinada[10]<-"               X                                                             "
	minaMinada[11]<-"                       X                                                       "
	minaMinada[12]<-"                                                                              "
	minaMinada[13]<-"                                           X             X                           "
	minaMinada[14]<-"                                                                           X            "
	minaMinada[15]<-"  &&&&&&&&&&&&&& ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," 
	
	dimension recoleccion[15] 
	recoleccion[1]<-",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," 
	recoleccion[2]<-"                                                        _-_                                      &"
	recoleccion[3]<-"                                      &              /~~   ~~\                                  &&&"
	recoleccion[4]<-"        _-_                          &&&          /~~         ~~\               #---#         &&&&&&&"
	recoleccion[5]<-"     /~~   ~~\                                   {               } "
	recoleccion[6]<-"  /~~         ~~\                                 \  _-     -_  / "
	recoleccion[7]<-" {               }                                 ~   \\ //  ~                           _-_  "
	recoleccion[8]<-"  \  _-     -_  /             #---#               - -   | | _- _        #---#          /~~   ~~\"
	recoleccion[9]<-"   ~   \\ //  ~                                    _ -  | |   -_                    /~~         ~~"
	recoleccion[10]<-"  - -   | | _- _                                       // \\                       {               } "
	recoleccion[11]<-"   _ -  | |   -_         &                                                          \  _-     -_  / "
	recoleccion[12]<-"       // \\            &&&              #---#                                       ~   \\ //  ~   "
	recoleccion[13]<-"                                                            &                       - -   | | _- _ "
	recoleccion[14]<-"                                                           &&&                       _ -  | |   -_ "
	recoleccion[15]<-",,,,,,,,,#---#,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,// \\,,,,,,,,"
	
	Dimension recolectado[15]
	recolectado[1]<-",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"
	recolectado[2]<-"                                                           _-_                                         "
	recolectado[3]<-"                                        x               /~~   ~~\                                   X "
	recolectado[4]<-"       _-_                                           /~~         ~~\                  X          "
	recolectado[5]<-"    /~~   ~~\                                       {               } "
	recolectado[6]<-" /~~         ~~\                                     \  _-     -_  /"
	recolectado[7]<-" {               }                                    ~   \\ //  ~                           _-_  "
	recolectado[8]<-" \  _-     -_  /                X                    - -   | | _- _            X          /~~   ~~\"
	recolectado[9]<-"  ~   \\ //  ~                                        _ -  | |   -_                    /~~         ~~"
	recolectado[10]<-"- -   | | _- _                                           // \\                       {               }"
	recolectado[11]<-"_ -  | |   -_         x                                                               \  _-     -_  /"
	recolectado[12]<-"    // \\                             X                                                ~   \\ //  ~ "
	recolectado[13]<-"                                                              X                       - -   | | _- _ "
	recolectado[14]<-"                    x                                                                  _ -  | |   -_ "
	recolectado[15]<-",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,// \\,,,,,,,," 
	
	dimension personaje[19]
	
	
	personaje[1]<-"     		                                _______"
	personaje[2]<-"		                                    /       \"
	personaje[3]<-"		                                    \  | \/\ \"
	personaje[4]<-"		                                    _\_\ ° °\| " 
	personaje[5]<-"    	                      	      __\/  \/  ~_//"
	personaje[6]<-"      		                        _/  /\  \_/\"
	personaje[7]<-"                            _/   |    _ _/ "    
	personaje[8]<-"                           /   / \______/"
	personaje[9]<-"                          /\   \      /\                      HAS MUERTO....."
	personaje[10]<-"                        /  /\___\    /  \ " 
	personaje[11]<-"                       /      ||    /\__/"
	personaje[12]<-"                      /            /   \\"
	personaje[13]<-"                      \            \"
	personaje[14]<-"                       \___________/"
	personaje[15]<-"               __ __ __/ /     \  \ "
	personaje[16]<-"              |  |__\__\/       \  \"
	personaje[17]<-"              | |               /__/"
	personaje[18]<-"              |/               /__/_"
	personaje[19]<-"                               |____\"    
	
	
	dimension rip[41]
	rip[1]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[2]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[3]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[4]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNXKOkdolllcccccllodxOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[5]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXOoc;,,;;:cllooooooollc:;,,:lkXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[6]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKd:,,:lxOKNWMMMMMMMMMMMMMMWNKOdc,,:d0NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[7]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMWMNk:,llkXWMMMMMMMMMMMMMMMMMMMMMMMMWWXOll.;dKWMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[8]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMWk;.:kXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWWKo. .ckXWMMMMMMMMMMMMMMMMMMMMMMMM"
	rip[9]<-"MMMMMMMMMMMMMMMMMMMMMMMMWWXl.;ONMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKc. .,xNMMMMMMMMMMMMMMMMMMMMMMM"
	rip[10]<-"MMMMMMMMMMMMMMMMMMMMMMMMWO;.lkdcxNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo. ..;OWMMMMMMMMMMMMMMMMMMMMM"
	rip[11]<-"MMMMMMMMMMMMMMMMMMMMMMMW0, .,,,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd.,l,.lXMMMMMMMMMMMMMMMMMMMM"
	rip[12]<-"MMMMMMMMMMMMMMMMMMMMMMMK; ..cONWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNl.cOc.:KMMMMMMMMMMMMMMMMMMM"
	rip[13]<-"MMMMMMMMMMMMMMMMMMMMMMNl ...oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0,.kXl.cXMMMMMMMMMMMMMMMMMM"
	rip[14]<-"MMMMMMMMMMMMMMMMMMMMMMk. .:xKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWo.:XK;.dWMMMMMMMMMMMMMMMMM"
	rip[15]<-"MMMMMMMMMMMMMMMMMMMMMNc.cKWMWWWWNNXXNWMMMMMMMMMWWWMMMMMMMWXXKXNNWMMMMMMMMMO  0Wx.;KMMMMMMMMMMMMMMMMM"
    rip[16]<-"MMMMMMMMMMMMMMMMMMMMMO..OMMMMNx:.... ;o0WMMMMWOc;d0NMMMMXo.....,cxXWMMMMMMX;.xWK;.xWMMMMMMMMMMMMMMMM"
	rip[17]<-"MMMMMMMMMMMMMMMMMMMMWd.:XMMMMK,  ....   OWMWMWo  .lOMMMMK,  . ..  ,OWMWMMMNc.lx:. lNMMMMMMMMMMMMMMMM"
	rip[18]<-"MMMMMMMMMMMMMMMMMMMMNc.oWMMMMK;  ;0Kl. .dWMMMWd. .;kMMMMK,  :KNx.  cNMMMMMWl.cOd, :XMMMMMMMMMMMMMMMM"
    rip[19]<-"MMMMMMMMMMMMMMMMMMMMK;.xMMMMMX;  ., . .:KMMMMMx. .,xWMMMX;  ,xx:.  oWMMMMMWo.cxc  ,KMMMMMMMMMMMMMMMM"
	rip[20]<-"MMMMMMMMMMMMMMMMMMMM0  0MMMMMX:       ;0WMMMMMk.  .oWMMMX;       .oXMMMMMMWd.:0x:.,KMMMMMMMMMMMMMMMM"
	rip[21]<-"MMMMMMMMMMMMMMMMMMMMk.,KMMMMMN:  .c;.  ;0WMMMMO.  .lWMMMX:  .;ldkXWMMMMMMMWd.cOo;. 0MMMMMMMMMMMMMMMM"
	rip[22]<-"MMMMMMMMMMMMMMMMMMMMx.:XMMMMMNc  ,0Nx.  :XMMMM0,   cNMMMX:  ,KMMMMMMMMMMMMWd.c0x:. 0MMMMMMMMMMMMMMMM"
	rip[23]<-"MMMMMMMMMMMMMMMMMMMWo.cNMMMMMNl  ,0MNc  ,0WMMMX:  .cNMMMNl  ;KMMMMMMMMMMMMWo.c0Oo. 0MMMMMMMMMMMMMMMM"
	rip[24]<-"MMMMMMMMMMMMMMMMMMMNl.oWMMMMMMXxdOWMWKocxNMMMMWKdxkKWMMMWKxd0WMMMMMMMMMMMMNl.lkc. ,0MMMMMMMMMMMMMMMM"
	rip[25]<-"MMMMMMMMMMMMMMMMMMMN:.dMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNc.oKKd.,KMMMMMMMMMMMMMMMM"
	rip[26]<-"MMMMMMMMMMMMMMMMMMMX:.xMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWMMMMMMMNc.cl,. ;XMMMMMMMMMMMMMMMM"
	rip[27]<-"MMMMMMMMMMMMMMMMMMMK;.kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNNWMMX: ;dd; :XMMMMMMMMMMMMMMMM"
	rip[28]<-"MMMMMMMMMMMMMMMMMMMK,.ONNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKx:,dNMMK,  ,,. cNMMMMMMMMMMMMMMMM"
	rip[29]<-"MMMMMMMMMMMMMMMMMMM0,.::;xWMWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXx:  :xXWMM0,.ckx, oWMMMMMMMMMMMMMMMM"
	rip[30]<-"MMMMMMMMMMMMMMMMMMM0   ckXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXx:,  ,,:OWMMMO...,,..dWMMMMMMMMMMMMMMMM"
	rip[31]<-"MMMMMMMMMMMMMMMMMMMO..xOocOWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0c,,,,,,,ckNMMMMk..oxl..xMMMMMMMMMMMMMMMMM"
	rip[32]<-"MMMMMMMMMMMMMMMMMMMO. ..:dKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0:...;lOXMMMMMMWd...,,..kMMMMMMMMMMMMMMMMM"
	rip[33]<-"MMMMMMMMMMMMMWXXWMMO..l0NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo,;o0NWMMMMMMMMWl ;Ok:..OMMMMMMMMMMMMMMMMM"
	rip[34]<-"MMMMMMMMMMMMMXc oKWO.,KMMXkkNMMMMMMMMMMMMMMMMMMMMMWMMMMMMWKKWMMMWMMMMMMMMNc .;lc.,KMMMWMMMMMMMMMMMMM"
	rip[35]<-"MMMMMMMMMMMMWNl  ,xd.,KMNo..0MMMWNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK;.:oc. :XMMMMMMMMMMMMMMMMM"
	rip[36]<-"MMMMMMMMMMWNo;, .... ,KWx. .ONOo;:0W0odXMMMMMMMMMMMMWXOKWMMMMMMWMM0oxXWMM0, .;c, cNMWWMMMMMMMMMMMMMM"
	rip[37]<-"MMMMMMMMMMMWk.  .xk, ,0x....,;. .cxl,,xNMMMMMMW0x0NWWk.;KMMMMMKl:dl.  l0Wk.,o;   ;dl:xWMMMMMMMMMMMMM"
	rip[38]<-"MMMMMMMMMMMMW0;.;KW0clo,,d:.,l,.,;.o0NNNNXXXXKc .,l0K:.oKKKKKO;  .   ..;, ... .  ...,:cxNMMMMMMMMMMM"
	rip[39]<-"MMMMMMMMMMMMWWXc.lXMWNOxKNXKNNd.....;;;;;;;;;;;   ...cc..,;,;;;-. .c,.lkl..;d0d;;..,;:lONMMMMMMMMMMM"
	rip[40]<-"MMMMMMMMMMMMMMMN00NMMMMMMMMMWNxcx00000000KKKKKK0ocdkxcddoOKKKXXXk:lKNKXWWNXNMMWNN0OKNWMMMMMMMMMMMMMM"
    rip[41]<-"MMMMMMMMMMMMMMMMMMMMMMMMMMMWMMMMMMMMMMMMMMMMMMMMWWWMMWMMMMMMMMMMMNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
	
	
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "                        PC: Para iniciar presione una tecla cualquiera"
	Esperar 100 Milisegundos	
	Escribir "                             Usuario: cuál es cualquiera?"
	Esperar 100 Milisegundos
	Escribir ""
	
	Esperar Tecla
	Limpiar Pantalla 
	mostrar_pantalla_inicio
	Limpiar Pantalla
	menu_inicio
	crear_jugador(nombre, sexo)
	bienvenida(nombre, sexo) 
	esperar 10 Segundos
	Limpiar Pantalla
	
	
	
	
	// Ciclo principal del juego, hasta que se seleccione "salir"
	Mientras salida <> 9 Hacer
		Mientras time <= maxTime y energia <> 0 y opcionesLugares <> 9 Hacer
			// Cambios en el mensaje según el tiempo del día
			si time = 1 Entonces
				Esperar 200 Milisegundos
				Escribir ""
				Escribir ""
				Escribir "                  Es de dia, el cielo esta despejado y esta saliendo el sol"
			FinSi
			si time = 4 Entonces
				Esperar 200 Milisegundos
				Escribir ""	
				Escribir "                Es la tarde, y el sol esta en su punto maximo"
			FinSi
			si time = 7 Entonces
				esperar 200 Milisegundos
				Escribir ""
				Escribir "            Es la noche, tienes 2 turnos para volver a tu casa y dormir o el cuco te va a comer"
				Escribir ""
				Escribir "            Al ser de noche hay actividades que no podes realizar"
			FinSi
			
			Para i<-1 Hasta 15 Con Paso 1 Hacer
				Escribir casa[i]
			FinPara
			
			// Selección de lugar
			Escribir ""
			Escribir "" 	
            Escribir "              Estás en frente de tu casa. ¿Qué quieres hacer?"
			Escribir ""
			Escribir "              Una vez que termine la actividad volveras a la entrada de tu hogar"
			Escribir "                     [1]. Ir al bosque" 
			Escribir "                     [2]. Ir a la mina" 
			Escribir "                     [3]. Ir a la granja"
			Escribir "                     [4]. Entrar a la  casa"
			Escribir "                     [5]. Ver inventario"
			Escribir "                     [9]. salir"
            Leer opcionesLugares
			Limpiar Pantalla
			
            // Validación de opciones de lugares
            Mientras opcionesLugares < 1 o opcionesLugares > 5 y opcionesLugares <> 9 Hacer
				
				Para i<-1 Hasta 15 Con Paso 1 Hacer
					Escribir casa[i]
				FinPara
				
				Escribir ""
				Escribir ""
                Escribir "              No existe esa opción."
				Escribir "                 [1]. Ir al bosque" 
				Escribir "                 [2]. Ir a la mina"
				Escribir "                 [3]. Ir a la granja "
				Escribir "                 [4]. Entrar a la casa "
				Escribir "                 [5]. Ver inventario"
				Escribir "                 [9]. salir"
                Leer opcionesLugares
            FinMientras
			Limpiar Pantalla
            
            // Restricción nocturna
            Mientras (time = 7) y ((opcionesLugares <= 2) o (opcionesLugares > 5) y (opcionesLugares <> 9)) Hacer
				Escribir "" 
				Escribir ""
                Escribir "                   Es de noche, no puedes acceder a este lugar."
				Escribir "                        [1]. Ir al bosque"
				Escribir "                        [2]. Ir a la mina "
				Escribir "                        [3]. Ir a la granja" 
				Escribir "                        [4]. Entrar a la casa" 
				Escribir "                        [5]. Ver inventario"
				Escribir "                        [9]. salir"
                Leer opcionesLugares
				Limpiar Pantalla
            FinMientras
			
            // Procesar la salida
            si opcionesLugares = 9 Entonces
                salida <- opcionesLugares
            FinSi
			
			
			Segun opcionesLugares Hacer
                Caso 1: // Bosque: recolectar madera y semillas
					
					para i<-1 hasta 15 Hacer
						Escribir recoleccion[i]
						
					FinPara
					
					Escribir ""
					Escribir ""
                    Escribir "                    Estás en el bosque, un lugar para recolectar madera y semillas."
					Escribir "                         [1]. Talar arbol" 
					Escribir "                         [2]. Recolectar semillas y madera" 
					Escribir "                         [3]. Volver a la casa"
					Leer opcionesAcciones
					Limpiar Pantalla
					
					Mientras opcionesAcciones < 1 o opcionesAcciones > 3 Hacer
						Escribir ""
						Escribir ""
						Escribir "                    No existe esa opcion"
						Escribir "                   [1]. Talar arbol "
						Escribir "                   [2]. Recolectar semillas y madera "
						Escribir "                   [3]. Volver a la casa"
						Leer opcionesAcciones
					FinMientras
					Limpiar Pantalla 
					
					Mientras opcionesAcciones <> 3 Hacer
						Segun opcionesAcciones Hacer
							Caso 1: // Talar árbol
								si hachaP = Verdadero o hachaH = Verdadero Entonces
									madera <- madera + Aleatorio(25, 50)
									energia <- energia - 0.25
									Escribir "Has talado un arbol. Ahora tienes ", madera, " de madera" 
									si hachaP = Verdadero Entonces
										hachaP <- Falso
										Escribir "" 
										Escribir "    ********* Tu hacha de piedra se ha roto  ******* "
									FinSi
								SiNo
									Escribir ""
									Escribir "            Necesitas un hacha para talar arboles!!!   "
								FinSi
							Caso 2: // Recolectar semillas
								
								para i<-1 hasta 15 Hacer
									Escribir recoleccion[i]
									
								FinPara
								semillas <- semillas + Aleatorio(5, 15)
								madera <- madera + Aleatorio(1,10)
								energia <- energia - 0.05
								
								
								
								para i<-1 hasta 1 hacer
									Borrar Pantalla
									Escribir ""
									Escribir ""
									Escribir ""
									Escribir ""
									Escribir ""
									Escribir ""
									Escribir "                RECOLECTANDO" Sin Saltar
									para j<-1 hasta 40 Hacer
										esperar 220 Milisegundos
										Escribir "." Sin Saltar
									FinPara
									
									
								FinPara
								
								Limpiar Pantalla
								para i<-1 hasta 15 Hacer
									Escribir recolectado[i]
									
								FinPara
								Escribir ""
								Escribir ""
								Escribir "                Has recolectado semillas. Ahora tienes ", semillas, " semillas"
								Escribir ""
								Escribir "                Has recolectado madera. Ahora tienes ", madera, " maderas" 
						FinSegun
						time <- time + 1
						Escribir ""
						Escribir "" 
						Escribir "        [1]. Talar árbol" 
						Escribir "        [2]. Recolectar semillas y madera" 
						Escribir "        [3]. Volver a la casa"
						Leer opcionesAcciones
						Limpiar Pantalla
					FinMientras
					time <- time + 1
					energia <- energia - 0.01
                Caso 2: // Mina: recolectar piedra y hierro
					para i<-1 hasta 1 hacer
						Borrar Pantalla
						Escribir ""
						Escribir ""
						Escribir ""
						Escribir ""
						Escribir ""
						Escribir ""
						Escribir "                BAJANDO A LA MINA" Sin Saltar
						para j<-1 hasta 40 Hacer
							esperar 220 Milisegundos
							Escribir "." Sin Saltar
						FinPara
					FinPara
					Limpiar Pantalla
					
					para i<-1 hasta 15 Hacer
						Escribir mina[i]
					FinPara
					
					Escribir "" 
					Escribir ""
                    Escribir "               Estás en la mina, un lugar para recolectar piedra y minar hierro."
					Escribir "               [1]. Recolectar piedras"
					Escribir "               [2]. Minar hierro "
					Escribir "               [3]. Volver a la casa"
					Leer opcionesAcciones
					Limpiar Pantalla
					
					Mientras opcionesAcciones < 1 o opcionesAcciones > 3 Hacer
						Escribir ""
						Escribir ""
						Escribir "                 No existe esa opcion"
						Escribir ""
						Escribir "                 [1]. Recolectar piedras" 
						Escribir "                 [2]. Minar hierro" 
						Escribir "                 [3]. Volver a la casa"
						Leer opcionesAcciones
						Limpiar Pantalla
					FinMientras
					
					Mientras opcionesAcciones <> 3 Hacer
						Segun opcionesAcciones Hacer
							Caso 1: // Recolectar piedras
								
								para i<-1 hasta 15 Hacer
									Escribir mina[i]
								FinPara
								piedra <- piedra + Aleatorio(10, 30)
								energia <- energia - 0.2
								
								Escribir ""
								Escribir ""
								Escribir ""
								Escribir ""
								Escribir "                       QUERES RECOLECTAR PIEDRAS?"
								Escribir "                         [1] SI"
								Escribir "                         [2] NO"
								Escribir " "                   
								Leer respuesta
								
								Borrar Pantalla
								
								si respuesta=1 Entonces
									
									
									para i<-1 hasta 1 hacer
									  Borrar Pantalla
									  Escribir ""
									  Escribir ""
									  Escribir ""       
									  Escribir ""
									  Escribir ""
									  Escribir ""
									  Escribir "                  RECOLECTANDO ." Sin Saltar
									  
									  para j<-1 hasta 40 Hacer
										esperar 220 Milisegundos
										
										Escribir "."Sin Saltar 
										
									FinPara
									Limpiar Pantalla
									para i<-1 hasta 15 Hacer
										Escribir minaMinada[i]
									FinPara
								   FinPara
								finsi
								
							Caso 2: // Minar hierro
								
								si picoP = Verdadero o picoH = Verdadero Entonces
									
									para i<-1 hasta 15 Hacer
										Escribir mina[i]
									FinPara
									
									Limpiar Pantalla
									
									para i<-1 hasta 1 hacer
										Borrar Pantalla
										Escribir ""
										Escribir ""
										Escribir ""       
										Escribir ""
										Escribir ""
										Escribir ""
										Escribir "                  MINANDO ." Sin Saltar
										
										para j<-1 hasta 40 Hacer
											esperar 220 Milisegundos
											
											Escribir "."Sin Saltar 
											
										FinPara
									FinPara
									
									hierro <- hierro + Aleatorio(5, 15)
									energia <- energia - 0.3
									si picoP = Verdadero Entonces
										picoP <- Falso
										Escribir ""
										Escribir ""
										Escribir "Tu pico de piedra se ha roto."
									FinSi
								SiNo
									Escribir ""
									Escribir ""
									Escribir "Necesitas un pico para minar hierro."
								FinSi
						FinSegun
						time <- time + 1
						
						Escribir "           [1]. Recolectar piedras" 
						Escribir "           [2]. Minar hierro" 
						Escribir "           [3]. Volver a la casa"
						Leer opcionesAcciones
						Limpiar Pantalla
					FinMientras
					time <- time + 1
					energia <- energia - 0.01
                Caso 3: // Granja: sembrar y recolectar
					Escribir ""
					Escribir ""
                    Escribir "                    Estás en la granja, puedes sembrar y recolectar productos."
					Escribir "                              [1]. Sembrar semillas"
					Escribir "                              [2]. Recolectar productos"
					Escribir "                              [3]. Volver a la casa"
					Leer opcionesAcciones
					Limpiar Pantalla
					
					
					Mientras opcionesAcciones <> 3 Hacer
						
						
						Para i<-1 Hasta 15 Con Paso 1 Hacer
							Escribir casa[i]
						FinPara
						
						esperar 100 Milisegundos
						
						Escribir "                    QUERES IR A LA HUERTA?"
						Escribir ""
						Escribir "                   [1] SI "
						Escribir "                   [2] NO "
						Escribir "                   [3] VOLVER "
						Leer respuesta
						
						Borrar Pantalla
						
						si respuesta=1 Entonces
							para i<-1 hasta 15 Con Paso 1 Hacer
								Escribir huerta[i]
							FinPara
						FinSi
						
						Segun opcionesAcciones Hacer
							Caso 1: // Sembrar semillas
								si semillas > 0 Entonces
									
									Escribir ""
									Escribir ""
									Escribir "desea plantar en la huerta"
									Escribir " [1] SI"
									Escribir " [2] NO"
									Leer opciones2
									Limpiar Pantalla
									
									si opciones2 = 1 Entonces
										semillas <- semillas - 1
										huerta1 <- Verdadero
										energia <- energia - 0.02
										
										para i<-1 hasta 15 hacer
											Borrar Pantalla
											para j<- 1 hasta 15 Hacer
												Escribir huerta[j]
											FinPara
											esperar 150 Milisegundos
											Borrar Pantalla
											
											
											para j<-1 hasta 15 Hacer
												Escribir huertasiembra[j]
											FinPara
											
											si i>1 Entonces
												Esperar 150 Milisegundos
												Escribir "" 
												Escribir "                            PODRAS COSECHAR EN... ", 16-i
											FinSi
											
											esperar 2 Segundo 
											Borrar Pantalla 
											
											para j<-1 hasta 15 hacer
												Escribir cosecha[j]
											FinPara
											
											
										FinPara
										
									FinSi
								SiNo
									Escribir "No tiene semillas para plantar"
								FinSi
							Caso 2: // Recolectar productos
								si huerta1 = Falso Entonces
									Escribir ""
									Escribir "   *************  No hay alimento para cosechar ****************"
								SiNo
									si huerta1 = Verdadero Entonces
										fruta <- fruta + Aleatorio(7, 13)
										huerta1 <- Falso
										energia <- energia - 0.07
										Escribir ""
										Escribir ""
										Escribir "         Has recolectado productos de la huerta."
										Limpiar Pantalla
									FinSi
								FinSi
						FinSegun
						time <- time + 1
						
						Escribir ""
						Escribir ""
						Escribir "      [1] Sembrar semillas" 
						Escribir "      [2]. Recolectar productos" 
						Escribir "      [3]. Volver a la casa"
						Leer opcionesAcciones
						Limpiar Pantalla
					FinMientras
					
					energia <- energia - 0.01
				Caso 4: // Casa: dormir, guardar materiales, crear objetos
					Escribir ""
					Escribir ""
                    Escribir "         Estas adentro de la casa, aqui puedes crear objetos, dormir o guardar materiales"
					Escribir "              Que desea hacer?"
					Escribir "              [1]. Dormir"
					Escribir "              [2]. Guardar materiales "
					Escribir "              [3]. Crear objetos"
					Escribir "              [4]. Salir afuera"
					Escribir "              [5]. Ver inventario"
					Leer opcionesAcciones
					Limpiar Pantalla
					
					Mientras opcionesAcciones < 1 o opcionesAcciones > 5 Hacer
						Escribir "         *******  Opcion incorrecta ******"
						Escribir "" 	
						Escribir "            Que desea hacer?"
						Escribir ""
						Escribir "            [1]. Dormir"
						Escribir "            [2]. Guardar materiales/sacar cosas del inventario" 
						Escribir "            [3]. Crear objetos"
						Escribir "            [4]. Salir afuera"
						Escribir "            [5]. Ver inventario"
						Leer opcionesAcciones
					FinMientras
					
					Mientras opcionesAcciones <> 4 Hacer
						Segun opcionesAcciones Hacer
							Caso 1:
								time <- 1
								energia <- 1
								Escribir ""
								Escribir ""
								Escribir "                 Has descansado, el cuco no te comio y puedes seguir explorando"
							Caso 2:
								Escribir "                 [1]. Guardar materiales en el cofre"
								Escribir "                 [2]. Sacar materiales del cofre"
								Escribir "" 
								Escribir "    ******* AVISO: si desea sacar materiales del cofre, se le daran todos los materiales en el inventario *******"
								Leer opciones2
								Limpiar Pantalla
								Mientras opciones2 < 1 o opciones2 > 2 Hacer
									Escribir "" 
									Escribir ""
									Escribir "            Opcion no disponible" 
									Escribir "            [1]. Guardar materiales en el cofre" 
									Escribir "            [2]. Sacar materiales del cofre"
									Leer opciones2
									Limpiar Pantalla
								FinMientras
								Segun opciones2 Hacer
									Caso 1:
										cofre[1] <- madera
										cofre[2] <- hierro
										cofre[3] <- semillas
										cofre[4] <- fruta
										cofre[5] <- piedra
										madera <- 0
										hierro <- 0
										semillas <- 0
										fruta <- 0
										piedra <- 0
									caso 2: 
										madera <- cofre[1]
										hierro <- cofre[2]
										semillas <- cofre[3]
										fruta <- cofre[4]
										piedra <- cofre[5]
								FinSegun
							Caso 3:
								Escribir "" 
								escribir""
								Escribir "                Qué objeto desea crear?"
								Escribir "                [1]. Hacha de piedra" 
								Escribir "                [2]. Pico de piedra" 
								Escribir "                [3]. Hacha de hierro "
								Escribir "                [4]. Pico de hierro"
								Leer opciones2
								Limpiar Pantalla
								Mientras opciones2 < 1 o opciones2 > 4 Hacer
									Escribir ""
									Escribir ""
									Escribir "           Opcion no disponible" 
									Escribir "           [1].Hacha de piedra "
									Escribir "           [2].Pico de piedra "
									Escribir "           [3].Hacha de hierro "
									Escribir "           [4].Pico de hierro"
									Leer opciones2
									Limpiar Pantalla
								FinMientras
								Segun opciones2 Hacer
									Caso 1:
										si hachaP = Falso Entonces
											si piedra >= 5 y madera >= 5 Entonces
												hachaP <- Verdadero
												Escribir "" 
												Escribir ""
												Escribir "  Enhorabuena, Has creado un hacha de piedra!!"
											SiNo
												Escribir ""
												Escribir "   ******* Te faltan materiales *******"
											FinSi
										SiNo
											Escribir ""
											Escribir " ******* Ya has creado un hacha de piedra ******"
										FinSi
									Caso 2:
										si picoP = Falso Entonces
											si piedra >= 3 y madera >= 5 Entonces
												picoP <- Verdadero
												Escribir "" 
												Escribir " Enhorabuena! Has creado un pico de piedra!! "
											SiNo
												Escribir " ************  te faltan materiales  ************* "
											FinSi
										SiNo
											Escribir " ****** Ya has creado un pico de piedra !!"
										FinSi
									Caso 3:
										si hachaH = Falso Entonces
											si hierro >= 5 y madera >= 5 Entonces
												hachaH <- Verdadero
												Escribir "Has creado un hacha de hierro"
											SiNo
												Escribir ""
												Escribir " ***************   Te faltan materiales ****************"
											FinSi
										SiNo
											Escribir "    ****Ya has creado un hacha de hierro!"
										FinSi
									Caso 4:
										si picoH = Falso Entonces
											si hierro >= 3 y madera >= 5 Entonces
												picoH <- Verdadero
												Escribir "" 
												Escribir "      Enhorabuena!  Has creado un pico de hierro!! "
											SiNo
												Escribir ""
												Escribir "      ************** Te faltan materiales **************"
											FinSi
										SiNo
											Escribir ""
											Escribir "          Ya has creado un pico de hierro!"
										FinSi
								FinSegun
							Caso 5: //inventario
								Escribir "              Madera: [",madera,"]"
								Escribir "              piedra: [",piedra,"]"
								Escribir "              hierro: [",hierro,"]"
								Escribir "              semillas: [",semillas,"]"
								Escribir "              fruta [",fruta,"]"
								si hachaP = Verdadero Entonces
									Escribir "              hacha de piedra"
								FinSi
								si hachaH = Verdadero Entonces
									Escribir "              hacha de hierro"
								FinSi
								si picoP = Verdadero Entonces
									Escribir "              pico de piedra"
								FinSi
								si picoH = Verdadero Entonces
									Escribir "              pico de hierro"
								FinSi
								esperar 4 segundos
								Limpiar Pantalla
						FinSegun
						Escribir ""
						Escribir ""
						Escribir "         Estas adentro de la casa, aqui puedes crear objetos, dormir o guardar materiales"
						Escribir "              Que desea hacer?"
						Escribir "              [1]. Dormir"
						Escribir "              [2]. Guardar materiales "
						Escribir "              [3]. Crear objetos"
						Escribir "              [4]. Salir afuera"
						Escribir "              [5]. Ver inventario"
						Leer opcionesAcciones
						Limpiar Pantalla
					FinMientras
				Caso 5:
					Escribir "              Madera: [",madera,"]"
					Escribir "              piedra: [",piedra,"]"
					Escribir "              hierro: [",hierro,"]"
					Escribir "              semillas: [",semillas,"]"
					Escribir "              fruta [",fruta,"]"
					si hachaP = Verdadero Entonces
						Escribir "              hacha de piedra"
					FinSi
					si hachaH = Verdadero Entonces
						Escribir "              hacha de hierro"
					FinSi
					si picoP = Verdadero Entonces
						Escribir "              pico de piedra"
					FinSi
					si picoH = Verdadero Entonces
						Escribir "              pico de hierro"
					FinSi
					esperar 4 segundos
					Limpiar Pantalla
			FinSegun
		FinMientras
		si time >= maxTime Entonces
			para i<-1 hasta 41 Hacer
				esperar 250 Milisegundos
				Escribir rip[i]
			FinPara
			Escribir ""
			Escribir ""
			Escribir "         Es de noche y el cuco te atrapó, has muerto."
			FinJuego(salida)
		SiNo
			si energia = 0 Entonces
			para i<-1 hasta 41  Hacer
				esperar 250 Milisegundos
				Escribir rip[i]
			FinPara
			Escribir ""
			Escribir ""
			Escribir "         Te has quedado sin energía"
			Escribir "         Has muerto!"
			FinJuego(salida)
			FinSi
		FinSi
	FinMientras
	Escribir "FIN"
FinAlgoritmo

funcion menu_inicio
	
FinFuncion


Funcion  crear_jugador(nombre Por Referencia, sexo Por Referencia) //inicializar atributos del jugador
	Escribir "                                  -.-.-.-.-.-.-.-.-.-.-.-.-."
	Escribir "                                 |     Cómo te llamas?     |"   
	Escribir "                                  -.-.-.-.-.-.-.-.-.-.-.-.-."
	leer nombre
	
	
	Escribir "                                  -.-.-.-.-.-.-.-.-.-.-.-.-."
	Escribir "                                 |   Mujer (M)/Hombre (H)  |" 
	Escribir "                                  -.-.-.-.-.-.-.-.-.-.-.-.-."
	leer sexo
	
FinFuncion


Funcion bienvenida(nombre, sexo)
	
	si sexo= 'H'o sexo='h' entonces 
		
		Escribir "	"
		Escribir "             Bienvenido a Pueblo Pelicano,", nombre, "!"
		Escribir "           "
		Esperar  150 Milisegundos
		Escribir "             Te mudas al Valle alejandote de la vida de oficina..." 
		esperar 200 milisegundos
		Escribir "             Has heredado la vieja parcela de la granja de tu abuelo en Stardew Valley." 
		Esperar  200 Milisegundos
		Escribir "             Armado con herramientas de segunda mano y unas cuantas monedas,"   
		esperar 200 milisegundos
		escribir  "            ¡te dispones a empezar tu nueva vida!"
	SiNo
		Escribir "	"
		Escribir "            Bienvenida a Pueblo Pelicano,", nombre, "!"
		Escribir "           "
		Esperar  150 Milisegundos
		Escribir "           Te mudas al Valle..." 
		esperar 200 milisegundos
		Escribir "          Has heredado la vieja parcela de la granja de tu abuelo en Stardew Valley." 
		Esperar  200 Milisegundos
		Escribir "          Armado con herramientas de segunda mano y unas cuantas monedas,"  
		esperar 200 milisegundos
		escribir  "         ¡te dispones a empezar tu nueva vida!"
	finsi
	
FinFuncion


Funcion mostrar_pantalla_inicio
	
	
	Esperar 350 Milisegundos
	Escribir"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
	Esperar 250 Milisegundos
	Escribir"                                                                                                                 "
	Esperar 250 Milisegundos
	Escribir"            #####   #######    #      ######   ######  #######   #     #           #      #    #     #       #       #######  #     #   " 
	Esperar 250 Milisegundos
	Escribir"          #           #       # #     #    #   #     # #         #  #  #           #      #   #  #   #       #       #        #     #    "  
	Esperar 250 Milisegundos
	Escribir"          #           #      #   #    #    #   #     # #         #  #  #           #      #  #   #   #       #       #          # #     "   
	Esperar 250 Milisegundos
	Escribir"           ######     #      #    #   ######   #     # #####     #  #  #           #     #  #     #  #       #       #####       #      "   
	Esperar 250 Milisegundos
	Escribir"                 #    #     #######   #   #    #     # #         #  #  #            #   #   #######  #       #       #           #      "
	Esperar 250 Milisegundos
	Escribir"                 #    #    #       #  #    #   #     # #         #  #  #             # #    #     #  #       #       #           #      "    
	Esperar 250 Milisegundos
	Escribir"          #######     #    #       #  #     #  ######  #######    ## ##               #     #     #  ####### ####### #######     #       "
	Escribir ""
	Escribir"                                                                                                                       PSeInt version  "	
	Esperar 250 Milisegundos
	Escribir"                                                                                                                 "	
	Esperar 250 Milisegundos
	Escribir "                                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
	Esperar  250 Milisegundos	 
	Escribir"°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°             EL COMIENZO DE UNA NUEVA VIDA         °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
	Esperar 250 Milisegundos
	Escribir "                                                 °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
	Esperar 250 Milisegundos
	Escribir ""
	Esperar 250 Milisegundos
	Escribir":--:::::::::::::....::::::::::::::::::::::..:::::::::::::::::::::...::::.:::::.::::::::::::::::::::::::........................            "
	Esperar 250 Milisegundos
	Escribir"--::::::::::::::::::::::::::::::::::::::.::::::::::::::::::::::::.:::::::.:::::.:::::::::::::::...................                         "
	Esperar 250 Milisegundos
	Escribir"----:::::::::::::::::::::::::::::::::::.::::::..::::..............::::::::....::::.....................................                    "
	Esperar 250 Milisegundos
	Escribir":::::::::::::::::::::::::::::::::::::::.::::.........................................................................                      "
	Esperar 250 Milisegundos
	Escribir":::::::::::::::::::::::::::::::::::........................................................................                                "
	Esperar 250 Milisegundos
	Escribir"===========-----------===================-------------------------------------------------------::::::::::::::::::::::::::::..............."
	Esperar 250 Milisegundos
	Escribir"----------------------------------------------------:-::-:---=-====------------------------------------------------------------------------"
	Esperar 250 Milisegundos
	Escribir"------------------------------------------------------===+-*-#-*=++=+=+=============-===-=-======-=--=-------------------------------------"
	Esperar 250 Milisegundos
	Escribir"-----=------------------------------------------=--==-=+=-*-=#-+#-+*==++=++==+===============-===-----===----------------------------------"
	Esperar 250 Milisegundos
	Escribir"=----=------------------------------------------==--++--+*--#*--**-+#*-=*+==+=+==+=-===-+===============-====--=-=-==---==---=-------------"
	Esperar 250 Milisegundos
	Escribir"-=-==-==---==-=---------==-------==-=-=-----==+--+**-:=**=:+#*-:*#*-=##*==**+==++==+=+=========+====+==-===-==-====-===-=-===-==-=--=-=-==="
	Esperar 250 Milisegundos
	Escribir"=-=--======-=====-=-=-------====--=+==---+++=--+#*-:-+#*=:=*#*-:+*#*--*##+--+**===+*+===++===================+=-==+==-+======-==-==+====-=="
	Esperar 250 Milisegundos
	Escribir"====-===-====--===----=======-==+----=++=-:-+*#=-:-+***=::**#*=:=*##+-:*###+--+*#+=-=+*+====+++==-=-=======+=++======--=======-+==+-===---="
	Esperar 250 Milisegundos
	Escribir"========----==-=========-==+==---=+**+---+*##*=::=*##*=::+=*#*=:-**##+-:+###*+--=***+=--+**+===-=++==-==-===-=+=====-=+===+=+===+=++++=++++"
	Esperar 250 Milisegundos
	Escribir"======-=-====+=+=---==***+==--=+++=----+###+=-:-+###*-::+*###+-::*###*+-:-####*+=--*##*+=-=*****+=--==++==-===+==-====+++===+++===+====+=+="
	Esperar 250 Milisegundos
	Escribir"==-==-==+++===--=+*++=----=+*+++==:-=*##**=--:=####+=-:=#####+--:**###*+=--*####*+=-=+#***=--=++****+=-===++++---=+++====++**++=--==+++===="
	Esperar 250 Milisegundos
	Escribir"-+==++===-===+=++==----=+*#*==--:=+*###*=-:-=*####*--:=**####+=-:=#####*==-:*###%***=:=**##**+=-==*##****=-=-=++++=---==+++=+-=+**+++-=++**"
	Esperar 250 Milisegundos
	Escribir"===-====++*=+=----==++##*+----:=+####+---:-+**###*-:::#######+-::+######**+-:*#####*++=-:=####*++=--+###**+*+=--=+=++++=---=++==--+=+*++==*"
	Esperar 250 Milisegundos
	Escribir"====++**-==-==--+*****=--:--=+*####=---:-+**####*=-::*+#####*+==:=#######*++-:=####%#*++---=*#%#**+=-:-=*####=+++=--=+**+++==--==+===--===+"
	Esperar 250 Milisegundos
	Escribir"**##*=-=---==+++*##++=----=++*##**----:-+*#*###*==-:=*######*+==::+#*####*++=-:-######**+==::-###***+++=--=+##*****==:--=+=+*+++=---====+=="
	Esperar 250 Milisegundos
	Escribir"+=-===--==+++##+=---::==####%%#*----:-+**######=---+####%####++=--=*#######++=-:-#####%%#**+=:-=*###***+=+==-==*##**+****=--=**+++*++==-=-="
	Esperar 250 Milisegundos
	Escribir"=---=+++*#*+*+=+=-:-=+++###%*+===:-:-**#*###*+==:--**#######**=--:-########*+++-:=#%####%#**++==--+*#***+****=---++##***++=+==--=*+++****+*"
	Esperar 250 Milisegundos
	Escribir"-==*****#*+-----:-=**####%#*===-::==*****##**=---:-*#######%#+=--:-*##%#####**+=::=#####%%%#***==-:-=#%##****++=+-:=+####*****++++:-=+*++**"
	Esperar 250 Milisegundos
	Escribir"++**+*+=-----:-=+*####%##++---::-**###*####*=--:-+*#*########+---:=**########++++=---*###%%%%****=+=:-*##*#*+++*++=-:-+=+####++***+*=:=-**-"
	Esperar 250 Milisegundos
	Escribir"*#++=-=--:---=+**######+-==:-:--**##*###*#*---::+**#########*+-=---+*#########**+=---=###%###%%***++=-:-*########**+++=+---*#####**+*++++-="
	Esperar 250 Milisegundos
	Escribir"*++-::--===+=+###*##*+==:--:--=****##%###*-=--::***#########++==--:=+###%######**+=---+######*%%#***+++-:**########+****+=---+*##%##**#*+**"
	Esperar 250 Milisegundos
	Escribir"**=-=-===+++#%##%##**==:---:=*+*##**+##*+--:-::-+*##########*=+-=-:+#####%####%*++=-=---*#%####%%#*+*+=---:-+######*******++*=--=+######*##"
	Esperar 250 Milisegundos
	Escribir"-:=-==++*###%##%%#*--+--::=**###*#**###++=---::=*############+==--:*####%%###*##***=++---*###*####%#*#*=+=----+*#%####******+==+=--+#######"
	Esperar 250 Milisegundos
	Escribir"-==++=+*########*+==----=++#####*###%#*===:---=*#*##########++-+--::+###%###***#*++===-:-##*########%#+*****+=:-+###%####*******+====+=*##%"
	Esperar 250 Milisegundos
	Escribir"+++=+*%#*##*++=++:-=:--=**#####*%%%##+--=:--:++*##%#######%**+-=-:--+#####%######****+=-:-=######%#%%%%*#***++=--=#####%###**#******+=--*%%"
	Esperar 250 Milisegundos
	Escribir"**########*+++=-:=-:-+*+*###%###%%##++==:-:-++*#+##***#####*+++==-::+####%%##%##*#**++++=-:-=###%%##%#%%%***++*==--+*%###%%###=++*+*++-=-=+"
	Esperar 250 Milisegundos
	Escribir"*#######*++---=--:-+*##*++#*###*###*+*=:-::=+###%#%%%######***=--=--=+#%##%###*#**#***+==----*####%###%%%%***+++++=---#########*+++****=++*"
	Esperar 250 Milisegundos
	Escribir"#%#####+=++------=++*+*+#*###*###*=---=::-+***##*#%####*###**+=+=:-:+####%#########**+++++=-==*#####%#%%#%%%****++=-=-+++#######%#**++++++*"
	Esperar 250 Milisegundos
	Escribir"%##%#**+-==+=--+*#####*+=*##%%####*+--+-:-+*#########%####%#*=-=:-=:+##%##########%%*++*++===-=####%**#%######***+*+=+++=-=+##%%##*#%#**#*+"
	Esperar 250 Milisegundos
	Escribir"###+-==---:--=**+***###++**###**++*+:-:===*####%#**###%#%#%**+=----:-*%%######*####*#%+*++===--+#%####*###*##%%***#*+++==---*%%######%%%###"
    Esperar 250 Milisegundos
    Escribir"%%#*--.:-=:===++##%%%#*#+###%##*+:=-:::-=##%#%*####%##%#*##*+*#+=-::+*#%#*%##%####%##%++*+===:--=#*###%%###%%%#%%#**##**==+-=+###*#%%*##%%%"
    Esperar 5 Segundos	
   //Limpiar Pantalla
	FinFuncion


Subalgoritmo FinJuego(salida Por Referencia)
	Escribir ""
    Escribir "           ¿Quieres continuar? Volverás a empezar."
    Escribir "                    [1]. Sí"
    Escribir "                    [9]. No"
    Leer salida
    Mientras salida <> 1 y salida <> 9 Hacer
		Escribir ""
        Escribir "             ERROR, no existe esa opción."
		Escribir "                     [1]. Sí"
		Escribir "                     [9]. No"
        Leer salida
    FinMientras
    si salida = 1 Entonces
		energia <- 1
		time <- 1
		maxTime <- 9
		madera <- 0
		hierro <- 0
		semillas <- 0
		fruta <- 0
		piedra <- 0
		hachaH <- Falso
		hachaP <- Falso
		picoH <- Falso
		picoP <- Falso
		huerta1 <- Falso
    FinSi
FinSubalgoritmo
