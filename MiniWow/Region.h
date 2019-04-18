#ifndef REGION_H
#define REGION_H
#include<iostream>
#include"Continente.h"

class Region{

 private:
    Continente continente;
    int id;
    char* nombre;
	char* capital;

 public:
    Region();
    Region(Continente _continente, int _id,char* _nombre,char* _capital);
    ~Region();
	Continente getContinente();
    int getId();
    char* getNombre();
	char* getCapital;
	void setContinente(Continente cont);
    void setId(int _id);
    void setNombre(char* _nombre);
    void setCapital(char* _capital);

};
#endif
