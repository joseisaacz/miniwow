#ifndef JUGADOR_H
#define JUGADOR_H
#include<iostream>
using namespace std;
class Jugador{

 private:
    string id ;
    string nombre;
    bool status; 

 public:
    Jugador();
    Jugador(string _id, string _nombre, bool status);
    ~Jugador();
    string getId();
    string getNombre();
	bool getStatus();
    void setId(string _id);
    void setNombre(string _nombre);
	void setStatus(bool stat);
};
#endif