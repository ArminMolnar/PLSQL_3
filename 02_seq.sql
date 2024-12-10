create sequence csomag_seq start with 156200;
select csomag_seq.nextval from dual;
select csomag_seq.currval from dual;

create sequence futarszolgalat_seq start with 56101;
select futarszolgalat_seq.nextval from dual;
select futarszolgalat_seq.currval from dual;

create sequence csomag_futar_seq start with 180000;
select csomag_futar_seq.nextval from dual;
select csomag_futar_seq.currval from dual;
