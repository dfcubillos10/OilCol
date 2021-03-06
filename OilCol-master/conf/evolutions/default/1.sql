# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table campoEntity (
  id                        bigint not null,
  departamento              varchar(255),
  latitud                   float,
  longitud                  float,
  constraint pk_campoEntity primary key (id))
;

create table caudalEntity (
  id                        bigint not null,
  caudal                    float,
  constraint pk_caudalEntity primary key (id))
;

create table consumoEnergiaEntity (
  id                        bigint not null,
  consumo                   float,
  constraint pk_consumoEnergiaEntity primary key (id))
;

create table JefeAsignadoEntity (
  id                        bigint not null,
  nombre                    varchar(255),
  edad                      integer,
  telefono                  varchar(255),
  direccion                 varchar(255),
  nacionalidad              varchar(255),
  cedula                    varchar(255),
  constraint pk_JefeAsignadoEntity primary key (id))
;

create table JefeDeCampoEntity (
  id                        bigint not null,
  nombre                    varchar(255),
  edad                      integer,
  telefono                  varchar(255),
  direccion                 varchar(255),
  nacionalidad              varchar(255),
  cedula                    varchar(255),
  constraint pk_JefeDeCampoEntity primary key (id))
;

create table pozoEntity (
  id                        bigint not null,
  Longitud                  float,
  Latitud                   float,
  estado                    varchar(255),
  campos_id                 bigint,
  constraint pk_pozoEntity primary key (id))
;

create table productentity (
  id                        bigint not null,
  name                      varchar(255),
  stock                     integer,
  price                     float,
  available                 boolean,
  constraint pk_productentity primary key (id))
;

create table ReporteEntity (
  id                        bigint not null,
  descripcion               varchar(255),
  id_sensor                 bigint,
  id_pozo                   bigint,
  tipo_sensor               varchar(255),
  constraint pk_ReporteEntity primary key (id))
;

create table SensorEmergenciaEntity (
  id                        bigint not null,
  emergencia                varchar(255),
  constraint pk_SensorEmergenciaEntity primary key (id))
;

create table SensorTemperaturaEntity (
  id                        bigint not null,
  temperatura               float,
  constraint pk_SensorTemperaturaEntity primary key (id))
;

create sequence Campo;

create sequence Caudal;

create sequence ConsumoEnergia;

create sequence JefeAsignado;

create sequence JefeDeCampo;

create sequence Pozo;

create sequence Product;

create sequence Reporte;

create sequence SensorEmergencia;

create sequence SensorTemperatura;

alter table pozoEntity add constraint fk_pozoEntity_campos_1 foreign key (campos_id) references campoEntity (id);
create index ix_pozoEntity_campos_1 on pozoEntity (campos_id);



# --- !Downs

drop table if exists campoEntity cascade;

drop table if exists caudalEntity cascade;

drop table if exists consumoEnergiaEntity cascade;

drop table if exists JefeAsignadoEntity cascade;

drop table if exists JefeDeCampoEntity cascade;

drop table if exists pozoEntity cascade;

drop table if exists productentity cascade;

drop table if exists ReporteEntity cascade;

drop table if exists SensorEmergenciaEntity cascade;

drop table if exists SensorTemperaturaEntity cascade;

drop sequence if exists Campo;

drop sequence if exists Caudal;

drop sequence if exists ConsumoEnergia;

drop sequence if exists JefeAsignado;

drop sequence if exists JefeDeCampo;

drop sequence if exists Pozo;

drop sequence if exists Product;

drop sequence if exists Reporte;

drop sequence if exists SensorEmergencia;

drop sequence if exists SensorTemperatura;

