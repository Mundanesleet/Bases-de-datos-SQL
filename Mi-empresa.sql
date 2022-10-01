create DATABASE Miempresa

CREATE table cliente(
cod_c int,
nom_c varchar(20),
dir_c varchar(30),
ciu_c varchar(30),
CONSTRAINT pk_cc PRIMARY key(cod_c) 
);
   INSERT into cliente VALUES(1,'Wilmer Paladines','Calle 5 # 18-16','Popayan');
   INSERT into cliente VALUES(2,'Camilo Vargas','Calle 13 # 1 A - 12','Popayan');
   INSERT into cliente values(3,'Juan Perez','Carrera 5 # 13 - 09','Popayan');
   insert into cliente values(4,'Sofia Cardozo','Calle 9 # 45 - 54','Popayan');
   INSERT INTO cliente values(5,'David tovar','Calle 3 A sur # 5 A - 18 este','Popayan');
   
   UPDATE cliente set ciu_c = 'Timbio' where cod_c = 2
   UPDATE cliente set dir_c = 'Carrera 45 # 16 - 65 Este' WHERE cod_c = 4
    --NO UTLIZO LOS DROP TABLE PORQUE NO QUIERO BORRAR LAS TABLAS--
   delete from cliente where nom_c = 'Wilmer Paladines' = 1
   delete from cliente where nom_c = 'Sofia Cardozo' = 4
 
create table producto(
cod_p int,
 nom_p varchar(30),
CONSTRAINT pk_pc PRIMARY key(cod_p)
); 
 
 INSERT into producto values(1,'Telefono Samsung A30');
 INSERT into producto values(2,'Telefono Xiaomi redmi note 10S');
 INSERT into producto values(3,'Telfono Huawei P30 lite');
 INSERT into producto values(4,'Telefono Nokia 110');
 INSERT into producto values(5,'Telefono Xiaomi redmi note 8 pro');
 
 UPDATE producto set nom_p = 'Telefono Xiaomi redmi note 10 PRO' WHERE cod_p = 2
 UPDATE producto set nom_p = 'Telefono Samsung galaxy J1' where cod_p = 4
 --NO UTLIZO LOS DROP TABLE PORQUE NO QUIERO BORRAR LAS TABLAS--
 DELETE from producto where nom_p = 'Telefono Samsung A30' = 1
 delete from producto where nom_p = 'Telefono Huawei P30 lite' = 3
 

create table item_ventas(
 num_i int,
  cod_i int, 
  can_i int,
  pre_i numeric,
  CONSTRAINT pk_in PRIMARY key(num_i)
);

   INSERT into item_ventas VALUES(1,1001,1,800);
   InSERT into item_ventas VALUES(2,1002,2,1200);
   INSERT into item_ventas VALUES(3,1003,3,600);
   INSERT into item_ventas VALUES(4,1004,2,300);                              
   INSERT into item_ventas VALUES(5,1005,4,1000);                              
                                 
                                 
 CREATE table ventas(
   num_v int,
   cod_v varchar(10),
   fecha_v Varchar(40),
   CONSTRAINT pk_vn PRIMARY key(num_v) 
 );
 
 insert into ventas values(1,'WP','2002/10/21');
 insert into ventas values(2,'CV','2002/06/13');
 insert into ventas values(3,'JP','2002/05/04');
 insert into ventas values(4,'SC','2002/04/03');
 insert into ventas values(5,'DT','2002/12/31');
 
 
 
 CREATE TABLE cli_pro(
 cod_c1 int,
   cod_p1 int,
   CONSTRAINT fk_fc1 FOREIGN key(cod_c1) REFERENCES cliente(cod_c),
   CONSTRAINT fk_fp1 FOREIGN key(cod_p1) REFERENCES producto(cod_p)
 );
 
 INSERT into cli_pro VALUES(1,1);
 INSERT into cli_pro VALUES(2,2);
 INSERT into cli_pro VALUES(3,3);
 INSERT into cli_pro VALUES(4,4);
 INSERT into cli_pro VALUES(5,5);
 
 
   CREATE TABLE pro_ite(
    cod_p2 int,
     num_i1 int,
     CONSTRAINT fk_fp2 FOREIGN key(cod_p2) REFERENCES producto(cod_p),
     CONSTRAINT fk_i1 FOREIGN key(num_i1) REFERENCES item_ventas(num_i)
   );
   
  INSERT into pro_ite values(1,1);
  INSERT into pro_ite values(2,2);
  INSERT into pro_ite values(3,3);
  INSERT into pro_ite values(4,4);
  INSERT into pro_ite values(5,5);
  
  CREATE table cli_ven(
  cod_c2 int,
    num_v1 int,
    CONSTRAINT fk_fc2 FOREIGN key(cod_c2) REFERENCES cliente(cod_c),
    CONSTRAINT fk_fv1 FOREIGN key(num_v1) REFERENCES ventas(num_v)
  );
  
  insert into cli_ven VALUES(1,1);
  insert into cli_ven VALUES(2,2);
  insert into cli_ven VALUES(3,3);
  insert into cli_ven VALUES(4,4);
  insert into cli_ven VALUES(5,5); 
