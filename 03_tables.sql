create table csomag(
       id number primary key,
       megnevezes  varchar2(250) not null,
       leiras varchar2(2000) not null,
       ar number not null       
)tablespace users;

create table futarszolgalat(
       id  number primary key,
       nev varchar2(250) not null,
       cim varchar2(250) not null,
       leiras varchar2(2000)
)tablespace users;

create table csomag_futar(
       id number primary key,
       csomag_id number not null,
       futarszolgalat_id number not null,
       rendeles_datum date not null,
       szallitasi_cim varchar2(250) not null,
       megjegyzes varchar2(500),
       szallitasi_datum date   
)tablespace users;

alter table csomag_futar
       add constraint csomag_fk foreign key (csomag_id) references csomag(id);
       
alter table csomag_futar
       add constraint futarszolgalat_fk foreign key (futarszolgalat_id) references futarszolgalat(id);
         
alter table csomag_futar
       add constraint csomag_futar_egyedi unique (csomag_id, futarszolgalat_id, szallitasi_cim, rendeles_datum);
       
drop table csomag;
drop table futarszolgalat;
drop table csomag_futar;
