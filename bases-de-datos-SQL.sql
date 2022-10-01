CREATE TABLE carrera(
  clave_c INT,
  nom_c VARCHAR(50),
  durac_c FLOAT,
  CONSTRAINT pk_cc PRIMARY KEY(clave_c)
  );
  
  INSERT into carrera values (1,'derecho',3);
  INSERT into carrera values (2,'Ingeniria de Sistemas',4);
  INSERT into carrera values (3,'Contabilidad',5);
   
  CREATE TABLE materia(
    clave_m INT,
    nom_m VARCHAR(50),
    cred_m FLOAT,
    CONSTRAINT pk_cm PRIMARY key(clave_m)
    );
    
    INSERT into materia values (1,'matematicas',25);
     INSERT into materia VALUES (2,'Español',15);
      INSERT into materia values (3,'Ingles',25);
       INSERT into materia values (4,'sociales',45);
    
    UPDATE materia set nom_m = 'Tecnologia' where clave_m = 3

  CREATE TABLE profesor(
    clave_p INT,
    nom_p VARCHAR(36),
    dir_p VARCHAR(26),
    tel_p BIGINT,
    hor_p TIME,
    CONSTRAINT pk_cp primary key(clave_p)
    );
    
    INSERT into profesor VALUES (1,'laura rosas','calle azul',567867,'7:00');
      INSERT into profesor VALUES (2,'roberto diaz','calle rosa',56473526,'9:00');
         INSERT into profesor VALUEs (3,'cristian gonzales','calle gris',78539894,'9:00');
          INSERT into profesor VALUEs (4,'cristian gonzales','calle mora',57498704,'7:00');
         
    
    
    CREATE TABLE alumno(
      mat_alu INT,
      nom_alu varchar(98),
      edad_alu int,
      sem_alu int,
      gen_alu VARCHAR(10),
      clave_c1 int,
      CONSTRAINT pk_calu PRIMARY key(mat_alu),
      CONSTRAINT fk_fc1 FOREIGN key(clave_c1) REFERENCES carrera (clave_c)
      ); 
      
      insert into alumno values(1,'Sandra reyes',17,5,'mujer',1);
      insert into alumno values(2,'Andres Perez',19,6,'hombre',3);
      insert into alumno values(3,'Maria gonzales',19,4,'Mujer',2);
      insert into alumno values(4,'juan solano',18,6,'hombre',3);
      insert into alumno values(5,'carlos teves',16,2,'hombre',1);
      
      
      CREATE TABLE alu_pro(
      mat_alu1 int,
        clave_p1 int,
        CONSTRAINT fk_falu1 FOREIGN key(mat_alu1) references alumno (mat_alu),
        CONSTRAINT fk_fp1 FOREIGN key(clave_p1) REFERENCES profesor (clave_p)
      );
      
      insert into alu_pro VALUES(1,1);
      insert into alu_pro VALUES(2,2);
      insert into alu_pro VALUES(3,3);
      insert into alu_pro VALUES(4,4);
            
      CREATE table mat_pro(
      clave_m2 int,
        clave_p2 int,
        CONSTRAINT fk_fm2 FOREIGN key(clave_m2) REFERENCES materia (clave_m),
        CONSTRAINT fk_fp2 FOREIGN key(clave_p2) REFERENCES profesor (clave_p)
      );
      
      INSERT into mat_pro values(1,1);
      INSERT into mat_pro values(2,2);
      INSERT into mat_pro values(3,3);
      
      
      create TABLE mat_alu(
      clave_m1 int,
        mat_alu2 int,
        CONSTRAINT fk_fm1 FOREIGN key(clave_m1) REFERENCES materia (clave_m),
        CONSTRAINT fk_falu2 FOREIGN key(mat_alu2) REFERENCES alumno (mat_alu)
      );
      
      INSERT into mat_alu values(1,1);
      INSERT into mat_alu values(1,2);
      INSERT into mat_alu values(1,3);

select * from alumno
drop TABLE alu_pro
drop table mat_alu
DELETE from alumno where nom_alu = 'carlos teves' = 1
