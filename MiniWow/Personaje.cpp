    #include"Personaje.h"
	
	Personaje::Personaje(){}
    Personaje::Personaje(char* _genero, char* _coloPiel, char* _nombre, Jugador _jugador, Faccion _faccion, Raza _raza, Clase _clase, Region _region, int arm, int niv){
		this.genero=_genero;
		this.colorPiel=_coloPiel;
		this.nombre=_nombre;
		this.jugador=_jugador;
		this.faccion=_faccion;
		this.raza=_raza;
		this.clase=_clase;
		this.region=_region;
		this.armamento=arm;
		this.nivel=niv;
	}
    Personaje::~Personaje(){}
	char* Personaje::getGenero(){
		return this.genero;
	}
	char* Personaje::getColorPiel(){
		return this.colorPiel;
	}
    char* Personaje::getNombre(){
		return this.nombre;
	}
	Jugador Personaje::getJugador(){
		return this.jugador;
	}
	Faccion Personaje::getFaccion(){
		return this.faccion;
	}
	Raza Personaje::getRaza(){
		return this.raza;
	}
	Clase Personaje::getClase(){
		return this.clase;
	}
	Region Personaje::getRegion(){
		return this.region;
	}
	int Personaje::getArmamento(){
		return this.armamento;
	}
	int Personaje::getNivel(){
		return this.nivel;
	}
	void Personaje::setGenero(char* _genero){
	     this.genero=_genero;;
	}
	void Personaje::setColorPiel(char* _color){
		this.colorPiel=_color;
	}
    void Personaje::setNombre(char* _nombre){
		this.nombre=_nombre;
	}
	void Personaje::setJugador(Jugador _jugador){
		this.jugador=_jugador;
	}
	void Personaje::setFaccion(Faccion _faccion){
		this.Faccion=_faccion;
	}
	void Personaje::setRaza(Raza _raza){
		this.raza=_raza;
	}
	void Personaje::setClase(Clase _clase){
		this.clase=_clase;
	}
	void Personaje::setRegion(Region _region){
		this.region=_region;
	}
	void Personaje::setArmamento(int arm){
		this.armamento=arm;
	}
	void Personaje::setNivel(int niv){
		this.nivel=niv;
	}