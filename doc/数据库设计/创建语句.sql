--建表空间
CREATE TABLESPACE mcyl_data DATAFILE 'D:\ORACL\mcyl.dbf' SIZE  256M AUTOEXTEND ON NEXT 32M MAXSIZE UNLIMITED LOGGING EXTENT MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT  AUTO



-- Create the user 
create user mcyl
  default tablespace mcyl_data identified by mcyl
  temporary tablespace TEMP
  profile DEFAULT;
-- Grant/Revoke role privileges 
grant resource to mcyl;
-- Grant/Revoke system privileges 
grant create session to mcyl;
grant unlimited tablespace to mcyl;
--给用户DBA权限
grant DBA to mcyl
