#include"Region.h"

    Region::Region(){
		
	}
    Region::Region(Continente _continente, int _id,char* _nombre,char* _capital){
		
	}
    Region::~Region(){
		
	}
	Continente Region:: getContinente(){
		return this.continente;
	}
    int Region:: getId(){
		return this.id;
	}
    char* Region::getNombre(){
		return this.nombre;
	}
	char* Region::getCapital{
		return this.capital;
	}
	void Region::setContinente(Continente cont){
		this.continente=cont;
	}
    void Region::setId(int _id){
		this.id=_id;
	}
    void Region::setNombre(char* _nombre){
		this.nombre=_nombre;
	}
    void Region::setCapital(char* _capital){
		this.capital=_capital;
	}