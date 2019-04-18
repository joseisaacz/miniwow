    #include"Jugador.h"
	
	Jugador::Jugador(){}
    Jugador::Jugador(string _id,string  _nombre, bool status){
		
		id=_id;
		nombre=_nombre;
		status=status;
		printf("LOL");
	}
    Jugador::~Jugador(){}
    string Jugador::getId(){
		return id;
	}
    string Jugador::getNombre(){
		return nombre;
	}
	bool Jugador::getStatus(){
		return status;
	}
    void Jugador::setId(string _id){
		id=_id;
	}
    void Jugador::setNombre(string _nombre){
		nombre=_nombre;
	}
	void Jugador::setStatus(bool stat){
		status=stat;
	}