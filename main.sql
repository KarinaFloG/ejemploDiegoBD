-- Inicializar la variable de ambiente NLS_LANG
-- antes de ejecutar este script para que los
-- caracteres como ñ y acentos se vean bien
-- ejecutar: export NLS_LANG=American_America.UTF8


connect sys/system as sysdba

Prompt Crea un nuevo usuario...
Prompt Proporcione usuario y password

create user &&usuario identified by &&password quota unlimited on users;    
grant create session, create table, create sequence to &usuario;

connect &usuario/&password

Prompt Creando objetos...
@ddl.sql

Prompt Cargando datos...
@dml.sql

Prompt Ya está listo prebe
