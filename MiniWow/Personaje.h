#ifndef PERSONAJE_H
#define PERSONAJE_H
#include<iostream>
#include"Jugador.h"
#include"Faccion.h"
#include"Raza.h"
#include"Clase.h"
#include"Region.h"

class Personaje{

 private:
	char* genero;
	char* colorPiel;
    char* nombre;
    Jugador jugador;
	Faccion faccion;
	Raza raza;
	Clase clase ;
	Region region;
    int armamento;
	int nivel;
 public:
    Personaje();
    Personaje(char* _genero, char* _coloPiel, char* _nombre, Jugador _jugador, Faccion _faccion, Raza _raza, Clase _clase, Region _region, int arm, int niv);
    ~Personaje();
	char* getGenero();
	char* getColorPiel();
    char* getNombre();
	Jugador getJugador();
	Faccion getFaccion();
	Raza getRaza();
	Clase getClase();
	Region getRegion();
	int getArmamento();
	int getNivel();
	void setGenero(char* _genero);
	void setColorPiel(char* _color);
    void setNombre(char* _nombre);
	void setJugador(Jugador _jugador);
	void setFaccion(Faccion _faccion);
	void setRaza(Raza _raza);
	void setClase(Clase _clase);
	void setRegion(Region _region);
	void setArmamento(int arm);
	void setNivel(int niv);
};
#endif