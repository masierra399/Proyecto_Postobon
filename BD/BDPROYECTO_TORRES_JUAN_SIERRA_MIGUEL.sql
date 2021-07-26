create database BDProyecto;

use BDProyecto;

create table Usuario(
IdUsuario int  primary key auto_increment,
TipoUsuario varchar (15) not null,
NombreUsuario varchar (15) not null,
Nickname varchar (15) not null,
Contraseña varchar (20) not null,
DocumentoCliente varchar(20) not null,
TelefonoCliente varchar (15) not null,
EmailCliente varchar (20) not null
);

create table TarjetaRed(
IdTarjetaRed int  primary key auto_increment,
MarcaTarjetaRed varchar (20) not null,
SerialTarjetaRed varchar (20) not null,
EstadoTarjetaRed varchar (15) not null,
TipoTarjetaRed varchar (15) not null);

create table DiscoDuro(
IdDiscoDuro int  primary key auto_increment,
MarcaDiscoDuro varchar (20) not null,
SerialDiscoDuro varchar (20) not null,
EstadoDiscoDuro varchar (15) not null);

create table Grafica(
IdGrafica int  primary key auto_increment,
MarcaGrafica varchar (20) not null,
SerialGrafica varchar (20) not null,
EstadoGrafica varchar (15) not null,
TamañoGrafica varchar (15) not null);

create table RAM(
IdRAM int  primary key auto_increment,
MarcaRAM varchar (20) not null,
SerialRAM varchar (20) not null,
EstadoRAM varchar (15) not null,
VelocidadRAM varchar (15) not null);

create table Board(
IdBoard int  primary key auto_increment,
MarcaBoard varchar (20) not null,
SerialBoard varchar (20) not null,
EstadoBoard varchar (15) not null);

create table Mouse(
IdMouse int  primary key auto_increment,
MarcaMouse varchar (20) not null,
SerialMouse varchar (20) not null,
EstadoMouse varchar (15) not null);

create table Procesador(
IdProcesador int  primary key auto_increment,
MarcaProcesador varchar (20) not null,
SerialProcesador varchar (20) not null,
EstadoProcesador varchar (15) not null);

create table Monitor(
IdMonitor int  primary key auto_increment,
MarcaMonitor varchar (20) not null,
SerialMonitor varchar (20) not null,
EstadoMonitor varchar (15) not null);

create table Teclado(
IdTeclado int  primary key auto_increment,
MarcaTeclado varchar (20) not null,
SerialTeclado varchar (20) not null,
EstadoTeclado varchar (15) not null);

create table DiagnosticoEntrada(
IdEntrada int  primary key auto_increment,
FechaRecibido date not null,
MarcaEntrada varchar (20) not null,
EstadoFísicoEntrada varchar (80) not null,
ObservacionesEntrada varchar (60) not null);

create table DiagnosticoSalida(
IdSalida int  primary key auto_increment,
FechaEntregaSalida date not null,
MarcaSalida varchar (20) not null,
EstadoFísicoSalida varchar (80) not null,
ObservacionesSalida varchar (60) not null);

create table Conectividad(
IdConectividad int  primary key auto_increment,
NombreHost varchar (15) not null,
NombreRed varchar (15) not null,
TipoConexion varchar (15) not null,
TipoIP varchar (15) not null,
DireccionIP varchar (15) not null,
MascaraSubred varchar (15) not null,
PuertaEnlace varchar (15) not null,
MAC varchar (15) not null);

create table Bitacora(
IdBitacora int  primary key auto_increment,
Area varchar (20) not null,
FechaBitacora date not null,
Falla varchar (50) not null,
Tec_Encargado varchar (20) not null,
Causa varchar(50) not null,
Solucion varchar(50) not null,
Observacion varchar(50) not null,
IdUsuarioFK int);

create table Incidencia(
IdIncidencia int  primary key auto_increment,
Area varchar (20) not null,
FechaReporte date not null,
Falla varchar (50) not null,
IdUsuarioFK int);

create table EstadoSoftware(
IdSoftware int  primary key auto_increment,
TipoSoftware varchar (20) not null,
NombreSoftware varchar (20) not null,
VersiónSoftware varchar (20) not null,
CaracteristicasSoftware varchar (20) not null,
LicenciaSoftware varchar (20) not null,
FechaLicenciaSoftware date,
CaducidadLicenciaSoftware varchar (20) not null,
ObservacionesSoftware varchar (20) not null);

create table Equipo(
IdEquipo int  primary key auto_increment,
MarcaEquipo varchar (20) not null,
TipoEquipon varchar (20) not null,
EstadoEquipo varchar (30) not null,
AlimentacionEquipo varchar (20) not null,
IdUsuarioFK int,
IdTarjetaRedFK int,
IdDiscoDuroFK int,
IdRAMFK int,
IdGraficaFK int,
IdBoardFK int,
IdMouseFK int,
IdProcesadorFK int,
IdMonitorFK	int,
IdTecladoFK int,
IdEntradaFK int,
IdSalidaFK int,
IdConectividadFK int,
IdBitacoraFk int,
IdIncidenciaFK int,
IdSoftwareFK int);

alter table Equipo
add constraint FKUsuarioEquipo	
foreign key (idUsuarioFK)
references Usuario (idUsuario);

alter table Equipo
add constraint FKTarjetaRedEquipo	
foreign key (idTarjetaRedFK)
references TarjetaRed (idTarjetaRed);

alter table Equipo
add constraint FKDiscoDuroEquipo	
foreign key (idDiscoDuroFK)
references DiscoDuro (idDiscoDuro);

alter table Equipo
add constraint FKRAMEquipo	
foreign key (idRAMFK)
references RAM (idRAM);

alter table Equipo
add constraint FKGraficaEquipo	
foreign key (idGraficaFK)
references Grafica (idGrafica);

alter table Equipo
add constraint FKBoardEquipo	
foreign key (idBoardFK)
references Board (idBoard);

alter table Equipo
add constraint FKMouseEquipo	
foreign key (idMouseFK)
references Mouse (idMouse);

alter table Equipo
add constraint FKProcesadorEquipo	
foreign key (idProcesadorFK)
references Procesador (idProcesador);

alter table Equipo
add constraint FKMonitorEquipo	
foreign key (idMonitorFK)
references Monitor (idMonitor);

alter table Equipo
add constraint FKTecladoEquipo	
foreign key (idTecladoFK)
references Teclado (idTeclado);

alter table Equipo
add constraint FKDiagnosticoEntradaEquipo	
foreign key (idEntradaFK)
references DiagnosticoEntrada (idEntrada);

alter table Equipo
add constraint FKDiagnosticoSalidaEquipo	
foreign key (idSalidaFK)
references DiagnosticoSalida (idSalida);

alter table Equipo
add constraint FKConectividadEquipo	
foreign key (idConectividadFK)
references Conectividad (idConectividad);

alter table Equipo
add constraint FKBitacoraEquipo	
foreign key (idBitacoraFK)
references Bitacora (idBitacora);

alter table Equipo
add constraint FKIncidenciaEquipo	
foreign key (idIncidenciaFK)
references Incidencia (idIncidencia);

alter table Equipo
add constraint FKEstadoSoftwareEquipo	
foreign key (idSoftwareFK)
references EstadoSoftware (idSoftware);

alter table Bitacora
add constraint FKUsuarioBitacora
foreign key (idUsuarioFK)
references Usuario (idUsuario);

alter table Incidencia
add constraint FKUsuarioIncidencia
foreign key (idUsuarioFK)
references Usuario (idUsuario);











