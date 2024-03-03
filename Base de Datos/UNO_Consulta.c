//Incluir esta libreri??a para poder hacer las llamadas en shiva2.upc.es
//#include <my_global.h>
#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main(int argc, char **argv)
{
	MYSQL *conn;
	int err;
	// Estructura especial para almacenar resultados de consultas 
	MYSQL_RES *resultado;
	MYSQL_ROW row;
	
	//Creamos una conexion al servidor MYSQL 
	conn = mysql_init(NULL);
	if (conn==NULL) {
		printf ("Error al crear la conexi?n: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	//inicializar la conexin
	conn = mysql_real_connect (conn, "localhost","root", "mysql", "UNO",0, NULL, 0);
	if (conn==NULL) {
		printf ("Error al inicializar la conexion: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	
	
	char consulta [80];
	strcpy (consulta,"SELECT * FROM Jugador");

	
	
	err=mysql_query (conn, consulta);
	if (err!=0) {
		printf ("Error al consultar datos de la base %u %s\n",
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	//recogemos el resultado de la consulta. El resultado de la
	//consulta se devuelve en una variable del tipo puntero a
	//MYSQL_RES tal y como hemos declarado anteriormente.
	//Se trata de una tabla virtual en memoria que es la copia
	//de la tabla real en disco.
	resultado = mysql_store_result (conn);
	// El resultado es una estructura matricial en memoria
	// en la que cada fila contiene los datos de una persona.
	
	// Ahora obtenemos la primera fila que se almacena en una
	// variable de tipo MYSQL_ROW
	row = mysql_fetch_row (resultado);
	
	if (row == NULL)
		printf ("No se han obtenido datos en la consulta\n");
	else{
		
		int max = 0;
		int max2 = 0;
		int max3 = 0;
		int max4 = 0;
		
		char nombre[80];
		char nombre2[80];
		char nombre3[80];
		char nombre4[80];
		
		
		while (row !=NULL) {
			// la columna 3 contiene el nombre del jugador
			if(atoi(row[3])>max)
			{
				max = atoi(row[3]);
				strcpy(nombre,row[1]);
				
			}
			
			// obtenemos la siguiente fila
			row = mysql_fetch_row (resultado);					
		}
		
		
		
		printf ("%s Es el jugador con mas partidas, con un total de %d\n",nombre, max);
		
		
		mysql_close (conn);
		exit(0);
	}
	
}
