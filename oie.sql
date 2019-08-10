--------------------------------------------------------
--  File created - Saturday-August-10-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type MIGR_FILTER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_FILTER" IS OBJECT (
  FILTER_TYPE INTEGER, -- Filter Types are 0-> ALL, 1->NAMELIST, 2->WHERE CLAUSE, 3->OBJECTID LIST
  OBJTYPE VARCHAR2(40),
  OBJECTIDS OBJECTIDLIST,
  NAMES NAMELIST,
  WHERECLAUSE VARCHAR2(1000));

/
--------------------------------------------------------
--  DDL for Type MIGR_FILTER_SET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_FILTER_SET" IS TABLE OF MIGR_FILTER;

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_DETAIL_ROW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_REPORT_DETAIL_ROW" AS OBJECT
 (CAPTURED_ID            NUMBER(38),
  CAPTURED_NAME          VARCHAR2(4000),
  CONVERTED_NAME          VARCHAR2(4000),
  CAPTURED_TYPE          VARCHAR2(4000),
  CONVERTED_TYPE          VARCHAR2(4000),
  CAPTURE_STATUS         VARCHAR2(20),
  CONVERT_STATUS         VARCHAR2(20),
  GENERATE_STATUS        VARCHAR2(20),
  LOGTEXT               VARCHAR2(4000)
 );
 

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_DETAIL_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_REPORT_DETAIL_TABLE" AS TABLE OF MIGR_REPORT_DETAIL_ROW;

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_SUM_ROW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_REPORT_SUM_ROW" AS OBJECT
       (LABEL           VARCHAR2(50),
	    SCHEMA_SUM      NUMBER,
        TABLE_SUM       NUMBER,
		INDEX_SUM       NUMBER,
		CONSTRAINT_SUM  NUMBER,
		VIEW_SUM        NUMBER,
		TRIGGER_SUM     NUMBER,
		SP_SUM          NUMBER		
        );

/
--------------------------------------------------------
--  DDL for Type MIGR_REPORT_SUM_TABLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."MIGR_REPORT_SUM_TABLE" AS TABLE OF MIGR_REPORT_SUM_ROW;

/
--------------------------------------------------------
--  DDL for Type NAMELIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."NAMELIST" IS TABLE OF VARCHAR2(40);

/
--------------------------------------------------------
--  DDL for Type NAME_AND_COUNT_ARRAY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."NAME_AND_COUNT_ARRAY" IS VARRAY(30) OF name_and_count_t;
 

/
--------------------------------------------------------
--  DDL for Type NAME_AND_COUNT_T
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."NAME_AND_COUNT_T" IS OBJECT (
  OBJECT_NAME varchar2(30),
  UPDATE_COUNT INTEGER);
 

/
--------------------------------------------------------
--  DDL for Type OBJECTIDLIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "OIE"."OBJECTIDLIST" IS TABLE OF INTEGER;

/
--------------------------------------------------------
--  DDL for Sequence DBOBJECTID_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "OIE"."DBOBJECTID_SEQUENCE"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 50 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence EMPID
--------------------------------------------------------

   CREATE SEQUENCE  "OIE"."EMPID"  MINVALUE 1 MAXVALUE 9999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 ORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Sequence TYPEID
--------------------------------------------------------

   CREATE SEQUENCE  "OIE"."TYPEID"  MINVALUE 1 MAXVALUE 9999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 ORDER  NOCYCLE  NOPARTITION ;
--------------------------------------------------------
--  DDL for Table BUDGET
--------------------------------------------------------

  CREATE TABLE "OIE"."BUDGET" 
   (	"ACCOUNT_ID" VARCHAR2(30 BYTE), 
	"ACCOUNT_NAME" VARCHAR2(20 BYTE), 
	"DEPTARTMENT" VARCHAR2(20 BYTE), 
	"ACCOUNT_BUDGET" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CURRENCY
--------------------------------------------------------

  CREATE TABLE "OIE"."CURRENCY" 
   (	"CURRENCY" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "OIE"."DEPT" 
   (	"DEPT_NAME" VARCHAR2(20 BYTE), 
	"DEPTID" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMP
--------------------------------------------------------

  CREATE TABLE "OIE"."EMP" 
   (	"USERNAME" VARCHAR2(15 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"EMPID" VARCHAR2(20 BYTE), 
	"EMPLLEVEL" VARCHAR2(1 BYTE), 
	"EMAILID" VARCHAR2(50 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"DEPARTMENT" VARCHAR2(5 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"MANAGER_TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXPENSE_TYPE
--------------------------------------------------------

  CREATE TABLE "OIE"."EXPENSE_TYPE" 
   (	"TYPE_ID" VARCHAR2(20 BYTE), 
	"EXPENSE_TYPE" VARCHAR2(50 BYTE), 
	"DESCRIPTON" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INVOICES_ALL
--------------------------------------------------------

  CREATE TABLE "OIE"."INVOICES_ALL" 
   (	"INVOICE_NUMBER" VARCHAR2(20 BYTE), 
	"INVOICE_DATE" VARCHAR2(20 BYTE), 
	"INVOICE_AMOUNT" VARCHAR2(20 BYTE), 
	"REPORT_STATUS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MANAGER
--------------------------------------------------------

  CREATE TABLE "OIE"."MANAGER" 
   (	"MANAGER_TYPE_ID" NUMBER, 
	"MANAGER_NAME" VARCHAR2(20 BYTE), 
	"MANAGER_TYPE" VARCHAR2(20 BYTE), 
	"MANAGER_EMPLOYEE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MD_ADDITIONAL_PROPERTIES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"REF_ID_FK" NUMBER, 
	"REF_TYPE" VARCHAR2(4000 BYTE), 
	"PROPERTY_ORDER" NUMBER, 
	"PROP_KEY" VARCHAR2(4000 BYTE), 
	"VALUE" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."CONNECTION_ID_FK" IS 'Connection to which this belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."REF_ID_FK" IS 'The object to which this property blongs';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."REF_TYPE" IS 'Type of object that this property belongs to';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."PROPERTY_ORDER" IS 'This is to handle a situation where multiple properties have a relevant order, or multiple properties have multiple values';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."PROP_KEY" IS 'The keyname for this property';
   COMMENT ON COLUMN "OIE"."MD_ADDITIONAL_PROPERTIES"."VALUE" IS 'The value for this property';
   COMMENT ON TABLE "OIE"."MD_ADDITIONAL_PROPERTIES"  IS 'This table is used to store additional properties in key-value pairs.  It is designed to store "other information" that is not supported in the main database object table.';
--------------------------------------------------------
--  DDL for Table MD_APPLICATIONFILES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_APPLICATIONFILES" 
   (	"ID" NUMBER, 
	"APPLICATIONS_ID_FK" NUMBER, 
	"NAME" VARCHAR2(200 BYTE), 
	"URI" VARCHAR2(4000 BYTE), 
	"TYPE" VARCHAR2(100 BYTE), 
	"STATE" VARCHAR2(100 BYTE), 
	"LANGUAGE" VARCHAR2(100 BYTE), 
	"LOC" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"UPDATED_ON" DATE, 
	"UPDATED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."NAME" IS 'file name  //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."URI" IS 'The uri is the part of the file url after the base dir has been removed.  See MD_APPLICATION for base dir';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."TYPE" IS 'This will denote the type of file we have, including DIR, FILE (text), BINARY, IGNORE (where we choose to ignore files)';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."STATE" IS 'State will be how this file is operated on.  For example. it will be OPEN, NEW, FIXED, IGNORED, REVIEWED, COMPLETE';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."LANGUAGE" IS 'Language of the file that has been processed.';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."SECURITY_GROUP_ID" IS 'APEX';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."CREATED_ON" IS 'APEX';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."CREATED_BY" IS 'APEX';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."UPDATED_ON" IS 'APEX';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONFILES"."UPDATED_BY" IS 'APEX';
   COMMENT ON TABLE "OIE"."MD_APPLICATIONFILES"  IS 'Holds a tuple for each file that is being processed whether it is changed or not.';
--------------------------------------------------------
--  DDL for Table MD_APPLICATIONS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_APPLICATIONS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"DESCRIPTION" VARCHAR2(4000 BYTE), 
	"BASE_DIR" VARCHAR2(4000 BYTE), 
	"OUTPUT_DIR" VARCHAR2(4000 BYTE), 
	"BACKUP_DIR" VARCHAR2(4000 BYTE), 
	"INPLACE" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."NAME" IS 'Name of the application suite  //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."DESCRIPTION" IS 'Overview of what the application does.';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."BASE_DIR" IS 'This is the base src directory for the application.  It could be an svn checkout, a clearcase view or something similar';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."OUTPUT_DIR" IS 'This is the output directory where the scanner will present the converted files, if there are converted or modified.';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."BACKUP_DIR" IS 'This is the directory in which the application files are backed up if a backp is chosen';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."INPLACE" IS 'Designates whether the changes have been made inplace, in the source directory or not';
   COMMENT ON COLUMN "OIE"."MD_APPLICATIONS"."CONNECTION_ID_FK" IS 'captured model of the database(s) this application relates to';
   COMMENT ON TABLE "OIE"."MD_APPLICATIONS"  IS 'This is the base table for application projects.  It holds the base information for applications associated with a database';
--------------------------------------------------------
--  DDL for Table MD_CATALOGS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_CATALOGS" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"CATALOG_NAME" VARCHAR2(4000 BYTE), 
	"DUMMY_FLAG" CHAR(1 BYTE) DEFAULT 'N', 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_CATALOGS"."CONNECTION_ID_FK" IS 'Foreign key into the connections table - Shows what connection this catalog belongs to //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_CATALOGS"."CATALOG_NAME" IS 'Name of the catalog //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_CATALOGS"."DUMMY_FLAG" IS 'Flag to show if this catalog is a "dummy" catalog which is used as a placeholder for those platforms that do not support catalogs.  ''N'' signifies that this is NOT a dummy catalog, while ''Y'' signifies that it is.';
   COMMENT ON COLUMN "OIE"."MD_CATALOGS"."NATIVE_SQL" IS 'THe SQL used to create this catalog';
   COMMENT ON COLUMN "OIE"."MD_CATALOGS"."NATIVE_KEY" IS 'A unique identifier used to identify the catalog at source.';
   COMMENT ON TABLE "OIE"."MD_CATALOGS"  IS 'Store catalogs in this table.';
--------------------------------------------------------
--  DDL for Table MD_COLUMNS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_COLUMNS" 
   (	"ID" NUMBER, 
	"TABLE_ID_FK" NUMBER, 
	"COLUMN_NAME" VARCHAR2(4000 BYTE), 
	"COLUMN_ORDER" NUMBER, 
	"COLUMN_TYPE" VARCHAR2(4000 BYTE), 
	"PRECISION" NUMBER, 
	"SCALE" NUMBER, 
	"NULLABLE" CHAR(1 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"DATATYPE_TRANSFORMED_FLAG" CHAR(1 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."TABLE_ID_FK" IS 'The table that this column is part of //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."COLUMN_NAME" IS 'The name of the column //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."COLUMN_ORDER" IS 'The order this appears in the table';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."COLUMN_TYPE" IS 'The type of the column';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."PRECISION" IS 'The precision on the column';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."SCALE" IS 'The scale of the column';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."NULLABLE" IS 'Yes or No.  Null signifies NO';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."DEFAULT_VALUE" IS 'Default value on the column';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."NATIVE_SQL" IS 'The SQL used to create this column at source';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."NATIVE_KEY" IS 'Unique identifier for this object at source';
   COMMENT ON COLUMN "OIE"."MD_COLUMNS"."DATATYPE_TRANSFORMED_FLAG" IS 'This is set to ''Y'' to show if the data type was transformed.  This is useful so we don''t apply more than 1 datatype transformation to a column';
   COMMENT ON TABLE "OIE"."MD_COLUMNS"  IS 'Column information is stored in this table.';
--------------------------------------------------------
--  DDL for Table MD_CONNECTIONS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_CONNECTIONS" 
   (	"ID" NUMBER, 
	"PROJECT_ID_FK" NUMBER, 
	"TYPE" VARCHAR2(4000 BYTE), 
	"HOST" VARCHAR2(4000 BYTE), 
	"PORT" NUMBER, 
	"USERNAME" VARCHAR2(4000 BYTE), 
	"PASSWORD" VARCHAR2(4000 BYTE), 
	"DBURL" VARCHAR2(4000 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"NATIVE_SQL" CLOB, 
	"STATUS" VARCHAR2(30 BYTE), 
	"NUM_CATALOGS" NUMBER, 
	"NUM_COLUMNS" NUMBER, 
	"NUM_CONSTRAINTS" NUMBER, 
	"NUM_GROUPS" NUMBER, 
	"NUM_ROLES" NUMBER, 
	"NUM_INDEXES" NUMBER, 
	"NUM_OTHER_OBJECTS" NUMBER, 
	"NUM_PACKAGES" NUMBER, 
	"NUM_PRIVILEGES" NUMBER, 
	"NUM_SCHEMAS" NUMBER, 
	"NUM_SEQUENCES" NUMBER, 
	"NUM_STORED_PROGRAMS" NUMBER, 
	"NUM_SYNONYMS" NUMBER, 
	"NUM_TABLES" NUMBER, 
	"NUM_TABLESPACES" NUMBER, 
	"NUM_TRIGGERS" NUMBER, 
	"NUM_USER_DEFINED_DATA_TYPES" NUMBER, 
	"NUM_USERS" NUMBER, 
	"NUM_VIEWS" NUMBER, 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."ID" IS 'Primary key';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."PROJECT_ID_FK" IS 'The project to which this connection belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."TYPE" IS 'The type of the connection - For example it could be used to store "ORACLE" or "MYSQL"';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."HOST" IS 'The host to which this connection connects.';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."PORT" IS 'The port to which this connection connects';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."USERNAME" IS 'The username used to make the connection';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."PASSWORD" IS 'The password used to make this connection';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."DBURL" IS 'The database url used to make this connection';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."NAME" IS '//OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."NATIVE_SQL" IS 'The native sql used to create this connection';
   COMMENT ON COLUMN "OIE"."MD_CONNECTIONS"."STATUS" IS 'Status of Migration, = captured,converted,generated,datamoved';
   COMMENT ON TABLE "OIE"."MD_CONNECTIONS"  IS 'This table is used to store connection information.  For example, in migrations, we could be carrying out a consolidation which occurs across many connections.';
--------------------------------------------------------
--  DDL for Table MD_CONSTRAINTS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_CONSTRAINTS" 
   (	"ID" NUMBER, 
	"DELETE_CLAUSE" VARCHAR2(4000 BYTE), 
	"NAME" VARCHAR2(4000 BYTE), 
	"CONSTRAINT_TYPE" VARCHAR2(4000 BYTE), 
	"TABLE_ID_FK" NUMBER, 
	"REFTABLE_ID_FK" NUMBER, 
	"CONSTRAINT_TEXT" CLOB, 
	"LANGUAGE" VARCHAR2(40 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONSTRAINT_TEXT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."DELETE_CLAUSE" IS 'delete option , can be either CASCADE, RESTRICT or NULL';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."NAME" IS 'Name of the constraint //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."CONSTRAINT_TYPE" IS 'Type of the constraint (e.g. CHECK)';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."TABLE_ID_FK" IS 'Table on which this constraint exists //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."REFTABLE_ID_FK" IS 'Used in foreign keys - this gives the table that we refer to.';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."CONSTRAINT_TEXT" IS 'The text of the constraint';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINTS"."LANGUAGE" IS '//PUBLIC';
   COMMENT ON TABLE "OIE"."MD_CONSTRAINTS"  IS 'Table for storing information about a constraint';
--------------------------------------------------------
--  DDL for Table MD_CONSTRAINT_DETAILS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_CONSTRAINT_DETAILS" 
   (	"ID" NUMBER, 
	"REF_FLAG" CHAR(1 BYTE) DEFAULT 'N', 
	"CONSTRAINT_ID_FK" NUMBER, 
	"COLUMN_ID_FK" NUMBER, 
	"COLUMN_PORTION" NUMBER, 
	"CONSTRAINT_TEXT" CLOB, 
	"DETAIL_ORDER" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONSTRAINT_TEXT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_CONSTRAINT_DETAILS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINT_DETAILS"."REF_FLAG" IS '"N" or Null signify that this column is the colum that is used in the constraint.  A flag of Y signifies that the colum is a referenced column (i.e. part of a foreign key constraint)';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINT_DETAILS"."CONSTRAINT_ID_FK" IS 'Constraint that this detail belongs to //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINT_DETAILS"."COLUMN_PORTION" IS 'The portion of a column this detail belongs (e.g. for constrints on substrings)';
   COMMENT ON COLUMN "OIE"."MD_CONSTRAINT_DETAILS"."CONSTRAINT_TEXT" IS 'The text of the constraint';
   COMMENT ON TABLE "OIE"."MD_CONSTRAINT_DETAILS"  IS 'Constraint details show what columns are "involved" in a constraint.';
--------------------------------------------------------
--  DDL for Table MD_DERIVATIVES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_DERIVATIVES" 
   (	"ID" NUMBER, 
	"SRC_ID" NUMBER, 
	"SRC_TYPE" VARCHAR2(4000 BYTE), 
	"DERIVED_ID" NUMBER, 
	"DERIVED_TYPE" VARCHAR2(4000 BYTE), 
	"DERIVED_CONNECTION_ID_FK" NUMBER, 
	"TRANSFORMED" CHAR(1 BYTE), 
	"ORIGINAL_IDENTIFIER" VARCHAR2(4000 BYTE), 
	"NEW_IDENTIFIER" VARCHAR2(4000 BYTE), 
	"DERIVED_OBJECT_NAMESPACE" VARCHAR2(40 BYTE), 
	"DERIVATIVE_REASON" VARCHAR2(10 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_DERIVATIVES"."TRANSFORMED" IS 'Set this field to ''Y'' if we carry out any sort of transformation on teh derived object.';
   COMMENT ON TABLE "OIE"."MD_DERIVATIVES"  IS 'This table is used to store objects that are derived from each other.  For example in a migration an auto-increment column in a source model could be mapped to a primary key, and a sequence, and a trigger.  The MD_DERIVATIVES table would store the fact that these 3 objects are derived from the auto-increment column.';
--------------------------------------------------------
--  DDL for Table MD_FILE_ARTIFACTS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_FILE_ARTIFACTS" 
   (	"ID" NUMBER, 
	"APPLICATIONFILES_ID" NUMBER, 
	"PATTERN" VARCHAR2(4000 BYTE), 
	"STRING_FOUND" VARCHAR2(4000 BYTE), 
	"STRING_REPLACED" VARCHAR2(4000 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"STATUS" VARCHAR2(4000 BYTE), 
	"LINE" NUMBER, 
	"PATTERN_START" NUMBER, 
	"PATTERN_END" NUMBER, 
	"DUE_DATE" DATE, 
	"DB_TYPE" VARCHAR2(100 BYTE), 
	"CODE_TYPE" VARCHAR2(1000 BYTE), 
	"DESCRIPTION" VARCHAR2(4000 BYTE), 
	"PRIORITY" NUMBER(*,0), 
	"SECURITY_GROUP_ID" VARCHAR2(20 BYTE) DEFAULT '0', 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(4000 BYTE), 
	"LAST_UPDATED" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."PATTERN" IS 'Pattern used to search source file for interesting artifiacts';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."STRING_FOUND" IS 'String found in source from the pattern supplied';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."STRING_REPLACED" IS 'This is the string which replace the string found if it was replaced.';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."TYPE" IS 'This is the type of the replacement.  It could be a straight replace from a replacement pattern, or we could have passed the string to a translator which would change the string depending on the database.';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."STATUS" IS 'Pattern used to search source file for interesting artifiacts';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."DUE_DATE" IS 'Due date is used by the TODO mechanism to manage the validation and work to complete this change';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."DB_TYPE" IS 'Source database calls type';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."CODE_TYPE" IS 'Source code db api, like dblib, jdbc';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."DESCRIPTION" IS 'This is a description of the artifact which will have a default generated by the scanner and then can be modified by the user to be more appropriate for their use';
   COMMENT ON COLUMN "OIE"."MD_FILE_ARTIFACTS"."PRIORITY" IS 'The priority is set for the TODOs so they can be managed by the user';
   COMMENT ON TABLE "OIE"."MD_FILE_ARTIFACTS"  IS 'Holds a tuple for each interesting thing the scanner finds in a file';
--------------------------------------------------------
--  DDL for Table MD_GROUPS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_GROUPS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"GROUP_NAME" VARCHAR2(4000 BYTE), 
	"GROUP_FLAG" CHAR(1 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_GROUPS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_GROUPS"."SCHEMA_ID_FK" IS 'Schema in which this object belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_GROUPS"."GROUP_NAME" IS 'Name of the group //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_GROUPS"."GROUP_FLAG" IS 'This is a flag to signify a group or a role.  If this is ''R'' it means the group is known as a Role.  Any other value means it is known as a group.';
   COMMENT ON COLUMN "OIE"."MD_GROUPS"."NATIVE_SQL" IS 'SQL Used to generate this object at source';
   COMMENT ON COLUMN "OIE"."MD_GROUPS"."NATIVE_KEY" IS 'Unique id for this object at source';
   COMMENT ON TABLE "OIE"."MD_GROUPS"  IS 'Groups of users in a schema';
--------------------------------------------------------
--  DDL for Table MD_GROUP_MEMBERS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_GROUP_MEMBERS" 
   (	"ID" NUMBER, 
	"GROUP_ID_FK" NUMBER, 
	"USER_ID_FK" NUMBER, 
	"GROUP_MEMBER_ID_FK" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_GROUP_MEMBERS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_GROUP_MEMBERS"."USER_ID_FK" IS 'Id of member';
   COMMENT ON COLUMN "OIE"."MD_GROUP_MEMBERS"."GROUP_MEMBER_ID_FK" IS 'groups can be members of groups';
   COMMENT ON TABLE "OIE"."MD_GROUP_MEMBERS"  IS 'This table is used to store the members of a group.';
--------------------------------------------------------
--  DDL for Table MD_GROUP_PRIVILEGES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_GROUP_PRIVILEGES" 
   (	"ID" NUMBER, 
	"GROUP_ID_FK" NUMBER, 
	"PRIVILEGE_ID_FK" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "OIE"."MD_GROUP_PRIVILEGES"  IS 'This table stores the privileges granted to a group (or role)';
--------------------------------------------------------
--  DDL for Table MD_INDEXES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_INDEXES" 
   (	"ID" NUMBER, 
	"INDEX_TYPE" VARCHAR2(4000 BYTE), 
	"TABLE_ID_FK" NUMBER, 
	"INDEX_NAME" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_INDEXES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_INDEXES"."INDEX_TYPE" IS 'Type of the index e.g. PRIMARY';
   COMMENT ON COLUMN "OIE"."MD_INDEXES"."TABLE_ID_FK" IS 'Table that this index is on //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_INDEXES"."INDEX_NAME" IS 'Name of the index //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_INDEXES"."NATIVE_SQL" IS 'SQL used to create the index at source';
   COMMENT ON COLUMN "OIE"."MD_INDEXES"."NATIVE_KEY" IS 'A unique identifier for this object at the source';
   COMMENT ON TABLE "OIE"."MD_INDEXES"  IS 'This table is used to store information about the indexes in a schema';
--------------------------------------------------------
--  DDL for Table MD_INDEX_DETAILS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_INDEX_DETAILS" 
   (	"ID" NUMBER, 
	"INDEX_ID_FK" NUMBER, 
	"COLUMN_ID_FK" NUMBER, 
	"INDEX_PORTION" NUMBER, 
	"DETAIL_ORDER" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_INDEX_DETAILS"."INDEX_ID_FK" IS 'The index to which this detail belongs. //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_INDEX_DETAILS"."INDEX_PORTION" IS 'To support indexing on part of a field';
   COMMENT ON TABLE "OIE"."MD_INDEX_DETAILS"  IS 'This table stores the details of an index.  It shows what columns are "part" of the index.';
--------------------------------------------------------
--  DDL for Table MD_MIGR_DEPENDENCY
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_MIGR_DEPENDENCY" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"PARENT_ID" NUMBER, 
	"CHILD_ID" NUMBER, 
	"PARENT_OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"CHILD_OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_MIGR_DEPENDENCY"."CONNECTION_ID_FK" IS 'The connection that this exists in //PARENTFIELD';
--------------------------------------------------------
--  DDL for Table MD_MIGR_PARAMETER
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_MIGR_PARAMETER" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"OBJECT_ID" NUMBER, 
	"OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"PARAM_EXISTING" NUMBER, 
	"PARAM_ORDER" NUMBER, 
	"PARAM_NAME" VARCHAR2(4000 BYTE), 
	"PARAM_TYPE" VARCHAR2(4000 BYTE), 
	"PARAM_DATA_TYPE" VARCHAR2(4000 BYTE), 
	"PERCISION" NUMBER, 
	"SCALE" NUMBER, 
	"NULLABLE" CHAR(1 BYTE), 
	"DEFAULT_VALUE" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_MIGR_PARAMETER"."CONNECTION_ID_FK" IS 'the connection in which this belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_MIGR_PARAMETER"."PARAM_EXISTING" IS '1 represents a new parameter for PL/SQL that was not present in the origional. 0 represents a n existing parameter that was present in the origional';
   COMMENT ON COLUMN "OIE"."MD_MIGR_PARAMETER"."PARAM_ORDER" IS 'IF -1 THEN THIS PARAM IS A RETURN PARAMETER. 1 WILL BE THE FIRST PARAMETER IN THE PARAMETER LIST';
--------------------------------------------------------
--  DDL for Table MD_MIGR_WEAKDEP
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_MIGR_WEAKDEP" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"PARENT_ID" NUMBER, 
	"CHILD_NAME" VARCHAR2(4000 BYTE), 
	"PARENT_TYPE" VARCHAR2(4000 BYTE), 
	"CHILD_TYPE" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_MIGR_WEAKDEP"."CHILD_NAME" IS 'name of the child,  as weak dependencies dont have reference to child id';
   COMMENT ON COLUMN "OIE"."MD_MIGR_WEAKDEP"."PARENT_TYPE" IS 'MD_<tablename>';
   COMMENT ON COLUMN "OIE"."MD_MIGR_WEAKDEP"."CHILD_TYPE" IS 'Generic Type (not MD_<tablename>)';
--------------------------------------------------------
--  DDL for Table MD_NUMROW$SOURCE
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_NUMROW$SOURCE" 
   (	"NUMROWS" NUMBER(10,0), 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MD_NUMROW$TARGET
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_NUMROW$TARGET" 
   (	"NUMROWS" NUMBER(10,0), 
	"NAME" VARCHAR2(4000 BYTE), 
	"OBJID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MD_OTHER_OBJECTS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_OTHER_OBJECTS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_OTHER_OBJECTS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_OTHER_OBJECTS"."SCHEMA_ID_FK" IS 'Schema to which this object blongs. //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_OTHER_OBJECTS"."NAME" IS 'Name of this object //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_OTHER_OBJECTS"."NATIVE_SQL" IS 'The native SQL used to create this object';
   COMMENT ON COLUMN "OIE"."MD_OTHER_OBJECTS"."NATIVE_KEY" IS 'A key that identifies this object at source.';
   COMMENT ON TABLE "OIE"."MD_OTHER_OBJECTS"  IS 'For storing objects that don''''t belong anywhere else';
--------------------------------------------------------
--  DDL for Table MD_PACKAGES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_PACKAGES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"PACKAGE_HEADER" CLOB, 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"LANGUAGE" VARCHAR2(40 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("PACKAGE_HEADER") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."SCHEMA_ID_FK" IS 'the schema in which this package resides //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."NAME" IS 'Name of this package //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."NATIVE_SQL" IS 'The SQL used to create this package at source';
   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."NATIVE_KEY" IS 'A unique identifer for this object at source.';
   COMMENT ON COLUMN "OIE"."MD_PACKAGES"."LANGUAGE" IS '//PUBLIC';
   COMMENT ON TABLE "OIE"."MD_PACKAGES"  IS 'For storing packages';
--------------------------------------------------------
--  DDL for Table MD_PARTITIONS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_PARTITIONS" 
   (	"ID" NUMBER, 
	"TABLE_ID_FK" NUMBER, 
	"NATIVE_SQL" CLOB, 
	"PARTITION_EXPRESSION" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_PARTITIONS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_PARTITIONS"."TABLE_ID_FK" IS 'The table that this partition refers to //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_PARTITIONS"."NATIVE_SQL" IS 'The SQL used to create this partition at source';
   COMMENT ON COLUMN "OIE"."MD_PARTITIONS"."PARTITION_EXPRESSION" IS 'The partition expression';
   COMMENT ON TABLE "OIE"."MD_PARTITIONS"  IS 'Partition information is stored in this table.';
--------------------------------------------------------
--  DDL for Table MD_PRIVILEGES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_PRIVILEGES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"PRIVILEGE_NAME" VARCHAR2(4000 BYTE), 
	"PRIVELEGE_OBJECT_ID" NUMBER, 
	"PRIVELEGEOBJECTTYPE" VARCHAR2(4000 BYTE), 
	"PRIVELEGE_TYPE" VARCHAR2(4000 BYTE), 
	"ADMIN_OPTION" CHAR(1 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."SCHEMA_ID_FK" IS 'The schema to which this object belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."PRIVILEGE_NAME" IS 'The name of the privilege //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."PRIVELEGE_OBJECT_ID" IS 'This references the table, view, etc on which the privelege exists.  This can be NULL for things like system wide privileges';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."PRIVELEGEOBJECTTYPE" IS 'The type the privelege is on (e.g. INDEX)';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."PRIVELEGE_TYPE" IS 'e.g.select';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."ADMIN_OPTION" IS 'Flag to show if this was granted with admin option.  ''Y'' means it was granted with admin option ''N'' means it was NOT granted with admin option.  NULL means not applicable (e.g. not known, not supported by source platform, etc.)';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."NATIVE_SQL" IS 'The SQL used to create this privilege at source';
   COMMENT ON COLUMN "OIE"."MD_PRIVILEGES"."NATIVE_KEY" IS 'An identifier for this object at source.';
   COMMENT ON TABLE "OIE"."MD_PRIVILEGES"  IS 'This table stores privilege information';
--------------------------------------------------------
--  DDL for Table MD_PROJECTS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_PROJECTS" 
   (	"ID" NUMBER, 
	"PROJECT_NAME" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_PROJECTS"."ID" IS 'Primary key';
   COMMENT ON COLUMN "OIE"."MD_PROJECTS"."PROJECT_NAME" IS 'Name of the project //OBJECTNAME';
   COMMENT ON TABLE "OIE"."MD_PROJECTS"  IS 'This is a top level container for a set of connections.';
--------------------------------------------------------
--  DDL for Table MD_REGISTRY
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_REGISTRY" 
   (	"OBJECT_TYPE" VARCHAR2(30 BYTE), 
	"OBJECT_NAME" VARCHAR2(30 BYTE), 
	"DESC_OBJECT_NAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "OIE"."MD_REGISTRY"  IS 'Table to store information on the MD_ repository.  This lists the objects to be dropped if you wish to remove the repository';
--------------------------------------------------------
--  DDL for Table MD_REPOVERSIONS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_REPOVERSIONS" 
   (	"REVISION" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "OIE"."MD_REPOVERSIONS"  IS 'This table is used to version this schema for future requirements.';
--------------------------------------------------------
--  DDL for Table MD_SCHEMAS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_SCHEMAS" 
   (	"ID" NUMBER, 
	"CATALOG_ID_FK" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"CHARACTER_SET" VARCHAR2(4000 BYTE), 
	"VERSION_TAG" VARCHAR2(40 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."CATALOG_ID_FK" IS 'Catalog to which this schema blongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."NAME" IS 'Name of the schema //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."TYPE" IS 'Type of this schema.  Eaxamples are ''CAPTURED'' OR ''CONVERTED''';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."CHARACTER_SET" IS 'The characterset of this schema';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."VERSION_TAG" IS 'A version string that can be used for tagging/baseling a schema';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."NATIVE_SQL" IS 'The native SQL used to create this schema';
   COMMENT ON COLUMN "OIE"."MD_SCHEMAS"."NATIVE_KEY" IS 'A unique identifier that this schema is known as in its source state.';
   COMMENT ON TABLE "OIE"."MD_SCHEMAS"  IS 'This is the holder for schemas';
--------------------------------------------------------
--  DDL for Table MD_SEQUENCES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_SEQUENCES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"SEQ_START" NUMBER, 
	"INCR" NUMBER DEFAULT 1, 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE) DEFAULT '0', 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."SCHEMA_ID_FK" IS 'The schema to which this object belongs. //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."NAME" IS 'Name of this sequence //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."SEQ_START" IS 'Starting point of the sequence';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."INCR" IS 'Increment value of the sequence';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."NATIVE_SQL" IS 'SQL used to create this object at source';
   COMMENT ON COLUMN "OIE"."MD_SEQUENCES"."NATIVE_KEY" IS 'Identifier for this object at source.';
   COMMENT ON TABLE "OIE"."MD_SEQUENCES"  IS 'For storing information on sequences.';
--------------------------------------------------------
--  DDL for Table MD_STORED_PROGRAMS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_STORED_PROGRAMS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"PROGRAMTYPE" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(4000 BYTE), 
	"PACKAGE_ID_FK" NUMBER, 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"LANGUAGE" VARCHAR2(40 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"LINECOUNT" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."SCHEMA_ID_FK" IS 'Schema to which this object belongs.  Note that the PACKAGE_ID_FK (if present also leads us to the relevant schema), however a stored program may or may not belong in a package.  If it is in a package, then the SCHEMA_ID_FK and the SCHEME_ID_FK in the parent package should match //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."PROGRAMTYPE" IS 'Java/TSQL/PLSQL, etc.';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."NAME" IS 'Name of the stored program //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."PACKAGE_ID_FK" IS 'The package to which this object belongs';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."NATIVE_SQL" IS 'The SQL used to create this object at source';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."NATIVE_KEY" IS 'A unique indetifier for this object at source';
   COMMENT ON COLUMN "OIE"."MD_STORED_PROGRAMS"."LANGUAGE" IS '//PUBLIC';
   COMMENT ON TABLE "OIE"."MD_STORED_PROGRAMS"  IS 'Container for stored programs.';
--------------------------------------------------------
--  DDL for Table MD_SYNONYMS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_SYNONYMS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"NAME" VARCHAR2(4000 BYTE), 
	"SYNONYM_FOR_ID" NUMBER, 
	"FOR_OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"PRIVATE_VISIBILITY" CHAR(1 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."SCHEMA_ID_FK" IS 'The schema to which this object belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."NAME" IS 'Synonym name //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."SYNONYM_FOR_ID" IS 'What object this is a synonym for';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."FOR_OBJECT_TYPE" IS 'The type this is a synonym for (e.g. INDEX)';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."PRIVATE_VISIBILITY" IS 'Visibility - Private or Public.  If Private_visibility = ''Y'' means this is a private synonym.  Anything else means it is a public synonym';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."NATIVE_SQL" IS 'The SQL used to create this object at source';
   COMMENT ON COLUMN "OIE"."MD_SYNONYMS"."NATIVE_KEY" IS 'An identifier for this object at source.';
   COMMENT ON TABLE "OIE"."MD_SYNONYMS"  IS 'For storing synonym information.';
--------------------------------------------------------
--  DDL for Table MD_TABLES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_TABLES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"TABLE_NAME" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"QUALIFIED_NATIVE_NAME" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_TABLES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_TABLES"."SCHEMA_ID_FK" IS 'Schema in which this table resides //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_TABLES"."TABLE_NAME" IS 'Name of the table //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_TABLES"."NATIVE_SQL" IS 'SQL Used to create this table at soruce';
   COMMENT ON COLUMN "OIE"."MD_TABLES"."NATIVE_KEY" IS 'Unique identifier for this table at source';
   COMMENT ON TABLE "OIE"."MD_TABLES"  IS 'Table used to store information about tables.';
--------------------------------------------------------
--  DDL for Table MD_TABLESPACES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_TABLESPACES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"TABLESPACE_NAME" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_TABLESPACES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_TABLESPACES"."SCHEMA_ID_FK" IS 'Schema to which this tablespace belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_TABLESPACES"."TABLESPACE_NAME" IS 'Name of the table space //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_TABLESPACES"."NATIVE_SQL" IS 'The SQL used to create this tablespace';
   COMMENT ON COLUMN "OIE"."MD_TABLESPACES"."NATIVE_KEY" IS 'A unique identifier for this object at source';
   COMMENT ON TABLE "OIE"."MD_TABLESPACES"  IS 'For storing information about tablespaces.';
--------------------------------------------------------
--  DDL for Table MD_TRIGGERS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_TRIGGERS" 
   (	"ID" NUMBER, 
	"TABLE_OR_VIEW_ID_FK" NUMBER, 
	"TRIGGER_ON_FLAG" CHAR(1 BYTE), 
	"TRIGGER_NAME" VARCHAR2(4000 BYTE), 
	"TRIGGER_TIMING" VARCHAR2(4000 BYTE), 
	"TRIGGER_OPERATION" VARCHAR2(4000 BYTE), 
	"TRIGGER_EVENT" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"LANGUAGE" VARCHAR2(40 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"LINECOUNT" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TABLE_OR_VIEW_ID_FK" IS 'Table on which this trigger fires';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TRIGGER_ON_FLAG" IS 'Flag to show iif the trigger is on a table or a view.  If it is a table this should be ''T''. If it is on a view this should be ''V''';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TRIGGER_NAME" IS 'Name of the trigger //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TRIGGER_TIMING" IS 'before, after ,etc.';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TRIGGER_OPERATION" IS 'insert, delete, etc.';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."TRIGGER_EVENT" IS 'The actual trigger that gets fired ';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."NATIVE_SQL" IS 'The full definition ';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."NATIVE_KEY" IS 'UInique identifer for this object at source';
   COMMENT ON COLUMN "OIE"."MD_TRIGGERS"."LANGUAGE" IS '//PUBLIC';
   COMMENT ON TABLE "OIE"."MD_TRIGGERS"  IS 'For storing information about triggers.';
--------------------------------------------------------
--  DDL for Table MD_USERS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_USERS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"USERNAME" VARCHAR2(4000 BYTE), 
	"PASSWORD" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_USERS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_USERS"."SCHEMA_ID_FK" IS 'Shema in which this object belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_USERS"."USERNAME" IS 'Username for login //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_USERS"."PASSWORD" IS 'Password for login';
   COMMENT ON COLUMN "OIE"."MD_USERS"."NATIVE_SQL" IS 'SQL Used to create this object at source';
   COMMENT ON COLUMN "OIE"."MD_USERS"."NATIVE_KEY" IS 'Unique identifier for this object at source.';
   COMMENT ON TABLE "OIE"."MD_USERS"  IS 'User information.';
--------------------------------------------------------
--  DDL for Table MD_USER_DEFINED_DATA_TYPES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"DATA_TYPE_NAME" VARCHAR2(4000 BYTE), 
	"DEFINITION" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."SCHEMA_ID_FK" IS 'Schema to which this object blongs. //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."DATA_TYPE_NAME" IS 'The name of the data type //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."DEFINITION" IS 'The definition of the data type';
   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."NATIVE_SQL" IS 'The native SQL used to create this object';
   COMMENT ON COLUMN "OIE"."MD_USER_DEFINED_DATA_TYPES"."NATIVE_KEY" IS 'An unique identifier for this object at source.';
   COMMENT ON TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES"  IS 'For storing information on user defined data types.';
--------------------------------------------------------
--  DDL for Table MD_USER_PRIVILEGES
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_USER_PRIVILEGES" 
   (	"ID" NUMBER, 
	"USER_ID_FK" NUMBER, 
	"PRIVILEGE_ID_FK" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UDPATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MD_USER_PRIVILEGES"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_USER_PRIVILEGES"."USER_ID_FK" IS 'User';
   COMMENT ON COLUMN "OIE"."MD_USER_PRIVILEGES"."PRIVILEGE_ID_FK" IS 'Privilege';
   COMMENT ON TABLE "OIE"."MD_USER_PRIVILEGES"  IS 'This table stores privileges granted to individual users';
--------------------------------------------------------
--  DDL for Table MD_VIEWS
--------------------------------------------------------

  CREATE TABLE "OIE"."MD_VIEWS" 
   (	"ID" NUMBER, 
	"SCHEMA_ID_FK" NUMBER, 
	"VIEW_NAME" VARCHAR2(4000 BYTE), 
	"NATIVE_SQL" CLOB, 
	"NATIVE_KEY" VARCHAR2(4000 BYTE), 
	"LANGUAGE" VARCHAR2(40 BYTE), 
	"COMMENTS" VARCHAR2(4000 BYTE), 
	"LINECOUNT" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NATIVE_SQL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;

   COMMENT ON COLUMN "OIE"."MD_VIEWS"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MD_VIEWS"."SCHEMA_ID_FK" IS 'The schema to which this obect blongs. //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MD_VIEWS"."VIEW_NAME" IS 'The name of the view //OBJECTNAME';
   COMMENT ON COLUMN "OIE"."MD_VIEWS"."NATIVE_SQL" IS 'The SQL used to create this object at source';
   COMMENT ON COLUMN "OIE"."MD_VIEWS"."NATIVE_KEY" IS 'An identifier for this object at source.';
   COMMENT ON COLUMN "OIE"."MD_VIEWS"."LANGUAGE" IS '//PUBLIC';
   COMMENT ON TABLE "OIE"."MD_VIEWS"  IS 'For storing information on views.';
--------------------------------------------------------
--  DDL for Table MIGRATION_RESERVED_WORDS
--------------------------------------------------------

  CREATE TABLE "OIE"."MIGRATION_RESERVED_WORDS" 
   (	"KEYWORD" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MIGRLOG
--------------------------------------------------------

  CREATE TABLE "OIE"."MIGRLOG" 
   (	"ID" NUMBER, 
	"PARENT_LOG_ID" NUMBER, 
	"LOG_DATE" TIMESTAMP (6), 
	"SEVERITY" NUMBER(4,0), 
	"LOGTEXT" VARCHAR2(4000 BYTE), 
	"PHASE" VARCHAR2(100 BYTE), 
	"REF_OBJECT_ID" NUMBER, 
	"REF_OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"CONNECTION_ID_FK" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MIGR_DATATYPE_TRANSFORM_MAP
--------------------------------------------------------

  CREATE TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" 
   (	"ID" NUMBER, 
	"PROJECT_ID_FK" NUMBER, 
	"MAP_NAME" VARCHAR2(4000 BYTE), 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_MAP"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_MAP"."PROJECT_ID_FK" IS '//PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_MAP"."MAP_NAME" IS 'A name for the map';
   COMMENT ON TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP"  IS 'Table for storing data type maps.  A map is simply a collection of rules';
--------------------------------------------------------
--  DDL for Table MIGR_DATATYPE_TRANSFORM_RULE
--------------------------------------------------------

  CREATE TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" 
   (	"ID" NUMBER, 
	"MAP_ID_FK" NUMBER, 
	"SOURCE_DATA_TYPE_NAME" VARCHAR2(4000 BYTE), 
	"SOURCE_PRECISION" NUMBER, 
	"SOURCE_SCALE" NUMBER, 
	"TARGET_DATA_TYPE_NAME" VARCHAR2(4000 BYTE), 
	"TARGET_PRECISION" NUMBER, 
	"TARGET_SCALE" NUMBER, 
	"SECURITY_GROUP_ID" NUMBER DEFAULT 0, 
	"CREATED_ON" DATE DEFAULT sysdate, 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"LAST_UPDATED_ON" DATE, 
	"LAST_UPDATED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."ID" IS 'Primary Key';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."MAP_ID_FK" IS 'The map to which this rule belongs //PARENTFIELD';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."SOURCE_DATA_TYPE_NAME" IS 'Source data type';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."SOURCE_PRECISION" IS 'Precison to match';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."SOURCE_SCALE" IS 'scale to match';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."TARGET_DATA_TYPE_NAME" IS 'data type name to transform to';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."TARGET_PRECISION" IS 'precision to map to ';
   COMMENT ON COLUMN "OIE"."MIGR_DATATYPE_TRANSFORM_RULE"."TARGET_SCALE" IS 'scale to map to';
--------------------------------------------------------
--  DDL for Table MIGR_GENERATION_ORDER
--------------------------------------------------------

  CREATE TABLE "OIE"."MIGR_GENERATION_ORDER" 
   (	"ID" NUMBER, 
	"CONNECTION_ID_FK" NUMBER, 
	"OBJECT_ID" NUMBER, 
	"OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"GENERATION_ORDER" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "OIE"."MIGR_GENERATION_ORDER"."CONNECTION_ID_FK" IS '//PARENTFIELD';
--------------------------------------------------------
--  DDL for Table MILEAGE
--------------------------------------------------------

  CREATE TABLE "OIE"."MILEAGE" 
   (	"FUELTYPE" VARCHAR2(20 BYTE), 
	"RATE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MILEAGE_REPORTS_ALL
--------------------------------------------------------

  CREATE TABLE "OIE"."MILEAGE_REPORTS_ALL" 
   (	"M_REPORT_NUMBER" NUMBER, 
	"M_REPORT_SUBMIT_DATE" DATE, 
	"REIMBURSEMENT_AMOUNT" NUMBER, 
	"M_REPORT_STATUS" VARCHAR2(20 BYTE), 
	"REPORT_SUBMITTED_BY" VARCHAR2(20 BYTE), 
	"FUEL_TYPE" VARCHAR2(20 BYTE), 
	"NUM_OF_MILES" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPORT_HEADERS_ALL
--------------------------------------------------------

  CREATE TABLE "OIE"."REPORT_HEADERS_ALL" 
   (	"REPORT_NUMBER" NUMBER, 
	"REPORT_SUBMITTED_DATE" DATE, 
	"EXPENSE_AMOUNT" NUMBER(10,2), 
	"REPORT_STATUS" VARCHAR2(80 BYTE), 
	"REPORT_SUBMITTED_BY" VARCHAR2(20 BYTE), 
	"DEPARTMENT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPORT_LINE_DETAILS
--------------------------------------------------------

  CREATE TABLE "OIE"."REPORT_LINE_DETAILS" 
   (	"EXPENSE_DATE" VARCHAR2(20 BYTE), 
	"EXPENSE_TYPE" VARCHAR2(100 BYTE), 
	"EXPENSE_AMOUNT" NUMBER(10,2), 
	"CURRENCY" VARCHAR2(20 BYTE), 
	"ROWID1" VARCHAR2(20 BYTE), 
	"REPORT_NUMBER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STAGE_MIGRLOG
--------------------------------------------------------

  CREATE TABLE "OIE"."STAGE_MIGRLOG" 
   (	"SVRID_FK" NUMBER, 
	"DBID_GEN_FK" NUMBER, 
	"ID" NUMBER, 
	"REF_OBJECT_ID" NUMBER, 
	"REF_OBJECT_TYPE" VARCHAR2(4000 BYTE), 
	"LOG_DATE" TIMESTAMP (6), 
	"SEVERITY" NUMBER(4,0), 
	"LOGTEXT" VARCHAR2(4000 BYTE), 
	"PHASE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View BUDGET_ACCOUNT_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."BUDGET_ACCOUNT_V" ("ACCOUNT_NAME", "DEPT_NAME", "ACCOUNT_BUDGET", "EMPID", "EMPDEPT", "EXPENSE_AMOUNT", "REPORT_SUBMITTED_BY") AS 
  SELECT a.ACCOUNT_NAME,b.DEPT_NAME,a.ACCOUNT_BUDGET,c.EMPID,c.DEPARTMENT EMPDEPT,D.EXPENSE_AMOUNT,d.REPORT_SUBMITTED_BY
    
FROM  BUDGET a, DEPT b , EMP c,REPORT_HEADERS_ALL d where

a.DEPTARTMENT=b.DEPT_NAME
and c.EMPID=d.REPORT_SUBMITTED_BY and
b.DEPT_NAME=c.DEPARTMENT
and b.DEPT_NAME in ('FIN','IT','SA') WITH CHECK OPTION;
--------------------------------------------------------
--  DDL for View MGV_ALL_CAPTURED_SQL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_CAPTURED_SQL" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "NATIVE_SQL", "LINECOUNT") AS 
  SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME", p.native_sql,p.linecount 
FROM md_stored_programs p , mgv_all_programs_details d
WHERE p.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME",v.native_sql,v.linecount
FROM md_views v , mgv_all_view_details d
WHERE v.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME" ,t.native_sql,t.linecount
FROM md_triggers t , mgv_all_trigger_details d
WHERE t.id = d.objid
AND d.capturedorconverted = 'CAPTURED';
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_CATALOGS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name
  FROM md_projects ,
    md_connections,
    md_catalogs
  WHERE md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk   = md_projects.id
WITH READ ONLY;
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOG_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_CATALOG_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CATALOGS' objtype, cat.catalog_name objname, cat.id objid,  'MD_CATALOGS' MainObjType,cat.catalog_name MAINOBJNAME, cat.id MAINOBJID,null SchemaName,null schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name ELSE NULL END QualifiedName
FROM  MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE  cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMNDT_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_COLUMNDT_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "DATATYPE", "ISIDENTITY") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname ,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName,
c.column_type datatype,
CASE WHEN p.PROP_KEY='SEEDVALUE' THEN 'Y' ELSE 'N' END IsIdentity
FROM MD_COLUMNS c LEFT OUTER JOIN MD_ADDITIONAL_PROPERTIES p ON c.id =p.ref_id_fk
, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMN_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_COLUMN_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName
FROM MD_COLUMNS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONNECTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_CONNECTIONS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "CONNECTION_NAME", "HOST", "PORT", "USERNAME", "DBURL") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    MD_CONNECTIONS.ID CONNECTION_ID ,
    MD_CONNECTIONS.NAME CONNECTION_NAME,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl
  FROM md_projects,
    md_connections
  WHERE MD_CONNECTIONS.PROJECT_ID_FK = MD_PROJECTS.ID
WITH READ ONLY;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONSTRAINTS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_CONSTRAINTS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CONSTRAINTS' objtype, c.name objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.name QualifiedName
FROM MD_CONSTRAINTS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CATALOG_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_SCHEMA_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TABLES_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_COLUMN_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CONSTRAINTS_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_INDEX_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TRIGGER_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_VIEW_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PROGRAMS_DETAILS
UNION
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PARTITIONS_DETAILS;
--------------------------------------------------------
--  DDL for View MGV_ALL_INDEX_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_INDEX_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_INDEXES' objtype,i.index_name objname, i.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid, proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||i.index_name  QualifiedName
FROM MD_INDEXES i, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE i.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_PARTITIONS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_PARTITIONS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_PARTITIONS' objtype, 'PARTTITION_EXP' objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_PARTITIONS p, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_PROGRAMS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_PROGRAMS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_STORED_PROGRAMS' objtype,p.name objname, p.Id objid,  'MD_STORED_PROGRAMS' MainObjType,p.name MAINOBJNAME,p.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||p.name  QualifiedName
FROM MD_STORED_PROGRAMS p,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_SCHEMA" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_projects
  WHERE md_schemas.catalog_id_fk   = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_SCHEMA_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_SCHEMAS' objtype, s.name objname, s.id objid,  'MD_SCHEMAS' MainObjType,s.name MAINOBJNAME, s.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name QualifiedName
FROM MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_STORED_PROGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_STORED_PROGRAMS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "STORED_PROGRAM_ID", "PROGRAMTYPE", "STORED_PROGRAM_NAME", "PACKAGE_ID_FK") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name ,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_stored_programs.id stored_program_id ,
    md_stored_programs.programtype programtype ,
    md_stored_programs.name stored_program_name,
    md_stored_programs.package_id_fk package_id_fk
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_stored_programs
  WHERE md_stored_programs.schema_id_fk = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_TABLES" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_projects
  WHERE md_tables.schema_id_fk     = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_TABLES_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TABLES' objtype, t.table_name objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLE_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_TABLE_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_tables.id
  AND md_tables.schema_id_fk            = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_TRIGGER_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_TRIGGER_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
UNION
SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = v.id
AND v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
ORDER BY objid;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_VIEWS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views
  WHERE md_views.schema_id_fk      = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY;

   COMMENT ON TABLE "OIE"."MGV_ALL_VIEWS"  IS 'View to iterate over all views in the system';
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_VIEW_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_VIEWS' objtype, v.view_name objname, v.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||v.view_name  QualifiedName
FROM MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_ALL_VIEW_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_views.id
  AND md_views.schema_id_fk             = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id;
--------------------------------------------------------
--  DDL for View MGV_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY" FROM MD_DERIVATIVES WHERE (Derivative_Reason <> 'SCRATCH' OR DERIVative_Reason IS NULL);
--------------------------------------------------------
--  DDL for View MGV_DERIVED_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_DERIVED_DETAILS" ("CAPCATALOGID", "CAPCATALOGNAME", "CAPCONNID", "CAPCONNNAME", "CAPMAINOBJID", "CAPMAINOBJNAME", "CAPMAINOBJTYPE", "CAPOBJID", "CAPOBJNAME", "CAPOBJTYPE", "CAPPROJECTID", "CAPPROJECTNAME", "CAPQUALIFIEDNAME", "CAPSCHEMAID", "CAPSCHEMANAME", "CONCATALOGID", "CONCATALOGNAME", "CONCONNID", "CONCONNNAME", "CONMAINOBJID", "CONMAINOBJNAME", "CONMAINOBJTYPE", "CONOBJID", "CONOBJNAME", "CONOBJTYPE", "CONPROJECTID", "CONPROJECTNAME", "CONQUALIFIEDNAME", "CONSCHEMAID", "CONSCHEMANAME", "DERIVATIVE_REASON", "TRANSFORMED") AS 
  select d1.catalogid capcatalogid,
   d1.catalogname capcatalogname,
   d1.connid capconnid,
   d1.connname capconnname,
   d1.mainobjid capmainobjid,
   d1.mainobjname capmainobjname,
   d1.mainobjtype capmainobjtype ,
   d1.objid capobjid,
   d1.objname capobjname,
   d1.objtype capobjtype,
   d1.projectid capprojectid,
   d1.projectname capprojectname,
   d1.qualifiedname capqualifiedname,
   d1.schemaid capschemaid,
   d1.schemaname capschemaname,
   d2.catalogid concatalogid,
   d2.catalogname concatalogname,
   d2.connid conconnid,
   d2.connname conconnname,
   d2.mainobjid conmainobjid,
   d2.mainobjname conmainobjname,
   d2.mainobjtype conmainobjtype ,
   d2.objid conobjid,
   d2.objname conobjname,
   d2.objtype conobjtype,
   d2.projectid conprojectid,
   d2.projectname conprojectname,
   d2.qualifiedname conqualifiedname,
   d2.schemaid conschemaid,
   d2.schemaname conschemaname,
    der.derivative_reason,
    der.transformed
  FROM mgv_all_details d1
  LEFT OUTER JOIN md_derivatives der
  ON der.src_id              = d1.objid
  AND der.derivative_reason IS NULL
  LEFT OUTER JOIN mgv_all_details d2
  ON der.derived_id            = d2.objid
  WHERE d1.capturedorconverted = 'CAPTURED'
  AND der.derivative_reason   IS NULL;
--------------------------------------------------------
--  DDL for View MGV_SCRATCH_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "OIE"."MGV_SCRATCH_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY" FROM MD_DERIVATIVES WHERE Derivative_Reason = 'SCRATCH';
--------------------------------------------------------
--  DDL for Index BUDGET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."BUDGET_PK" ON "OIE"."BUDGET" ("ACCOUNT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CURRENCY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."CURRENCY_PK" ON "OIE"."CURRENCY" ("CURRENCY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."DEPT_PK" ON "OIE"."DEPT" ("DEPT_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."EMP_PK" ON "OIE"."EMP" ("EMPID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EXPENSE_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."EXPENSE_TYPE_PK" ON "OIE"."EXPENSE_TYPE" ("EXPENSE_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INVOICES_ALL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."INVOICES_ALL_PK" ON "OIE"."INVOICES_ALL" ("INVOICE_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MANAGER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MANAGER_PK" ON "OIE"."MANAGER" ("MANAGER_TYPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_ADDITIONAL_PROPERTIES_IDX
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_ADDITIONAL_PROPERTIES_IDX" ON "OIE"."MD_ADDITIONAL_PROPERTIES" ("PROP_KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_ADDITIONAL_PROPERTIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_ADDITIONAL_PROPERTIES_PK" ON "OIE"."MD_ADDITIONAL_PROPERTIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_APPLICATIONFILES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_APPLICATIONFILES_PK" ON "OIE"."MD_APPLICATIONFILES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_APPLICATIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_APPLICATIONS_PK" ON "OIE"."MD_APPLICATIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_APP_FILE_TYPE_IDX
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_APP_FILE_TYPE_IDX" ON "OIE"."MD_APPLICATIONFILES" ("TYPE", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_CATALOGS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_CATALOGS_PK" ON "OIE"."MD_CATALOGS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_COLUMNS_PERF_IDX
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_COLUMNS_PERF_IDX" ON "OIE"."MD_COLUMNS" ("TABLE_ID_FK", UPPER(TRIM("COLUMN_NAME")), "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 165 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_COLUMNS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_COLUMNS_PK" ON "OIE"."MD_COLUMNS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_CONNECTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_CONNECTIONS_PK" ON "OIE"."MD_CONNECTIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_CONSTRAINTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_CONSTRAINTS_PK" ON "OIE"."MD_CONSTRAINTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_CONSTRAINT_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_CONSTRAINT_DETAILS_PK" ON "OIE"."MD_CONSTRAINT_DETAILS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_DERIVATIVES_PERF_IDX
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_DERIVATIVES_PERF_IDX" ON "OIE"."MD_DERIVATIVES" ("SRC_ID", "DERIVED_CONNECTION_ID_FK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_DERIVATIVES_PERF_IDX1
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_DERIVATIVES_PERF_IDX1" ON "OIE"."MD_DERIVATIVES" ("SRC_TYPE", "DERIVATIVE_REASON") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_DERIVATIVES_PERF_IDX2
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_DERIVATIVES_PERF_IDX2" ON "OIE"."MD_DERIVATIVES" ("NEW_IDENTIFIER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_DERIVATIVES_PERF_IDX3
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_DERIVATIVES_PERF_IDX3" ON "OIE"."MD_DERIVATIVES" ("ORIGINAL_IDENTIFIER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_DERIVATIVES_PERF_IDX4
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_DERIVATIVES_PERF_IDX4" ON "OIE"."MD_DERIVATIVES" ("DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 165 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_FILE_ARTIFACTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_FILE_ARTIFACTS_PK" ON "OIE"."MD_FILE_ARTIFACTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_GROUPS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_GROUPS_PK" ON "OIE"."MD_GROUPS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_GROUP_MEMBERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_GROUP_MEMBERS_PK" ON "OIE"."MD_GROUP_MEMBERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_GROUP_PRIVILEGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_GROUP_PRIVILEGES_PK" ON "OIE"."MD_GROUP_PRIVILEGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_INDEXES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_INDEXES_PK" ON "OIE"."MD_INDEXES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_INDEX_DETAILS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_INDEX_DETAILS_PK" ON "OIE"."MD_INDEX_DETAILS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_OTHER_OBJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_OTHER_OBJECTS_PK" ON "OIE"."MD_OTHER_OBJECTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_PACKAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_PACKAGES_PK" ON "OIE"."MD_PACKAGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_PARTITIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_PARTITIONS_PK" ON "OIE"."MD_PARTITIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_PRIVILEGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_PRIVILEGES_PK" ON "OIE"."MD_PRIVILEGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_PROJECTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_PROJECTS_PK" ON "OIE"."MD_PROJECTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_REGISTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_REGISTRY_PK" ON "OIE"."MD_REGISTRY" ("OBJECT_TYPE", "OBJECT_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_SCHEMAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_SCHEMAS_PK" ON "OIE"."MD_SCHEMAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_SEQUENCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_SEQUENCES_PK" ON "OIE"."MD_SEQUENCES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_STATE_TYPE__ID
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_STATE_TYPE__ID" ON "OIE"."MD_APPLICATIONFILES" ("STATE", "TYPE", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_STORED_PROGRAMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_STORED_PROGRAMS_PK" ON "OIE"."MD_STORED_PROGRAMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_STORED_PROGRAS_IDX2
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_STORED_PROGRAS_IDX2" ON "OIE"."MD_STORED_PROGRAMS" ("SCHEMA_ID_FK", UPPER("NAME")) 
  PCTFREE 10 INITRANS 2 MAXTRANS 166 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_SYNONYMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_SYNONYMS_PK" ON "OIE"."MD_SYNONYMS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_TABLESPACES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_TABLESPACES_PK" ON "OIE"."MD_TABLESPACES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_TABLES_PERF_IDX1
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_TABLES_PERF_IDX1" ON "OIE"."MD_TABLES" (UPPER("TABLE_NAME"), "SCHEMA_ID_FK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 166 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_TABLES_PERF_IDX2
--------------------------------------------------------

  CREATE INDEX "OIE"."MD_TABLES_PERF_IDX2" ON "OIE"."MD_VIEWS" (UPPER("VIEW_NAME"), "SCHEMA_ID_FK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 166 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_TABLES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_TABLES_PK" ON "OIE"."MD_TABLES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_TRIGGERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_TRIGGERS_PK" ON "OIE"."MD_TRIGGERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_USERS_PK" ON "OIE"."MD_USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_USER_DEFINED_DATA_TYPES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_USER_DEFINED_DATA_TYPES_PK" ON "OIE"."MD_USER_DEFINED_DATA_TYPES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_USER_PRIVILEGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_USER_PRIVILEGES_PK" ON "OIE"."MD_USER_PRIVILEGES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MD_VIEWS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MD_VIEWS_PK" ON "OIE"."MD_VIEWS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGRDREIVATIVES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGRDREIVATIVES_PK" ON "OIE"."MD_DERIVATIVES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGRLOG_PERF_IDX
--------------------------------------------------------

  CREATE INDEX "OIE"."MIGRLOG_PERF_IDX" ON "OIE"."MIGRLOG" ("REF_OBJECT_ID", "SEVERITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGRLOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGRLOG_PK" ON "OIE"."MIGRLOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_DATATYPE_TRANSFORM_M_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_DATATYPE_TRANSFORM_M_PK" ON "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_DATATYPE_TRANSFORM_R_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_DATATYPE_TRANSFORM_R_PK" ON "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_DEPENDENCY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_DEPENDENCY_PK" ON "OIE"."MD_MIGR_DEPENDENCY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_GENERATION_ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_GENERATION_ORDER_PK" ON "OIE"."MIGR_GENERATION_ORDER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_PARAMETER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_PARAMETER_PK" ON "OIE"."MD_MIGR_PARAMETER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIGR_WEAKDEP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MIGR_WEAKDEP_PK" ON "OIE"."MD_MIGR_WEAKDEP" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MILEAGE_REPORTS_ALL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."MILEAGE_REPORTS_ALL_PK" ON "OIE"."MILEAGE_REPORTS_ALL" ("M_REPORT_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REPORT_HEADERS_ALL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."REPORT_HEADERS_ALL_PK" ON "OIE"."REPORT_HEADERS_ALL" ("REPORT_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STAGE_MIGRLOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."STAGE_MIGRLOG_PK" ON "OIE"."STAGE_MIGRLOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123591C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123591C00004$$" ON "OIE"."MD_TABLESPACES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123598C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123598C00005$$" ON "OIE"."MD_USERS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123604C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123604C00005$$" ON "OIE"."MD_CATALOGS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123608C00006$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123608C00006$$" ON "OIE"."MD_SEQUENCES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123612C00010$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123612C00010$$" ON "OIE"."MD_COLUMNS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123616C00003$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123616C00003$$" ON "OIE"."MD_PARTITIONS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123620C00010$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123620C00010$$" ON "OIE"."MD_CONNECTIONS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123630C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123630C00004$$" ON "OIE"."MD_OTHER_OBJECTS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123634C00007$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123634C00007$$" ON "OIE"."MD_CONSTRAINTS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123638C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123638C00005$$" ON "OIE"."MD_USER_DEFINED_DATA_TYPES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123644C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123644C00005$$" ON "OIE"."MD_GROUPS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123652C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123652C00004$$" ON "OIE"."MD_TABLES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123656C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123656C00004$$" ON "OIE"."MD_PACKAGES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123656C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123656C00005$$" ON "OIE"."MD_PACKAGES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123664C00004$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123664C00004$$" ON "OIE"."MD_VIEWS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123668C00005$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123668C00005$$" ON "OIE"."MD_INDEXES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123674C00007$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123674C00007$$" ON "OIE"."MD_SCHEMAS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123682C00007$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123682C00007$$" ON "OIE"."MD_SYNONYMS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123686C00008$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123686C00008$$" ON "OIE"."MD_TRIGGERS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123692C00008$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123692C00008$$" ON "OIE"."MD_PRIVILEGES" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123700C00006$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123700C00006$$" ON "OIE"."MD_CONSTRAINT_DETAILS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000123704C00006$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "OIE"."SYS_IL0000123704C00006$$" ON "OIE"."MD_STORED_PROGRAMS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  Constraints for Table BUDGET
--------------------------------------------------------

  ALTER TABLE "OIE"."BUDGET" ADD CONSTRAINT "BUDGET_PK" PRIMARY KEY ("ACCOUNT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."BUDGET" MODIFY ("ACCOUNT_BUDGET" NOT NULL ENABLE);
  ALTER TABLE "OIE"."BUDGET" MODIFY ("DEPTARTMENT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."BUDGET" MODIFY ("ACCOUNT_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."BUDGET" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CURRENCY
--------------------------------------------------------

  ALTER TABLE "OIE"."CURRENCY" ADD CONSTRAINT "CURRENCY_PK" PRIMARY KEY ("CURRENCY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."CURRENCY" MODIFY ("CURRENCY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "OIE"."DEPT" ADD CONSTRAINT "DEPT_PK" PRIMARY KEY ("DEPT_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."DEPT" MODIFY ("DEPT_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."DEPT" MODIFY ("DEPTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "OIE"."EMP" ADD CONSTRAINT "EMP_PK" PRIMARY KEY ("EMPID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."EMP" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("DEPARTMENT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("EMPLLEVEL" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("EMAILID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EMP" MODIFY ("EMPID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXPENSE_TYPE
--------------------------------------------------------

  ALTER TABLE "OIE"."EXPENSE_TYPE" ADD CONSTRAINT "EXPENSE_TYPE_PK" PRIMARY KEY ("EXPENSE_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."EXPENSE_TYPE" MODIFY ("DESCRIPTON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EXPENSE_TYPE" MODIFY ("EXPENSE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."EXPENSE_TYPE" MODIFY ("TYPE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INVOICES_ALL
--------------------------------------------------------

  ALTER TABLE "OIE"."INVOICES_ALL" ADD CONSTRAINT "INVOICES_ALL_PK" PRIMARY KEY ("INVOICE_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."INVOICES_ALL" MODIFY ("REPORT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OIE"."INVOICES_ALL" MODIFY ("INVOICE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."INVOICES_ALL" MODIFY ("INVOICE_DATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."INVOICES_ALL" MODIFY ("INVOICE_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "OIE"."MANAGER" ADD CONSTRAINT "MANAGER_PK" PRIMARY KEY ("MANAGER_TYPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MANAGER" MODIFY ("MANAGER_TYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MANAGER" MODIFY ("MANAGER_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_ADDITIONAL_PROPERTIES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" ADD CONSTRAINT "MD_ADDITIONAL_PROPERTIES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("PROP_KEY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("REF_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("REF_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_APPLICATIONFILES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_APPLICATIONFILES" ADD CONSTRAINT "MD_APPLICATIONFILES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("URI" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("APPLICATIONS_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONFILES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_APPLICATIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_APPLICATIONS" ADD CONSTRAINT "MD_APPLICATIONS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_APPLICATIONS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONS" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_APPLICATIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CATALOGS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CATALOGS" ADD CONSTRAINT "MD_CATALOGS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_CATALOGS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CATALOGS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CATALOGS" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CATALOGS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_COLUMNS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_COLUMNS" ADD CONSTRAINT "MD_COLUMNS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("COLUMN_ORDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("COLUMN_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("TABLE_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_COLUMNS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CONNECTIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONNECTIONS" ADD CONSTRAINT "MD_CONNECTIONS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_CONNECTIONS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONNECTIONS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONNECTIONS" MODIFY ("PROJECT_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONNECTIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CONSTRAINTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONSTRAINTS" ADD CONSTRAINT "MD_CONSTRAINTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_CONSTRAINTS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINTS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINTS" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINTS" MODIFY ("TABLE_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_CONSTRAINT_DETAILS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" ADD CONSTRAINT "MD_CONSTRAINT_DETAILS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" MODIFY ("DETAIL_ORDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" MODIFY ("CONSTRAINT_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_DERIVATIVES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_DERIVATIVES" ADD CONSTRAINT "MIGRDREIVATIVES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("DERIVED_CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("DERIVED_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("SRC_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_DERIVATIVES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_FILE_ARTIFACTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" ADD CONSTRAINT "MD_FILE_ARTIFACTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" MODIFY ("APPLICATIONFILES_ID" CONSTRAINT "MD_APPL_FILE_FK_NONULL" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" MODIFY ("ID" CONSTRAINT "MD_APP_FILE_ART_NONULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_GROUPS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUPS" ADD CONSTRAINT "MD_GROUPS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_GROUPS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUPS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUPS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUPS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_GROUP_MEMBERS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" ADD CONSTRAINT "MD_GROUP_MEMBERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" MODIFY ("GROUP_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_GROUP_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" ADD CONSTRAINT "MD_GROUP_PRIVILEGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" MODIFY ("PRIVILEGE_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" MODIFY ("GROUP_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_INDEXES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_INDEXES" ADD CONSTRAINT "MD_INDEXES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_INDEXES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEXES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEXES" MODIFY ("TABLE_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEXES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_INDEX_DETAILS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_INDEX_DETAILS" ADD CONSTRAINT "MD_INDEX_DETAILS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("DETAIL_ORDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("COLUMN_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("INDEX_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_MIGR_DEPENDENCY
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" ADD CONSTRAINT "MIGR_DEPENDENCY_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("CHILD_OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("PARENT_OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("CHILD_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("PARENT_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_MIGR_PARAMETER
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" ADD CONSTRAINT "MIGR_PARAMETER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("NULLABLE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("PARAM_DATA_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("PARAM_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("PARAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("PARAM_ORDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("PARAM_EXISTING" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("OBJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_MIGR_WEAKDEP
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" ADD CONSTRAINT "MIGR_WEAKDEP_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("CHILD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("PARENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("CHILD_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("PARENT_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_OTHER_OBJECTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" ADD CONSTRAINT "MD_OTHER_OBJECTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_PACKAGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PACKAGES" ADD CONSTRAINT "MD_PACKAGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PACKAGES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_PARTITIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PARTITIONS" ADD CONSTRAINT "MD_PARTITIONS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_PARTITIONS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PARTITIONS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PARTITIONS" MODIFY ("TABLE_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PARTITIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PRIVILEGES" ADD CONSTRAINT "MD_PRIVILEGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("NATIVE_SQL" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("PRIVELEGE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("PRIVELEGEOBJECTTYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("PRIVILEGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PRIVILEGES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_PROJECTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PROJECTS" ADD CONSTRAINT "MD_PROJECTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_PROJECTS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PROJECTS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PROJECTS" MODIFY ("PROJECT_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_PROJECTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_REGISTRY
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_REGISTRY" ADD CONSTRAINT "MD_REGISTRY_PK" PRIMARY KEY ("OBJECT_TYPE", "OBJECT_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_REGISTRY" MODIFY ("OBJECT_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_REGISTRY" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_REPOVERSIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_REPOVERSIONS" MODIFY ("REVISION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_SCHEMAS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SCHEMAS" ADD CONSTRAINT "MD_SCHEMAS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_SCHEMAS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SCHEMAS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SCHEMAS" MODIFY ("CATALOG_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SCHEMAS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_SEQUENCES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SEQUENCES" ADD CONSTRAINT "MD_SEQUENCES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("CREATED_BY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("INCR" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("SEQ_START" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SEQUENCES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_STORED_PROGRAMS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" ADD CONSTRAINT "MD_STORED_PROGRAMS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_SYNONYMS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SYNONYMS" ADD CONSTRAINT "MD_SYNONYMS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("FOR_OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("SYNONYM_FOR_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_SYNONYMS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_TABLES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_TABLES" ADD CONSTRAINT "MD_TABLES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("QUALIFIED_NATIVE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_TABLESPACES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_TABLESPACES" ADD CONSTRAINT "MD_TABLESPACES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_TABLESPACES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLESPACES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLESPACES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TABLESPACES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_TRIGGERS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_TRIGGERS" ADD CONSTRAINT "MD_TRIGGERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("TRIGGER_ON_FLAG" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("TABLE_OR_VIEW_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_TRIGGERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_USERS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USERS" ADD CONSTRAINT "MD_USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_USERS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USERS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USERS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_USER_DEFINED_DATA_TYPES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" ADD CONSTRAINT "MD_USER_DEFINED_DATA_TYPES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("NATIVE_SQL" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("DEFINITION" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("DATA_TYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_USER_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" ADD CONSTRAINT "MD_USER_PRIVILEGES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" MODIFY ("USER_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MD_VIEWS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_VIEWS" ADD CONSTRAINT "MD_VIEWS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MD_VIEWS" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_VIEWS" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_VIEWS" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_VIEWS" MODIFY ("SCHEMA_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MD_VIEWS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGRATION_RESERVED_WORDS
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGRATION_RESERVED_WORDS" MODIFY ("KEYWORD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGRLOG
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGRLOG" ADD CONSTRAINT "MIGRLOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MIGRLOG" MODIFY ("SEVERITY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGRLOG" MODIFY ("LOG_DATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGRLOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGR_DATATYPE_TRANSFORM_MAP
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_M_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("PROJECT_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGR_DATATYPE_TRANSFORM_RULE
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_R_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("CREATED_ON" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("SECURITY_GROUP_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("TARGET_DATA_TYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("SOURCE_DATA_TYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("MAP_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MIGR_GENERATION_ORDER
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" ADD CONSTRAINT "MIGR_GENERATION_ORDER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" MODIFY ("GENERATION_ORDER" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" MODIFY ("OBJECT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" MODIFY ("OBJECT_ID" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" MODIFY ("CONNECTION_ID_FK" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MILEAGE
--------------------------------------------------------

  ALTER TABLE "OIE"."MILEAGE" MODIFY ("RATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MILEAGE" MODIFY ("FUELTYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MILEAGE_REPORTS_ALL
--------------------------------------------------------

  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" ADD CONSTRAINT "MILEAGE_REPORTS_ALL_PK" PRIMARY KEY ("M_REPORT_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" MODIFY ("REPORT_SUBMITTED_BY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" MODIFY ("M_REPORT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" MODIFY ("REIMBURSEMENT_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" MODIFY ("M_REPORT_SUBMIT_DATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" MODIFY ("M_REPORT_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORT_HEADERS_ALL
--------------------------------------------------------

  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" ADD CONSTRAINT "REPORT_HEADERS_ALL_PK" PRIMARY KEY ("REPORT_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" MODIFY ("REPORT_SUBMITTED_BY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" MODIFY ("REPORT_STATUS" NOT NULL ENABLE);
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" MODIFY ("EXPENSE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" MODIFY ("REPORT_SUBMITTED_DATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" MODIFY ("REPORT_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORT_LINE_DETAILS
--------------------------------------------------------

  ALTER TABLE "OIE"."REPORT_LINE_DETAILS" MODIFY ("EXPENSE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "OIE"."REPORT_LINE_DETAILS" MODIFY ("REPORT_NUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STAGE_MIGRLOG
--------------------------------------------------------

  ALTER TABLE "OIE"."STAGE_MIGRLOG" ADD CONSTRAINT "STAGE_MIGRLOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "OIE"."STAGE_MIGRLOG" MODIFY ("SEVERITY" NOT NULL ENABLE);
  ALTER TABLE "OIE"."STAGE_MIGRLOG" MODIFY ("LOG_DATE" NOT NULL ENABLE);
  ALTER TABLE "OIE"."STAGE_MIGRLOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BUDGET
--------------------------------------------------------

  ALTER TABLE "OIE"."BUDGET" ADD CONSTRAINT "BUDGET_DEPT_FK1" FOREIGN KEY ("DEPTARTMENT")
	  REFERENCES "OIE"."DEPT" ("DEPT_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "OIE"."EMP" ADD CONSTRAINT "EMP_DEPT_FK1" FOREIGN KEY ("DEPARTMENT")
	  REFERENCES "OIE"."DEPT" ("DEPT_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MANAGER
--------------------------------------------------------

  ALTER TABLE "OIE"."MANAGER" ADD CONSTRAINT "MANAGER_MANAGER_FK1" FOREIGN KEY ("MANAGER_TYPE_ID")
	  REFERENCES "OIE"."MANAGER" ("MANAGER_TYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_ADDITIONAL_PROPERTIES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_ADDITIONAL_PROPERTIES" ADD CONSTRAINT "MD_ADDITIONAL_PROPERTIES__FK1" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_APPLICATIONFILES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_APPLICATIONFILES" ADD CONSTRAINT "MD_FILE_APP_FK" FOREIGN KEY ("APPLICATIONS_ID_FK")
	  REFERENCES "OIE"."MD_APPLICATIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_APPLICATIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_APPLICATIONS" ADD CONSTRAINT "MD_APP_CONN_FK" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_CATALOGS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CATALOGS" ADD CONSTRAINT "MD_CATALOGS_MD_CONNECTION_FK1" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_COLUMNS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_COLUMNS" ADD CONSTRAINT "MD_COLUMNS_MD_TABLES_FK1" FOREIGN KEY ("TABLE_ID_FK")
	  REFERENCES "OIE"."MD_TABLES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_CONNECTIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONNECTIONS" ADD CONSTRAINT "MD_CONNECTIONS_MD_PROJECT_FK1" FOREIGN KEY ("PROJECT_ID_FK")
	  REFERENCES "OIE"."MD_PROJECTS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_CONSTRAINTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONSTRAINTS" ADD CONSTRAINT "MD_CONSTRAINTS_MD_TABLES_FK1" FOREIGN KEY ("TABLE_ID_FK")
	  REFERENCES "OIE"."MD_TABLES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_CONSTRAINT_DETAILS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" ADD CONSTRAINT "MD_CONSTRAINT_DETAILS_MD__FK1" FOREIGN KEY ("CONSTRAINT_ID_FK")
	  REFERENCES "OIE"."MD_CONSTRAINTS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_CONSTRAINT_DETAILS" ADD CONSTRAINT "MD_CONSTRAINT_DETAILS_MD__FK2" FOREIGN KEY ("COLUMN_ID_FK")
	  REFERENCES "OIE"."MD_COLUMNS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_DERIVATIVES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_DERIVATIVES" ADD CONSTRAINT "MD_DERIVATIVES_MD_CONNECT_FK1" FOREIGN KEY ("DERIVED_CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_FILE_ARTIFACTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_FILE_ARTIFACTS" ADD CONSTRAINT "MD_ARTIFACT_FILE_FK" FOREIGN KEY ("APPLICATIONFILES_ID")
	  REFERENCES "OIE"."MD_APPLICATIONFILES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_GROUPS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUPS" ADD CONSTRAINT "MD_GROUPS_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_GROUP_MEMBERS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" ADD CONSTRAINT "MD_GROUPMEMBERS_MD_GROUPS_FK1" FOREIGN KEY ("GROUP_ID_FK")
	  REFERENCES "OIE"."MD_GROUPS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" ADD CONSTRAINT "MD_GROUPMEMBERS_MD_GROUPS_FK2" FOREIGN KEY ("GROUP_MEMBER_ID_FK")
	  REFERENCES "OIE"."MD_GROUPS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_GROUP_MEMBERS" ADD CONSTRAINT "MD_GROUPMEMBERS_MD_USERS_FK1" FOREIGN KEY ("USER_ID_FK")
	  REFERENCES "OIE"."MD_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_GROUP_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" ADD CONSTRAINT "MD_GROUP_PRIVILEGES_MD_GR_FK1" FOREIGN KEY ("GROUP_ID_FK")
	  REFERENCES "OIE"."MD_GROUPS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_GROUP_PRIVILEGES" ADD CONSTRAINT "MD_GROUP_PRIVILEGES_MD_PR_FK1" FOREIGN KEY ("PRIVILEGE_ID_FK")
	  REFERENCES "OIE"."MD_PRIVILEGES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_INDEXES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_INDEXES" ADD CONSTRAINT "MD_INDEXES_MD_TABLES_FK1" FOREIGN KEY ("TABLE_ID_FK")
	  REFERENCES "OIE"."MD_TABLES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_INDEX_DETAILS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_INDEX_DETAILS" ADD CONSTRAINT "MD_INDEX_DETAILS_MD_COLUM_FK1" FOREIGN KEY ("COLUMN_ID_FK")
	  REFERENCES "OIE"."MD_COLUMNS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_INDEX_DETAILS" ADD CONSTRAINT "MD_INDEX_DETAILS_MD_INDEX_FK1" FOREIGN KEY ("INDEX_ID_FK")
	  REFERENCES "OIE"."MD_INDEXES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_MIGR_DEPENDENCY
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_DEPENDENCY" ADD CONSTRAINT "MIGR_DEPENDENCY_FK" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_MIGR_PARAMETER
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_PARAMETER" ADD CONSTRAINT "MIGR_PARAMETER_FK" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_MIGR_WEAKDEP
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" ADD CONSTRAINT "MIGR_WEAKDEP_FK1" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_MIGR_WEAKDEP" ADD CONSTRAINT "MIGR_WEAKDEP_FK2" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_OTHER_OBJECTS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_OTHER_OBJECTS" ADD CONSTRAINT "MD_OTHER_OBJECTS_MD_SCHEM_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_PACKAGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PACKAGES" ADD CONSTRAINT "MD_PACKAGES_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_PARTITIONS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PARTITIONS" ADD CONSTRAINT "MD_PARTITIONS_MD_TABLES_FK1" FOREIGN KEY ("TABLE_ID_FK")
	  REFERENCES "OIE"."MD_TABLES" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_PRIVILEGES" ADD CONSTRAINT "MD_PRIVILEGES_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_SCHEMAS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SCHEMAS" ADD CONSTRAINT "MD_SCHEMAS_MD_CATALOGS_FK1" FOREIGN KEY ("CATALOG_ID_FK")
	  REFERENCES "OIE"."MD_CATALOGS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_SEQUENCES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SEQUENCES" ADD CONSTRAINT "MD_SEQUENCES_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_STORED_PROGRAMS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" ADD CONSTRAINT "MD_STORED_PROGRAMS_MD_PAC_FK1" FOREIGN KEY ("PACKAGE_ID_FK")
	  REFERENCES "OIE"."MD_PACKAGES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_STORED_PROGRAMS" ADD CONSTRAINT "MD_STORED_PROGRAMS_MD_SCH_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_SYNONYMS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_SYNONYMS" ADD CONSTRAINT "MD_SYNONYMS_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_TABLES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_TABLES" ADD CONSTRAINT "MD_TABLES_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_TABLESPACES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_TABLESPACES" ADD CONSTRAINT "MD_TABLESPACES_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_USERS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USERS" ADD CONSTRAINT "MD_USERS_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_USER_DEFINED_DATA_TYPES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USER_DEFINED_DATA_TYPES" ADD CONSTRAINT "MD_USER_DEFINED_DATA_TYPE_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_USER_PRIVILEGES
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" ADD CONSTRAINT "MD_USER_PRIVILEGES_MD_PRI_FK1" FOREIGN KEY ("PRIVILEGE_ID_FK")
	  REFERENCES "OIE"."MD_PRIVILEGES" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "OIE"."MD_USER_PRIVILEGES" ADD CONSTRAINT "MD_USER_PRIVILEGES_MD_USE_FK1" FOREIGN KEY ("USER_ID_FK")
	  REFERENCES "OIE"."MD_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MD_VIEWS
--------------------------------------------------------

  ALTER TABLE "OIE"."MD_VIEWS" ADD CONSTRAINT "MD_VIEWS_MD_SCHEMAS_FK1" FOREIGN KEY ("SCHEMA_ID_FK")
	  REFERENCES "OIE"."MD_SCHEMAS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MIGRLOG
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGRLOG" ADD CONSTRAINT "MIGR_MIGRLOG_FK" FOREIGN KEY ("PARENT_LOG_ID")
	  REFERENCES "OIE"."MIGRLOG" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MIGR_DATATYPE_TRANSFORM_MAP
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_M_FK1" FOREIGN KEY ("PROJECT_ID_FK")
	  REFERENCES "OIE"."MD_PROJECTS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MIGR_DATATYPE_TRANSFORM_RULE
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_DATATYPE_TRANSFORM_RULE" ADD CONSTRAINT "MIGR_DATATYPE_TRANSFORM_R_FK1" FOREIGN KEY ("MAP_ID_FK")
	  REFERENCES "OIE"."MIGR_DATATYPE_TRANSFORM_MAP" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MIGR_GENERATION_ORDER
--------------------------------------------------------

  ALTER TABLE "OIE"."MIGR_GENERATION_ORDER" ADD CONSTRAINT "MIGR_GENERATION_ORDER_MD__FK1" FOREIGN KEY ("CONNECTION_ID_FK")
	  REFERENCES "OIE"."MD_CONNECTIONS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MILEAGE_REPORTS_ALL
--------------------------------------------------------

  ALTER TABLE "OIE"."MILEAGE_REPORTS_ALL" ADD CONSTRAINT "MILEAGE_REPORTS_ALL_EMP_FK1" FOREIGN KEY ("REPORT_SUBMITTED_BY")
	  REFERENCES "OIE"."EMP" ("EMPID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORT_HEADERS_ALL
--------------------------------------------------------

  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" ADD CONSTRAINT "REPORT_HEADERS_ALL_DEPT_FK1" FOREIGN KEY ("DEPARTMENT")
	  REFERENCES "OIE"."DEPT" ("DEPT_NAME") ENABLE;
  ALTER TABLE "OIE"."REPORT_HEADERS_ALL" ADD CONSTRAINT "REPORT_HEADERS_ALL_EMP_FK1" FOREIGN KEY ("REPORT_SUBMITTED_BY")
	  REFERENCES "OIE"."EMP" ("EMPID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEL_MD_TRIGGERS_T_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."DEL_MD_TRIGGERS_T_TRG" AFTER DELETE ON MD_TABLES 
FOR EACH ROW 
BEGIN
  DELETE FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = :OLD.ID AND MD_TRIGGERS.TRIGGER_ON_FLAG = 'T';
END;
/
ALTER TRIGGER "OIE"."DEL_MD_TRIGGERS_T_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DEL_MD_TRIGGERS_V_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."DEL_MD_TRIGGERS_V_TRG" AFTER DELETE ON MD_VIEWS
FOR EACH ROW 
BEGIN
  DELETE FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = :OLD.ID AND MD_TRIGGERS.TRIGGER_ON_FLAG = 'V';
END;
/
ALTER TRIGGER "OIE"."DEL_MD_TRIGGERS_V_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPID_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."EMPID_TR" 
BEFORE INSERT ON emp 
FOR EACH ROW

BEGIN
  SELECT EMPID.NEXTVAL
  INTO   :new.empid
  FROM   dual;
END;
/
ALTER TRIGGER "OIE"."EMPID_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INS_APPLICATIONFILE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."INS_APPLICATIONFILE_TRG" BEFORE INSERT OR UPDATE ON MD_APPLICATIONFILES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."INS_APPLICATIONFILE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INS_APPLICATION_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."INS_APPLICATION_TRG" BEFORE INSERT OR UPDATE ON MD_APPLICATIONS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."INS_APPLICATION_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger INS_FILE_ARTIFACT_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."INS_FILE_ARTIFACT_TRG" BEFORE INSERT OR UPDATE ON MD_FILE_ARTIFACTS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."INS_FILE_ARTIFACT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_ADDITIONAL_PROPERTY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_ADDITIONAL_PROPERTY_TRG" BEFORE INSERT OR UPDATE ON MD_ADDITIONAL_PROPERTIES 
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_ADDITIONAL_PROPERTY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_CATALOGS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_CATALOGS_TRG" BEFORE INSERT OR UPDATE ON MD_CATALOGS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_CATALOGS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_COLUMNS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_COLUMNS_TRG" BEFORE INSERT OR UPDATE ON MD_COLUMNS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_COLUMNS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_CONNECTIONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_CONNECTIONS_TRG" BEFORE INSERT OR UPDATE ON MD_CONNECTIONS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_CONNECTIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_CONSTRAINTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_CONSTRAINTS_TRG" BEFORE INSERT OR UPDATE ON MD_CONSTRAINTS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_CONSTRAINTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_CONSTRAINT_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_CONSTRAINT_DETAILS_TRG" BEFORE INSERT OR UPDATE ON MD_CONSTRAINT_DETAILS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_CONSTRAINT_DETAILS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_DERIVATIVES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_DERIVATIVES_TRG" BEFORE INSERT OR UPDATE ON MD_DERIVATIVES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_DERIVATIVES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_GROUPS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_GROUPS_TRG" BEFORE INSERT OR UPDATE ON MD_GROUPS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_GROUPS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_GROUP_MEMBERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_GROUP_MEMBERS_TRG" BEFORE INSERT OR UPDATE ON MD_GROUP_MEMBERS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_GROUP_MEMBERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_GROUP_PRIVILEGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_GROUP_PRIVILEGES_TRG" BEFORE INSERT OR UPDATE ON MD_GROUP_PRIVILEGES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_GROUP_PRIVILEGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_INDEXES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_INDEXES_TRG" BEFORE INSERT OR UPDATE ON MD_INDEXES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_INDEXES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_INDEX_DETAILS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_INDEX_DETAILS_TRG" BEFORE INSERT OR UPDATE ON MD_INDEX_DETAILS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_INDEX_DETAILS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_MIGR_DEPENDENCY_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_MIGR_DEPENDENCY_TRG" BEFORE INSERT OR UPDATE ON MD_MIGR_DEPENDENCY
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_MIGR_DEPENDENCY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_MIGR_PARAMETER_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_MIGR_PARAMETER_TRG" BEFORE INSERT OR UPDATE ON MD_MIGR_PARAMETER
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_MIGR_PARAMETER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_MIGR_WEAKDEP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_MIGR_WEAKDEP_TRG" BEFORE INSERT OR UPDATE ON MD_MIGR_WEAKDEP
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_MIGR_WEAKDEP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_OTHER_OBJECTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_OTHER_OBJECTS_TRG" BEFORE INSERT OR UPDATE ON MD_OTHER_OBJECTS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_OTHER_OBJECTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_PACKAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_PACKAGES_TRG" BEFORE INSERT OR UPDATE ON MD_PACKAGES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_PACKAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_PARTITIONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_PARTITIONS_TRG" BEFORE INSERT OR UPDATE ON MD_PARTITIONS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_PARTITIONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_PRIVILEGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_PRIVILEGES_TRG" BEFORE INSERT OR UPDATE ON MD_PRIVILEGES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_PRIVILEGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_PROJECTS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_PROJECTS_TRG" BEFORE INSERT OR UPDATE ON MD_PROJECTS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_PROJECTS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_SCHEMAS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_SCHEMAS_TRG" BEFORE INSERT OR UPDATE ON MD_SCHEMAS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_SCHEMAS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_SEQUENCES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_SEQUENCES_TRG" BEFORE INSERT OR UPDATE ON MD_SEQUENCES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_SEQUENCES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_STORED_PROGRAMS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_STORED_PROGRAMS_TRG" BEFORE INSERT OR UPDATE ON MD_STORED_PROGRAMS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_STORED_PROGRAMS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_SYNONYMS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_SYNONYMS_TRG" BEFORE INSERT OR UPDATE ON MD_SYNONYMS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_SYNONYMS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_TABLESPACES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_TABLESPACES_TRG" BEFORE INSERT OR UPDATE ON MD_TABLESPACES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_TABLESPACES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_TABLES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_TABLES_TRG" BEFORE INSERT OR UPDATE ON MD_TABLES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_TABLES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_TRIGGERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_TRIGGERS_TRG" BEFORE INSERT OR UPDATE ON MD_TRIGGERS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_TRIGGERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_USERS_TRG" BEFORE INSERT OR UPDATE ON MD_USERS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_USER_DEFINED_DATA_TYPES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_USER_DEFINED_DATA_TYPES_TRG" BEFORE INSERT OR UPDATE ON MD_USER_DEFINED_DATA_TYPES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_USER_DEFINED_DATA_TYPES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_USER_PRIVILEGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_USER_PRIVILEGES_TRG" BEFORE INSERT OR UPDATE ON MD_USER_PRIVILEGES
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_USER_PRIVILEGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MD_VIEWS_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MD_VIEWS_TRG" BEFORE INSERT OR UPDATE ON MD_VIEWS
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MD_VIEWS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGRLOG_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MIGRLOG_TRG" BEFORE INSERT OR UPDATE ON MIGRLOG
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MIGRLOG_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGR_DATATYPE_MAP_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MIGR_DATATYPE_MAP_TRG" BEFORE INSERT OR UPDATE ON MIGR_DATATYPE_TRANSFORM_MAP
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MIGR_DATATYPE_MAP_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGR_DATATYPE_RULE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MIGR_DATATYPE_RULE_TRG" BEFORE INSERT OR UPDATE ON MIGR_DATATYPE_TRANSFORM_RULE
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MIGR_DATATYPE_RULE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MIGR_GENERATION_ORDER_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."MIGR_GENERATION_ORDER_TRG" BEFORE INSERT OR UPDATE ON MIGR_GENERATION_ORDER
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."MIGR_GENERATION_ORDER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STAGE_MIGRLOG_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."STAGE_MIGRLOG_ID_TRG" BEFORE INSERT OR UPDATE ON STAGE_MIGRLOG
FOR EACH ROW
BEGIN
  if inserting and :new.id is null then
        :new.id := MD_META.get_next_id;
    end if;
END;
/
ALTER TRIGGER "OIE"."STAGE_MIGRLOG_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STAGE_MIGRLOG_LOG_DATE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."STAGE_MIGRLOG_LOG_DATE_TRG" BEFORE INSERT OR UPDATE ON STAGE_MIGRLOG
FOR EACH ROW
BEGIN
  if inserting and :new.log_date is null then
        :new.log_date := systimestamp;
    end if;
END;
/
ALTER TRIGGER "OIE"."STAGE_MIGRLOG_LOG_DATE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TYPEID_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "OIE"."TYPEID_TR" 
BEFORE INSERT ON EXPENSE_TYPE 
FOR EACH ROW

BEGIN
  SELECT TYPEID.NEXTVAL
  INTO   :new.TYPE_ID
  FROM   dual;
END;
/
ALTER TRIGGER "OIE"."TYPEID_TR" ENABLE;
--------------------------------------------------------
--  DDL for Package MD_META
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "OIE"."MD_META" 
AS
FUNCTION get_next_id RETURN NUMBER;
-- Following code taken directly from wwv_flow_random from APEX
--
-- seed random function
procedure srand( new_seed in number );

function rand return number;
pragma restrict_references( rand, WNDS  );

procedure get_rand( r OUT number );

function rand_max( n IN number ) return number;
pragma restrict_references( rand_max, WNDS);

procedure get_rand_max( r OUT number, n IN number );

function quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG) RETURN VARCHAR2;
END;

/
--------------------------------------------------------
--  DDL for Package MIGRATION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "OIE"."MIGRATION" 
AS

-- Public functions
FUNCTION copy_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL,p_scratchModel BOOLEAN := FALSE) RETURN NUMBER;
FUNCTION transform_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE, p_prefixName VARCHAR2, p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY;
FUNCTION transform_datatypes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE, p_numbytesperchar INTEGER,  p_is12c VARCHAR2 := 'N') RETURN NUMBER;
FUNCTION transform_identity_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_is12c VARCHAR2 := 'N') RETURN NUMBER;
FUNCTION transform_rewrite_trigger(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER;
FUNCTION gatherConnectionStats(p_connectionId MD_CONNECTIONS.ID%TYPE,p_comments MD_CONNECTIONS.COMMENTS%TYPE) RETURN NUMBER;
PROCEDURE transform_clashes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE);
PROCEDURE populate_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE);
PROCEDURE revert_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE);
END;

/
--------------------------------------------------------
--  DDL for Package MIGRATION_REPORT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "OIE"."MIGRATION_REPORT" AS 
--get status
  FUNCTION getCaptureStatus(srcid IN NUMBER)  RETURN VARCHAR2;
  FUNCTION getConvertStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2;
  FUNCTION getGenerateStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2;
--migration details
  FUNCTION getDetails(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN MIGR_REPORT_DETAIL_TABLE PIPELINED; 
--migration summary
   FUNCTION getSum(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN MIGR_REPORT_SUM_TABLE PIPELINED;
END MIGRATION_REPORT;

/
--------------------------------------------------------
--  DDL for Package MIGRATION_TRANSFORMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "OIE"."MIGRATION_TRANSFORMER" AS
FUNCTION check_identifier_length(p_ident VARCHAR2) RETURN VARCHAR2;
FUNCTION add_suffix(p_work VARCHAR2, p_suffix VARCHAR2, p_maxlen NUMBER) RETURN VARCHAR2;
FUNCTION check_reserved_word(p_work VARCHAR2) RETURN VARCHAR2;
FUNCTION sys_check(p_work VARCHAR2) RETURN VARCHAR2;
FUNCTION check_allowed_chars(p_work NVARCHAR2) RETURN NVARCHAR2;
FUNCTION transform_identifier(p_identifier NVARCHAR2)  RETURN NVARCHAR2;
FUNCTION getDisallowedCharsNames(p_work NVARCHAR2) RETURN VARCHAR2;
FUNCTION getNameForNullCase(p_work NVARCHAR2) RETURN NVARCHAR2;
END;

/
--------------------------------------------------------
--  DDL for Package Body MD_META
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "OIE"."MD_META" AS

    multiplier constant number  := 22695477;
    increment  constant number  := 1;
    "2^32"     constant number  := 2 ** 32;
    "2^16"     constant number  := 2 ** 16;
    "0x7fff"   constant number  := 32767;
    Seed       number := 1;
    g_curr_val NUMBER DEFAULT NULL;
/*
 * Get the next available id for objectids.
 * @return the next id that can be used in objectid fields
 * This code is taken from wwv_flows
 */
FUNCTION get_next_id RETURN NUMBER
IS
BEGIN
/*
	select  to_number(
                 to_char(dbobjectid_sequence.nextval) ||
                      lpad( substr( abs(rand), 1, 5 ),5, '0' ) ||
                   ltrim(to_char(mod(abs(hsecs),1000000),'000000')))
    into    g_curr_val
    from   sys.v_$timer;

	select to_number(
				to_char(dbobjectid_sequence.nextval) ||
					lpad( substr( abs(rand), 1, 5 ), 5, '0') ||
				ltrim(to_char(mod(dbms_random.value(100000000000, 999999999999),1000000),'000000')))
    into    g_curr_val
	from dual;				
*/
	select dbobjectid_sequence.nextval
    into    g_curr_val
	from dual;	
    return g_curr_val;
END get_next_id;
-- Following code taken from wwv_flows_random 
 procedure srand( new_seed in number ) is
 begin
  Seed := new_seed;
 end srand;
--
  function rand return number is
    s number;
  begin
    seed := mod( multiplier * seed + increment, "2^32" );
    begin
       return bitand( seed/"2^16", "0x7fff" );
    --mhichwa
    exception when others then
       select dbobjectid_sequence.nextval into s from dual;
       return s||to_char(sysdate,'HH24MISS');
    end;
  end rand;
--
  procedure get_rand( r OUT number ) is
  begin
    r := rand;
  end get_rand;
--
  function rand_max( n IN number ) return number is
  begin
    return mod( rand, n ) + 1;
  end rand_max;
--
  procedure get_rand_max( r OUT number, n IN number )  is
  begin
    r := rand_max( n );
  end get_rand_max;
  
 FUNCTION quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG ) RETURN VARCHAR2
  AS
  v_plugin VARCHAR2(1000);
  v_result VARCHAR2(4000) :='';
  v_ldelim VARCHAR2(1);
  v_rdelim VARCHAR2(1);
  v_isCatalogRequired BOOLEAN;
  v_isSchemaRequired BOOLEAN;
  v_maxCharsToDelim INT;
  BEGIN
  -- get database type using connid
   SELECT lower(VALUE) 
   INTO v_plugin
   FROM MD_ADDITIONAL_PROPERTIES
   WHERE LOWER(PROP_KEY) = 'plugin_id'
   AND connection_id_fk = connid;
    
    -- get the delimeter
    IF      v_plugin like '%sybase12%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 28;
    ELSIF   v_plugin like '%sybase%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;    
            v_maxCharsToDelim := 300;
    ELSIF   v_plugin like '%sqlserver%' THEN 
            v_ldelim := '[';
            v_rdelim := ']';    
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF  v_plugin like '%msaccess%'  THEN
            v_ldelim := '[';
            v_rdelim := ']'; 
            v_isCatalogRequired := false;
            v_isSchemaRequired :=false;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%mysql%'    THEN
            v_ldelim :='`'; 
            v_rdelim :='`';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%db2%'        THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired := false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%teradata%'   THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSE
            v_ldelim :='[';
            v_rdelim :=']';
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    END IF;
       
    IF LENGTH(catalog) > v_maxCharsToDelim THEN
      v_result := v_result || catalog ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result || v_ldelim || catalog ||v_rdelim;
    END IF ;
    
    IF LENGTH(schema) > v_maxCharsToDelim THEN
      v_result := v_result || '.' || schema ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || schema || v_rdelim;
    END IF ;
    
    IF LENGTH(object) > v_maxCharsToDelim THEN
      v_result := v_result ||'.' || object ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || object ||v_rdelim;
    END IF;      
    
    
   return v_result; 
END quote;  
  
--
-- One time initialisation
begin
  select to_char(sysdate,'JSSSSS')
    into seed
    from dual;
end;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "OIE"."MIGRATION" AS
/**
 * The migration package contains all of the PL/SQL Procedures and functions required by the migration
 * system.
 * @author Barry McGillin
 * @author Dermot Daly.
 */
--a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, 
--B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
TYPE DERIVATIVE_REC IS RECORD (
     schema_id          NUMBER,
     schema_name        VARCHAR2(4000 BYTE),
     catalog_id         NUMBER,
     catalog_name       VARCHAR2(4000 BYTE),
     dummy_flag         CHAR(1 BYTE),
     cap_type           CHAR(1 BYTE),    
     character_set      VARCHAR2(4000 BYTE),
     version_tag        VARCHAR2(40 BYTE)
     ); 
     
TYPE DERIVATIVE_REC2 IS RECORD (
     schemaid  NUMBER, 
     newid     NUMBER
);     
     
v_prefixName VARCHAR2(4) :=''; --text to prefix objects with ,set using transform_all_identifiers
-- Constants that are used throughout the package body.
C_CONNECTIONTYPE_CONVERTED   CONSTANT MD_CONNECTIONS.TYPE%TYPE := 'CONVERTED';
C_CONNECTIONTYPE_SCRATCH   CONSTANT MD_CONNECTIONS.TYPE%TYPE := 'SCRATCH'; -- enterprise capture/convert
-- Supported object types.
C_OBJECTTYPE_CONNECTIONS     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONNECTIONS';
C_OBJECTTYPE_CATALOGS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CATALOGS';
C_OBJECTTYPE_SCHEMAS         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SCHEMAS';
C_OBJECTTYPE_TABLES          CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TABLES';
C_OBJECTTYPE_COLUMNS         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_COLUMNS';
C_OBJECTTYPE_CNSTRNT_DETAILS CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONSTRAINT_DETAILS';
C_OBJECTTYPE_CONSTRAINTS     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_CONSTRAINTS';
C_OBJECTTYPE_INDEX_DETAILS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_INDEX_DETAILS';
C_OBJECTTYPE_INDEXES         CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_INDEXES';
C_OBJECTTYPE_TRIGGERS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TRIGGERS';
C_OBJECTTYPE_VIEWS           CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_VIEWS';
C_OBJECTTYPE_USERS           CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USERS';
C_OBJECTTYPE_GROUP_MEMBERS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_GROUPMEMBERS';
C_OBJECTTYPE_GROUPS          CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_GROUPS';
C_OBJECTTYPE_OTHER_OBJECTS   CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_OTHER_OBJECTS';
C_OBJECTTYPE_TABLESPACES     CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_TABLESPACES';
C_OBJECTTYPE_UDDT            CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USER_DEFINED_DATA_TYPES';
C_OBJECTTYPE_STORED_PROGRAMS CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_STORED_PROGRAMS';
C_OBJECTTYPE_PACKAGES        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_PACKAGES';
C_OBJECTTYPE_SYNONYMS        CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SYNONYMS';
C_OBJECTTYPE_SEQUENCES       CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_SEQUENCES';
C_OBJECTTYPE_PRIVILEGES      CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_PRIVILEGES';
C_OBJECTTYPE_USER_PRIVILEGES CONSTANT MD_DERIVATIVES.SRC_TYPE%TYPE := 'MD_USER_PRIVILEGES';
-- Dummy flag for a dummy catalog.
C_DUMMYFLAG_TRUE             CONSTANT MD_CATALOGS.DUMMY_FLAG%TYPE := 'Y';
-- Flag in MD_DERIVATIVES to show if something has been transformed
C_TRANSFORMED_TRUE           CONSTANT MD_DERIVATIVES.TRANSFORMED%TYPE := 'Y';
-- Flag in MD_SYNONYMS.PRIVATE_VISIBILITY to highlight that a synonym is marked as private
C_SYNONYM_PRIVATE            CONSTANT MD_SYNONYMS.PRIVATE_VISIBILITY%TYPE := 'Y';
-- Flag in MD_GROUPS.GROUP_FLAG to show this is a role
C_ROLE_FLAG                  CONSTANT MD_GROUPS.GROUP_FLAG%TYPE := 'R';
-- Flag in MD_COLUMNS TO SHOW A COLUMN IS NULLABLE
C_NULLABLE_YES               CONSTANT MD_COLUMNS.NULLABLE%TYPE := 'Y';
-- Special defined additional properties.
C_PROPKEY_SEEDVALUE          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'SEEDVALUE';
C_PROPKEY_INCREMENT          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'INCREMENT';
C_PROPKEY_LASTVALUE          CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'LASTVALUE';
C_PROPKEY_EXTENDEDINDEXTYPE	 CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'EXTENDEDINDEXTYPE';
C_PROPKEY_SEQUENCEID	       CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'SEQUENCEID';
C_PROPKEY_TRIGGER_REWRITE	   CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'TRIGGER_REWRITE';
C_PROPKEY_REAL_IDENTITY      CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'REALIDENTITY';
C_PROPKEY_ALREADY_IDENTITY   CONSTANT MD_ADDITIONAL_PROPERTIES.PROP_KEY%TYPE := 'ALREADYIDENTITY';
-- Name spaces for identifiers
C_NS_SCHEMA_OBJS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_SCHEMAOBJS';
C_NS_INDEXES                 CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_INDEXES';
C_NS_CONSTRAINTS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_CONSTRAINTS';
C_NS_CLUSTERS                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_CLUSTERS';
C_NS_DB_TRIGGERS             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DB_TRIGGERS';
C_NS_PRIVATE_DBLINKS         CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PRIVATEDBLINKS';
C_NS_DIMENSIONS              CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DIMENSIONS';
C_NS_USER_ROLES              CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_USERROLES';
C_NS_PUBLIC_SYNONYMS         CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PUB_SYNONYMS';
C_NS_PUBLIC_DBLINKS          CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PUBLICDBLINKS';
C_NS_TABLESPACES             CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_TABLESPACES';
C_NS_PROFILES                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_PROFILES';
C_NS_DATABASE                CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_DATABASE';
C_NS_USERS                   CONSTANT MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := 'NS_USERS';
-- Constants for Filter Types
 -- Filter Types are 0-> ALL, 1->NAMELIST, 2->WHERE CLAUSE, 3->OBJECTID LIST
C_FILTERTYPE_ALL	     CONSTANT INTEGER := 0;
C_FILTERTYPE_NAMELIST	     CONSTANT INTEGER := 1;
C_FILTERTYPE_WHERECLAUSE     CONSTANT INTEGER := 2;
C_FILTERTYPE_OBJECTIDLIST    CONSTANT INTEGER := 3;
-- Constatns for TEXT INDEX TYPES
-- see http://download-west.oracle.com/docs/cd/B10501_01/text.920/a96518/csql.htm#19446
-- Use this index type when there is one CLOB or BLOB column in the index only
C_INDEXTYPE_CONTEXT	CONSTANT MD_ADDITIONAL_PROPERTIES.VALUE%TYPE := 'ctxsys.context';
-- Use this index type when the index containst a CLOB or BLOB column.
C_INDEXTYPE_CTXCAT CONSTANT  MD_ADDITIONAL_PROPERTIES.VALUE%TYPE := 'ctxsys.ctxcat';
-- Constant for LANGUAGE - Used in MD_TRIGGERS, MD_PACKAGES, MD_STORED_PROGRAMS, MD_VIEWS, and MD_CONSTRAINTS
C_LANGUAGEID_ORACLE CONSTANT MD_TRIGGERS.LANGUAGE%TYPE := 'OracleSQL';
-- Type for a generic REF CURSOR
TYPE REF_CURSOR IS REF CURSOR;
/**
 * Find a filter element from a filter list
 */
FUNCTION find_filter_for_type(p_filterSet MIGR_FILTER_SET, p_objtype MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE) RETURN MIGR_FILTER
IS
BEGIN
  IF p_filterset is NULL OR p_objtype is NULL then
    return NULL;
  END IF;
  FOR indx in p_filterset.FIRST .. p_filterset.LAST
  LOOP
    if p_filterset(indx).OBJTYPE = p_objtype THEN
      return p_filterset(indx);
    end if;
  END LOOP;
  return NULL;
END find_filter_for_type;

/**
 * Convert a name list from a filter into a condition for use in a where clause.
 * @param p_nameList the set of names that form part of the filter
 * @param p_nameField the name of the field to be compared against.
 * @return A condition that can be used in a where clause.
 */
FUNCTION namelist_to_where_clause(p_nameList NAMELIST, p_nameField VARCHAR2) RETURN VARCHAR2
IS
  v_ret VARCHAR2(4000);
BEGIN
  v_ret := p_nameField || ' IN (';
  FOR indx IN p_nameList.FIRST .. p_nameList.LAST
  LOOP
    v_ret := v_ret || '''' || p_nameList(indx) || '''';
    IF  indx != p_nameList.LAST THEN
      v_ret := v_ret || ', ';
    END IF;
  END LOOP;
  v_ret := v_ret || ')';
  return v_ret;
END namelist_to_where_clause;

/**
 * Convert an object id list from a filter into a condition for use in a where clause.
 * @param p_oidList The list of object ids taken from the filter.
 * @param p_idFIeld The field to be tested against.
 * @return A condition that can be used in a where clause.
 */
FUNCTION objectIdList_to_where_clause(p_oidList OBJECTIDLIST, p_idField VARCHAR2) RETURN VARCHAR2
IS
  v_ret VARCHAR2(4000);
BEGIN
  V_RET := p_idField || ' IN (';
  FOR indx IN p_oidList.FIRST .. p_oidList.LAST
  LOOP
    v_ret := v_ret || TO_CHAR(p_oidList(indx));
    IF indx != p_oidList.LAST THEN
      v_ret := v_ret || ', ';
    END IF;
  END LOOP;
  v_ret := v_ret || ')';
  return v_ret;
END objectIdList_to_where_clause;

/**
 * Convert a filter to a condition for use in a where clause.
 * @param p_filter The filter
 * @param p_nameFileld The name field that will be used in the names list or where clause.
 * @param p_idField The id field that will be used if the filter is an objectid list.
 * @return A condition that could be used in a where clause.  NULL if no additional filtering is required.
 */
FUNCTION where_clause_from_filter(p_filter MIGR_FILTER, p_nameField VARCHAR2, p_idField VARCHAR2) RETURN VARCHAR2
IS
BEGIN
	IF p_filter.FILTER_TYPE = C_FILTERTYPE_ALL THEN
	  RETURN NULL;
    ELSIF p_filter.FILTER_TYPE = C_FILTERTYPE_NAMELIST THEN
      RETURN namelist_to_where_clause(p_filter.NAMES, p_nameField);
    ELSIF p_filter.FILTER_TYPE = C_FILTERTYPE_WHERECLAUSE THEN
	  RETURN p_nameField || ' ' || p_filter.WHERECLAUSE;
    ELSE
	  RETURN objectidlist_to_where_clause(p_filter.OBJECTIDS, p_idField);
	END IF;
END where_clause_from_filter;

/**
 * Apply a filter to an existing select statement
 * @param p_filter_set The filter set.
 * @param p_filter_type The type of the object, for finding in the filter set.
 * @param p_name_field The name field of the table being filtered
 * @param p_id_field The id field of the table being filtered.
 * @param p_select_stmt The select statment to tag the new condition on to
 * @return The select statement with the new condition added to it (or the original statement if
 *         there is no applicable filter for this object type.
 */
FUNCTION apply_filter(p_filter_set MIGR_FILTER_SET,
                      p_filter_type MD_DERIVATIVES.SRC_TYPE%TYPE,
                      p_name_field VARCHAR2,
                      p_id_field VARCHAR2,
                      p_select_stmt VARCHAR2) RETURN VARCHAR2
IS
  v_filt MIGR_FILTER;
  v_condition VARCHAR2(4000);
BEGIN
  v_filt := find_filter_for_type(p_filter_set, p_filter_type);
  --if the filter is null, then we need to set a value that will fail always so nothing is moved.
  -- ie 1=2
  IF v_filt IS NOT NULL THEN
    v_condition := where_clause_from_filter(v_filt, p_name_field, p_id_field);
    IF v_condition IS NOT NULL THEN
      RETURN p_select_stmt || ' AND ' || v_condition;
    ELSE
     RETURN p_select_stmt;
    END IF;
  END IF;
  RETURN p_select_stmt || ' AND 1=2';
END apply_filter;
                      
                      
/**
 * Find the copy of a particular object.  This function checks for a copied object of a particular
 * type by searching the MD_DERIVATIVES table.
 * @param p_objectid The id of the object to search for.
 * @param p_objecttype The type of the object to search for.
 * @return the id of the copy object if it is present, or NULL if it is not.
 */
FUNCTION find_object_copy(p_objectid md_projects.id%TYPE, p_objecttype MD_DERIVATIVES.SRC_TYPE%TYPE, p_derivedconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS 
  v_ret MD_DERIVATIVES.DERIVED_ID%TYPE;
BEGIN
  SELECT derived_id INTO v_ret FROM MD_DERIVATIVES
    WHERE src_id = p_objectid 
     AND src_type = p_objecttype
     AND derived_type = p_objecttype 
     AND derived_connection_id_fk = p_derivedconnectionid;
  RETURN v_ret;
EXCEPTION
  WHEN NO_DATA_FOUND then
    -- Should we raise an error?
    RETURN NULL;
END find_object_copy;

/**
 * Copy additional properties. function copies the additional properties for an object.
 * @param p_refobjectid The object id whose additional properties have to be copied
 * @param p_newrefobject The id of the copied object the new properties should refer to
 * @return number of additional properties copied
 */
FUNCTION copy_additional_properties(p_refobjectid MD_ADDITIONAL_PROPERTIES.REF_ID_FK%TYPE, p_newrefobject MD_PROJECTS.ID%TYPE, p_newconnectionid MD_ADDITIONAL_PROPERTIES.CONNECTION_ID_FK%TYPE) RETURN NUMBER
IS
  CURSOR ORIGINAL_RECS IS SELECT PROPERTY_ORDER, PROP_KEY, REF_TYPE, VALUE FROM MD_ADDITIONAL_PROPERTIES WHERE REF_ID_FK=p_refobjectid;
  v_numcopied NUMBER := 0;
BEGIN
  for newrec in ORIGINAL_RECS LOOP
    INSERT INTO MD_ADDITIONAL_PROPERTIES (ref_id_fk, ref_type, property_order, prop_key, value, connection_id_fk)
      VALUES (p_newrefobject, newrec.ref_type, newrec.property_order, newrec.prop_key, newrec.value, p_newconnectionid);
    v_numcopied := v_numcopied + 1;
  END LOOP;
  commit;
  return v_numcopied;
END copy_additional_properties;

FUNCTION copy_connection(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE) RETURN NUMBER
IS
  newrec MD_CONNECTIONS%ROWTYPE;
  newid MD_CONNECTIONS.ID%TYPE;
  origName MD_CONNECTIONS.NAME%TYPE;
BEGIN
  SELECT * INTO newrec from MD_CONNECTIONS WHERE id = p_connectionid;

  newrec.HOST := NULL;
  newrec.PORT := NULL;
  newrec.USERNAME := NULL;
  newrec.DBURL := NULL;
  -- TODO.  Need to do this in a more i18n friendly manner.
  origName := newrec.NAME;
  
  IF p_scratchModel = FALSE 
  THEN
     newrec.TYPE :=C_CONNECTIONTYPE_CONVERTED;  
     newrec.NAME := 'Converted:' || newrec.NAME;
  ELSE
     newrec.TYPE :=C_CONNECTIONTYPE_SCRATCH;  
     newrec.NAME := 'Scratch:' || newrec.NAME;     
  END IF;
  -- Let the trigger create the new ID
  newrec.ID := NULL;
  INSERT INTO MD_CONNECTIONS VALUES newrec
  	RETURNING id into newid;
  INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, original_identifier, new_identifier)
    VALUES (p_connectionid, C_OBJECTTYPE_CONNECTIONS, newid, C_OBJECTTYPE_CONNECTIONS, newid, origName, newrec.NAME);
  commit;
  return newid;
END copy_connection;


FUNCTION create_dummy_catalog(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_CATALOGS.ID%TYPE;
BEGIN
  INSERT INTO MD_CATALOGS (CONNECTION_ID_FK, CATALOG_NAME, DUMMY_FLAG, NATIVE_SQL, NATIVE_KEY)
  VALUES (p_connectionid, ' ', C_DUMMYFLAG_TRUE, NULL, NULL)
  RETURNING ID INTO newid;
  RETURN newid;
END create_dummy_catalog;

FUNCTION find_or_create_dummy_catalog(p_connectionid MD_CONNECTIONS.ID%TYPE, p_catalogid MD_CATALOGS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_CATALOGS%ROWTYPE;
  newid MD_CATALOGS.ID%TYPE;
BEGIN
  SELECT * INTO newrec from MD_CATALOGS where connection_id_fk = p_connectionid and "ID" = p_catalogid;
  return newrec.id;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
  INSERT INTO MD_CATALOGS (CONNECTION_ID_FK, CATALOG_NAME, DUMMY_FLAG, NATIVE_SQL, NATIVE_KEY)
  VALUES (p_connectionid, ' ', C_DUMMYFLAG_TRUE, NULL, NULL)
  RETURNING ID INTO newid;
  INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, DERIVED_OBJECT_NAMESPACE)
    VALUES (p_catalogid, C_OBJECTTYPE_CATALOGS, newid, C_OBJECTTYPE_CATALOGS, p_connectionid, C_NS_DATABASE);
  commit;
  return newid;
END find_or_create_dummy_catalog;

-- Enterprise convert may have 1 catalog belonging to a given connection id
PROCEDURE create_dummy_catalogs(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN) 
IS
  CURSOR curcats(connId MD_CONNECTIONS.ID%TYPE) IS select * from MD_CATALOGS where connection_id_fk = connId;
  cat_row MD_CATALOGS%ROWTYPE;
  newid MD_CATALOGS."ID"%TYPE;
  v_sql VARCHAR2(300);
BEGIN
   OPEN curcats(p_connectionid);
   FETCH curcats INTO cat_row;  
   LOOP
     EXIT WHEN curcats%NOTFOUND;
     newid := find_or_create_dummy_catalog(p_newconnectionid, cat_row."ID");
     v_sql := 'UPDATE MD_CATALOGS SET CATALOG_NAME = ''' || cat_row."CATALOG_NAME"  || ''' WHERE ID = ' || TO_CHAR(newid);
     EXECUTE IMMEDIATE v_sql;
     FETCH curcats INTO cat_row;  
   END LOOP;
  CLOSE curcats; 
  COMMIT;
END create_dummy_catalogs;


FUNCTION copy_individual_catalog(p_catalogid MD_CATALOGS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_CATALOGS%ROWTYPE;
  newconnectionid MD_CATALOGS.CONNECTION_ID_FK%TYPE;
  dummycatalogid MD_CATALOGS.ID%TYPE;
  originalconnectionid MD_CATALOGS.CONNECTION_ID_FK%TYPE;
BEGIN
  -- Catalogs aren't copied as such. Instead, we make a single DUMMY catalog
  -- Within the new connection
  -- So..first see if one exists for the copied connection
  SELECT CONNECTION_ID_FK INTO originalconnectionid FROM MD_CATALOGS WHERE ID = p_catalogid;
  -- For connections, we have a special case.  We can't store the new connection, but 0 is ok.
  newconnectionid := find_object_copy(originalconnectionid, C_OBJECTTYPE_CONNECTIONS, 0);
  IF newconnectionid IS NULL THEN
    newconnectionid := copy_connection(originalconnectionid);
  END IF;
  dummycatalogid := find_or_create_dummy_catalog(newconnectionid, p_catalogid);
  RETURN dummycatalogid;  
END copy_individual_catalog;

FUNCTION copy_individual_schema(p_schemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_SCHEMAS.ID%TYPE;
  newrec MD_SCHEMAS%ROWTYPE;
  newcatalogid MD_CATALOGS.ID%TYPE;
  originalcatalogname MD_CATALOGS.CATALOG_NAME%TYPE;
  originalcatalogid MD_SCHEMAS.CATALOG_ID_FK%TYPE;
  originalschemaname MD_SCHEMAS.NAME%TYPE;
  originalisdummy CHAR;
BEGIN
  SELECT * INTO newrec FROM md_schemas WHERE id = p_schemaid;
  newcatalogid := find_object_copy(newrec.catalog_id_fk,   C_OBJECTTYPE_CATALOGS, p_newconnectionid);
  originalcatalogid := newrec.catalog_id_fk;
  originalschemaname := newrec.NAME;
  select CATALOG_NAME, DUMMY_FLAG into originalcatalogname, originalisdummy from MD_CATALOGS WHERE ID = originalcatalogid;
  IF newcatalogid IS NULL THEN
    newcatalogid := copy_individual_catalog(newrec.catalog_id_fk);
  END IF;

  newrec.catalog_id_fk := newcatalogid;
  if originalisdummy <> C_DUMMYFLAG_TRUE THEN
    newrec.name := originalcatalogname || '_' || newrec.name;
  end if;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT INTO MD_SCHEMAS VALUES newrec RETURNING ID INTO newid;
  INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES (p_schemaid, C_OBJECTTYPE_SCHEMAS, newid, C_OBJECTTYPE_SCHEMAS, originalschemaname, newrec.name, C_NS_DATABASE);
  INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type)
    VALUES (originalcatalogid, C_OBJECTTYPE_CATALOGS, newid, C_OBJECTTYPE_SCHEMAS);
  COMMIT;
  return newid;
END copy_individual_schema;

FUNCTION copy_individual_table(p_tableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newrec MD_TABLES%rowtype;
  newid MD_TABLES.ID%TYPE;
  newschemaid MD_SCHEMAS.ID%TYPE;
BEGIN
  SELECT * INTO newrec FROM MD_tables WHERE id = p_tableid;
  newschemaid := find_object_copy(newrec.schema_id_fk,   C_OBJECTTYPE_SCHEMAS, p_newconnectionid);
  IF newschemaid IS NULL THEN
    newschemaid := copy_individual_schema(newrec.schema_id_fk, p_newconnectionid);
  END IF;

  newrec.schema_id_fk := newschemaid;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT INTO MD_TABLES VALUES newrec RETURNING ID INTO newid;
  INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(p_tableid,   C_OBJECTTYPE_TABLES,   newid,   C_OBJECTTYPE_TABLES, p_newconnectionid, newrec.table_name, newrec.table_name, C_NS_SCHEMA_OBJS || TO_CHAR(newschemaid));
  COMMIT;
  RETURN newid;
END copy_individual_table;

FUNCTION copy_individual_column(p_columnid MD_COLUMNS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  newid MD_COLUMNS.ID%TYPE;
  newrec MD_COLUMNS%rowtype;
  newtableid MD_TABLES.ID%TYPE;
BEGIN
  SELECT * INTO newrec FROM md_columns WHERE id = p_columnid;
  -- TODO: How do I check if this worked?
  -- OK. We need to fix up table id
  newtableid := find_object_copy(newrec.table_id_fk,   C_OBJECTTYPE_TABLES, p_newconnectionid);

  IF newtableid IS NULL THEN
    newtableid := copy_individual_table(newrec.table_id_fk, p_newconnectionid);
  END IF;

  newrec.table_id_fk := newtableid;
  -- Let the trigger work out the new id
  newrec.ID := NULL;
  INSERT INTO md_columns VALUES newrec RETURNING ID INTO newid;
  -- Columns have their own namespace.  They must be unique within the given table.  So..we'll use the table id as the namespace
  INSERT INTO md_derivatives(src_id,   src_type,   derived_id,   derived_type, derived_connection_id_fk, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(p_columnid,   C_OBJECTTYPE_COLUMNS,   newid,   C_OBJECTTYPE_COLUMNS, p_newconnectionid, newrec.column_name, newrec.column_name, C_OBJECTTYPE_COLUMNS || TO_CHAR(newtableid));
  COMMIT;
  RETURN newid;
END copy_individual_column;

FUNCTION copy_all_tables(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR all_tables_cursor is select table_id from mgv_all_tables where connection_id = p_connectionid;
  v_count NUMBER := 0;
  newid MD_TABLES.ID%TYPE;
BEGIN
  FOR v_tableid IN all_tables_cursor LOOP
    newid := copy_individual_table(v_tableid.table_id, p_newconnectionid);
    v_count := v_count + 1;
  END LOOP;
  RETURN v_count;
END copy_all_tables;

FUNCTION copy_all_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR all_columns_cursor is select id from MD_COLUMNS where table_id_fk in 
    (select table_id from MGV_ALL_TABLES where connection_id = p_connectionid);
  v_count NUMBER :=0;
  newid MD_COLUMNS.ID%TYPE;
BEGIN
  FOR v_columnid IN all_columns_cursor LOOP
    newid := copy_individual_column(v_columnid.id, p_newconnectionid);
    v_count := v_count + 1;
  END LOOP;
  return v_count;
END copy_all_columns;

FUNCTION copy_constraint_details(p_oldconsid MD_CONSTRAINTS.ID%TYPE, p_newconsid MD_CONSTRAINTS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_CONSTRAINT_DETAILS WHERE CONSTRAINT_ID_FK = p_oldconsid;
  v_newid MD_CONSTRAINT_DETAILS.ID%TYPE;
  v_count NUMBER := 0;
  v_originalid MD_CONSTRAINT_DETAILS.ID%TYPE;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.COLUMN_ID_FK := find_object_copy(v_row.COLUMN_ID_FK , C_OBJECTTYPE_COLUMNS, p_newconnectionid);
    v_row.CONSTRAINT_ID_FK := p_newconsid;
    INSERT INTO MD_CONSTRAINT_DETAILS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Constraint details don't have an identifier, so don't need a namespace.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid, C_OBJECTTYPE_CNSTRNT_DETAILS, v_newid, C_OBJECTTYPE_CNSTRNT_DETAILS, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_constraint_details;

FUNCTION copy_all_constraints_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
   v_selectStmt VARCHAR2(4000) :=     
  'SELECT * FROM MD_CONSTRAINTS WHERE TABLE_ID_FK IN       
    (SELECT SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = ''' || C_OBJECTTYPE_TABLES ||''' AND DERIVED_TYPE = '''
    || C_OBJECTTYPE_TABLES || ''' AND DERIVED_ID IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE SCHEMA_ID = ' || p_newschemaid || '))';
  v_count NUMBER := 0;
  v_newid MD_CONSTRAINTS.ID%TYPE;
  v_originalid MD_CONSTRAINTS.ID%TYPE;
  v_ret NUMBER;
  v_row MD_CONSTRAINTS%ROWTYPE;
  v_storeRefTableId MD_TABLES.ID%TYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_CONSTRAINTS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_ID_FK := find_object_copy(v_row.TABLE_ID_FK , C_OBJECTTYPE_TABLES, p_newconnectionid);
    if v_row.REFTABLE_ID_FK IS NOT NULL THEN
      v_storeRefTableId := v_row.REFTABLE_ID_FK;
      v_row.REFTABLE_ID_FK := find_object_copy(v_row.REFTABLE_ID_FK , C_OBJECTTYPE_TABLES, p_newconnectionid);
    END IF;
    INSERT INTO MD_CONSTRAINTS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_CONSTRAINTS, v_newid, C_OBJECTTYPE_CONSTRAINTS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_CONSTRAINTS|| TO_CHAR(p_newschemaid));
    v_ret := copy_constraint_details(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  return v_count;    
END copy_all_constraints_cascade;

FUNCTION copy_all_columns_cascade(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_COLUMNS WHERE TABLE_ID_FK = ' || p_oldtableid;
  v_originalId MD_COLUMNS.ID%TYPE;
  v_newid MD_COLUMNS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_COLUMNS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_COLUMNS, 'COLUMN_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_ID_FK := p_newtableid;
    INSERT INTO MD_COLUMNS values  v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Columns don't need a namespace as such, they must not clash within the table.  We'll handle this
	-- As a special case.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, original_identifier, new_identifier, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_COLUMNS, v_newid, C_OBJECTTYPE_COLUMNS, p_newconnectionid, v_row.column_name, v_row.column_name, C_OBJECTTYPE_COLUMNS || TO_CHAR(p_newtableid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_columns_cascade;

FUNCTION copy_index_details(p_oldindexid MD_INDEXES.ID%TYPE, p_newindexid MD_INDEXES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_INDEX_DETAILS WHERE MD_INDEX_DETAILS.INDEX_ID_FK = p_oldindexid;
  v_originalid MD_INDEX_DETAILS.ID%TYPE;
  v_newid MD_INDEX_DETAILS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN CURS LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.INDEX_ID_FK := p_newindexid;
    v_row.COLUMN_ID_FK := find_object_copy(v_row.COLUMN_ID_FK, C_OBJECTTYPE_COLUMNS, p_newconnectionid);
    INSERT INTO MD_INDEX_DETAILS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Index details don't have identifiers, so don't need a namespace.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
    VALUES(v_originalid, C_OBJECTTYPE_INDEX_DETAILS, v_newid, C_OBJECTTYPE_INDEX_DETAILS, p_newconnectionid);
  END LOOP;
  RETURN v_count;
END copy_index_details;

FUNCTION copy_all_indexes(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_INDEXES WHERE MD_INDEXES.TABLE_ID_FK = ' || p_oldtableid;
  v_originalid MD_INDEXES.ID%TYPE;
  v_newid MD_INDEXES.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_INDEXES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_INDEXES, 'INDEX_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    
    v_row.ID := NULL;
    v_row.TABLE_ID_FK := p_newtableid;
    INSERT INTO MD_INDEXES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_INDEXES, v_newid, C_OBJECTTYPE_INDEXES, p_newconnectionid, v_row.INDEX_NAME, v_row.INDEX_NAME, C_NS_INDEXES || p_newschemaid);
    v_ret := copy_index_details(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_indexes;

FUNCTION copy_all_table_triggers(p_oldtableid MD_TABLES.ID%TYPE, p_newtableid MD_TABLES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = ' || p_oldtableid;
  v_originalid MD_TRIGGERS.ID%TYPE;
  v_newid MD_TRIGGERS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TRIGGERS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TRIGGERS, 'TRIGGER_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_OR_VIEW_ID_FK := p_newtableid;
    INSERT INTO MD_TRIGGERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_TRIGGERS, v_newid, C_OBJECTTYPE_TRIGGERS, p_newconnectionid, v_row.TRIGGER_NAME, v_row.TRIGGER_NAME, C_NS_DB_TRIGGERS);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_table_triggers;

FUNCTION copy_all_tables_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET :=NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  /*CURSOR curs IS SELECT * FROM MD_TABLES where SCHEMA_ID_FK = p_oldschemaid; */
  v_newid MD_TABLES.ID%TYPE := NULL;
  v_originalid MD_TABLES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TABLES%ROWTYPE;
  v_filt MIGR_FILTER;
  v_condition VARCHAR2(4000);
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLES where SCHEMA_ID_FK = ' || p_oldschemaid;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TABLES, 'TABLE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_TABLES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_TABLES, v_newid, C_OBJECTTYPE_TABLES, p_newconnectionid, v_row.TABLE_NAME, v_row.TABLE_NAME,  C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_all_columns_cascade(v_originalid, v_newid, p_newconnectionid, p_filter_set);
    v_ret := copy_all_indexes(v_originalid, v_newid, p_newconnectionid, p_newschemaid, p_filter_set);
    v_ret := copy_all_table_triggers(v_originalid, v_newid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_tables_cascade;

FUNCTION copy_all_view_triggers(p_oldviewid MD_VIEWS.ID%TYPE, p_newviewid MD_VIEWS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs IS SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = p_oldviewid;
  v_originalid MD_TRIGGERS.ID%TYPE;
  v_newid MD_TRIGGERS.ID%TYPE;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.TABLE_OR_VIEW_ID_FK := p_newviewid;
    INSERT INTO MD_TRIGGERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
    VALUES(v_originalid, C_OBJECTTYPE_TRIGGERS, v_newid, C_OBJECTTYPE_TRIGGERS, p_newconnectionid, v_row.TRIGGER_NAME, v_row.TRIGGER_NAME, C_NS_DB_TRIGGERS);
  END LOOP;
  return v_count;
END copy_all_view_triggers;

FUNCTION copy_all_views_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_VIEWS.ID%TYPE := NULL;
  v_originalid MD_VIEWS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_VIEWS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_VIEWS, 'VIEW_NAME' ,'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_VIEWS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_VIEWS,   v_newid,   C_OBJECTTYPE_VIEWS, p_newconnectionid, v_row.VIEW_NAME, v_row.VIEW_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_all_view_triggers(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  RETURN v_count;
END copy_all_views_cascade;

FUNCTION copy_group_members(p_oldgroupid MD_GROUPS.ID%TYPE, p_newgroupid MD_GROUPS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs IS SELECT * FROM MD_GROUP_MEMBERS WHERE GROUP_ID_FK = p_oldgroupid;
  v_newid MD_GROUP_MEMBERS.ID%TYPE := NULL;
  v_originalid MD_GROUP_MEMBERS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.GROUP_ID_FK := p_newgroupid;
    v_row.USER_ID_FK := find_object_copy(v_row.USER_ID_FK, C_OBJECTTYPE_USERS, p_newconnectionid);
    INSERT INTO MD_GROUP_MEMBERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Group members do not have identifiers, so don't need a namespace
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid,   C_OBJECTTYPE_GROUP_MEMBERS,   v_newid,   C_OBJECTTYPE_GROUP_MEMBERS, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_group_members;

FUNCTION copy_all_groups_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_GROUPS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_GROUPS.ID%TYPE := NULL;
  v_originalid MD_GROUPS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_namespace MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE := NULL;
  v_row MD_GROUPS%ROWTYPE;
  v_catalogname MD_CATALOGS.CATALOG_NAME%TYPE;
  v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
  v_oldname MD_GROUPS.GROUP_NAME%TYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_GROUPS, 'GROUP_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    SELECT CATALOG_NAME, DUMMY_FLAG INTO v_catalogname, v_catalogdummy
      FROM MD_CATALOGS, MD_SCHEMAS WHERE MD_CATALOGS.ID = MD_SCHEMAS.CATALOG_ID_FK 
      AND MD_SCHEMAS.ID = p_oldschemaid;
    v_oldname := v_row.GROUP_NAME;
    if v_catalogdummy <> C_DUMMYFLAG_TRUE then
      v_row.GROUP_NAME := v_row.GROUP_NAME || '_' || v_catalogname;
    END IF;
    INSERT INTO MD_GROUPS values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	IF v_row.GROUP_FLAG = C_ROLE_FLAG THEN
		v_namespace := C_NS_USER_ROLES;
	ELSE
		v_namespace := C_NS_DATABASE;
	END IF;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_GROUPS, v_newid, C_OBJECTTYPE_GROUPS, p_newconnectionid, v_oldname, v_row.GROUP_NAME, v_namespace);
    v_ret := copy_group_members(v_originalid, v_newid, p_newconnectionid);   
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_groups_cascade;

FUNCTION copy_all_users_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_USERS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_USERS.ID%TYPE := NULL;
  v_originalid MD_USERS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_USERS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_USERS, 'USERNAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_USERS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_USERS,   v_newid,   C_OBJECTTYPE_USERS, p_newconnectionid, v_row.USERNAME, v_row.USERNAME, C_NS_USERS);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_users_cascade;

FUNCTION copy_all_other_objects_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_OTHER_OBJECTS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_OTHER_OBJECTS.ID%TYPE := NULL;
  v_originalid MD_OTHER_OBJECTS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_OTHER_OBJECTS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_OTHER_OBJECTS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_OTHER_OBJECTS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_OTHER_OBJECTS,   v_newid,   C_OBJECTTYPE_OTHER_OBJECTS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_other_objects_cascade;

FUNCTION copy_all_tablespaces_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLESPACES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_TABLESPACES.ID%TYPE := NULL;
  v_originalid MD_TABLESPACES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_TABLESPACES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_TABLESPACES, 'TABLESPACE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_TABLESPACES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_TABLESPACES,   v_newid,   C_OBJECTTYPE_TABLESPACES, p_newconnectionid, v_row.TABLESPACE_NAME, v_row.TABLESPACE_NAME, C_NS_TABLESPACES);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_tablespaces_cascade;

FUNCTION copy_all_udds_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_USER_DEFINED_DATA_TYPES.ID%TYPE := NULL;
  v_originalid MD_USER_DEFINED_DATA_TYPES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_USER_DEFINED_DATA_TYPES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_UDDT, 'DATA_TYPE_NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_USER_DEFINED_DATA_TYPES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_UDDT,   v_newid,   C_OBJECTTYPE_UDDT, p_newconnectionid, v_row.DATA_TYPE_NAME, v_row.DATA_TYPE_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_udds_cascade;

FUNCTION copy_child_procedures(p_oldpackageid MD_PACKAGES.ID%TYPE, p_newpackageid MD_PACKAGES.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE PACKAGE_ID_FK = ' || p_oldpackageid;
  v_newid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_originalid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_STORED_PROGRAMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.PACKAGE_ID_FK := p_newpackageid;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_STORED_PROGRAMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- No need for namespace here, the namespace is the package itself.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
      VALUES(v_originalid,   C_OBJECTTYPE_STORED_PROGRAMS,   v_newid,   C_OBJECTTYPE_STORED_PROGRAMS, p_newconnectionid, v_row.NAME, v_row.NAME);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_child_procedures;
  
FUNCTION copy_all_packages_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_PACKAGES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_PACKAGES.ID%TYPE := NULL;
  v_originalid MD_PACKAGES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_PACKAGES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_PACKAGES, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_PACKAGES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_PACKAGES,   v_newid,   C_OBJECTTYPE_PACKAGES, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_child_procedures(v_originalid, v_newid, p_newschemaid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_packages_cascade;

FUNCTION copy_all_unpackaged_sps(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = ' || p_oldschemaid ||' AND PACKAGE_ID_FK IS NULL';
  v_newid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_originalid MD_STORED_PROGRAMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_STORED_PROGRAMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.schema_id_fk := p_newschemaid;
    INSERT INTO MD_STORED_PROGRAMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Non-packaged procedures belong in the schema objects namespace.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_STORED_PROGRAMS, v_newid, C_OBJECTTYPE_STORED_PROGRAMS, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_unpackaged_sps;

FUNCTION copy_all_synonyms_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SYNONYMS WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_SYNONYMS.ID%TYPE := NULL;
  v_originalid MD_SYNONYMS.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_namespace MD_DERIVATIVES.DERIVED_OBJECT_NAMESPACE%TYPE;
  v_row MD_SYNONYMS%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SYNONYMS, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.SYNONYM_FOR_ID := find_object_copy(v_row.SYNONYM_FOR_ID, v_row.FOR_OBJECT_TYPE, p_newconnectionid);
    INSERT INTO MD_SYNONYMS VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
	-- Synonyms have two potential name spaces:  Private synonyms belong in the schema objects, while public 
	-- synonyms belong in their own namespace.
	IF v_row.PRIVATE_VISIBILITY = C_SYNONYM_PRIVATE THEN
		v_namespace := C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid);
	ELSE
		v_namespace := C_NS_PUBLIC_SYNONYMS;
        END IF;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_SYNONYMS, v_newid, C_OBJECTTYPE_SYNONYMS, p_newconnectionid, v_row.NAME, v_row.NAME, v_namespace);
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_synonyms_cascade;

FUNCTION copy_all_sequences_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_SEQUENCES.ID%TYPE := NULL;
  v_originalid MD_SEQUENCES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_SEQUENCES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SEQUENCES, 'NAME', 'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    INSERT INTO MD_SEQUENCES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, derived_connection_id_fk, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid, C_OBJECTTYPE_SEQUENCES, v_newid, C_OBJECTTYPE_SEQUENCES, p_newconnectionid, v_row.NAME, v_row.NAME, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
  END LOOP;
  CLOSE cv_curs;
  return v_count;
END copy_all_sequences_cascade;

FUNCTION copy_user_privileges(p_olduserid MD_PRIVILEGES.ID%TYPE, p_newuserid MD_PRIVILEGES.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR curs is SELECT * FROM MD_USER_PRIVILEGES WHERE PRIVILEGE_ID_FK = p_olduserid;
  v_newid MD_USER_PRIVILEGES.ID%TYPE;
  v_count NUMBER := 0;
  v_originalid MD_USER_PRIVILEGES.ID%TYPE;
  v_ret NUMBER;
BEGIN
  FOR v_row IN curs LOOP
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.USER_ID_FK := find_object_copy(v_row.USER_ID_FK , C_OBJECTTYPE_USERS, p_newconnectionid);
    v_row.PRIVILEGE_ID_FK := p_newuserid;
    INSERT INTO MD_USER_PRIVILEGES values v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK)
      VALUES(v_originalid, C_OBJECTTYPE_USER_PRIVILEGES, v_newid, C_OBJECTTYPE_USER_PRIVILEGES, p_newconnectionid);
  END LOOP;
  return v_count;
END copy_user_privileges;

FUNCTION copy_all_privileges_cascade(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_PRIVILEGES WHERE SCHEMA_ID_FK = ' || p_oldschemaid;
  v_newid MD_PRIVILEGES.ID%TYPE := NULL;
  v_originalid MD_PRIVILEGES.ID%TYPE := NULL;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_row MD_PRIVILEGES%ROWTYPE;
BEGIN
  v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_PRIVILEGES, 'PRIVILEGE_NAME' ,'ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    v_originalid := v_row.ID;
    v_row.ID := NULL;
    v_row.PRIVELEGE_OBJECT_ID := find_object_copy(v_row.PRIVELEGE_OBJECT_ID , v_row.PRIVELEGEOBJECTTYPE, p_newconnectionid);
    v_row.SCHEMA_ID_FK := p_newschemaid;
    INSERT INTO MD_PRIVILEGES VALUES v_row RETURNING ID INTO v_newid;
    v_ret := copy_additional_properties(v_originalid, v_newid, p_newconnectionid);
    v_count := v_count + 1;
    -- No need to pass on the identifiers to the derivatives as no need to worry about the clashes for the same.
    INSERT INTO MD_DERIVATIVES(src_id, src_type, derived_id, derived_type, DERIVED_CONNECTION_ID_FK, DERIVED_OBJECT_NAMESPACE)
      VALUES(v_originalid,   C_OBJECTTYPE_PRIVILEGES,   v_newid,   C_OBJECTTYPE_PRIVILEGES, p_newconnectionid, C_NS_SCHEMA_OBJS || TO_CHAR(p_newschemaid));
    v_ret := copy_user_privileges(v_originalid, v_newid, p_newconnectionid);
  END LOOP;
  CLOSE cv_curs;
  RETURN v_count;
END copy_all_privileges_cascade;

FUNCTION copy_all_cross_schema_objects(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
-- DD; Can't do this until all schema tables are done
-- There may be foreign keys between schema
  v_ret := copy_all_constraints_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_groups_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_other_objects_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_privileges_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  -- Do synonyms last: This way, we can be sure that the oject for which it is a synonym
  -- has already been copied.
  v_ret := copy_all_synonyms_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  return v_ret;
END copy_all_cross_schema_objects;

FUNCTION copy_all_schema_objects(p_oldschemaid MD_SCHEMAS.ID%TYPE, p_newschemaid MD_SCHEMAS.ID%TYPE, p_newconnectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := copy_all_tables_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_views_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_users_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_tablespaces_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_udds_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_packages_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_unpackaged_sps(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  v_ret := copy_all_sequences_cascade(p_oldschemaid, p_newschemaid, p_newconnectionid, p_filter_set);
  -- TODO: Roles are wrong in the model right now.  I need to fix these up.
  --v_ret := copy_all_roles_cascade(p_oldschemaid, p_newschemaid);
  return v_ret;  
END copy_all_schema_objects;

FUNCTION copy_catalogs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                   p_catalogid MD_CATALOGS.ID%TYPE, 
                                   p_newcatalogid MD_CATALOGS.ID%TYPE, 
                                   p_newconnectionid MD_CONNECTIONS.ID%TYPE, 
                                   p_filter_set MIGR_FILTER_SET :=NULL) RETURN NUMBER
IS
  cv_curs REF_CURSOR;
  v_newid NUMBER;
  v_count NUMBER := 0;
  v_ret NUMBER;
  v_newName MD_SCHEMAS.NAME%TYPE;
  v_filt MIGR_FILTER;
  v_selectStmt VARCHAR2(4000) := 'SELECT a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
      FROM MD_SCHEMAS A, MD_CATALOGS B
      WHERE 
      	A.CATALOG_ID_FK = B.ID 
        AND B.ID =' || p_catalogid  || 
        ' AND CONNECTION_ID_FK = ' || p_connectionid ;
--  v_schemaid MD_SCHEMAS.ID%TYPE;
--  v_schemaname MD_SCHEMAS.NAME%TYPE;
--  v_catalogid MD_CATALOGS.ID%TYPE;
--  v_catalogname MD_CATALOGS.CATALOG_NAME%TYPE;
--  v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
--  v_schematype MD_SCHEMAS.TYPE%TYPE;
--  v_schemacharset MD_SCHEMAS.CHARACTER_SET%TYPE;
--  v_schemaversiontag MD_SCHEMAS.VERSION_TAG%TYPE;
  
  v_derivedRec  DERIVATIVE_REC;
  v_derivedRec2 DERIVATIVE_REC2;
BEGIN
  --v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_CATALOGS, 'B.CATALOG_NAME', 'B.ID', v_selectStmt);
  -- NOTE: May need to apply a schema filter here too
  --v_selectStmt := apply_filter(p_filter_set, C_OBJECTTYPE_SCHEMAS, 'A.NAME', 'A.ID', v_selectStmt);
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    --FETCH cv_curs INTO v_schemaid, v_schemaname, v_catalogid, v_catalogname, v_catalogdummy, v_schematype, v_schemacharset, v_schemaversiontag;
    FETCH cv_curs INTO v_derivedRec;
    EXIT WHEN cv_curs%NOTFOUND;
    
    /*
     schema_id          NUMBER,
     schema_name        VARCHAR2(4000 BYTE),
     catalog_id         NUMBER,
     catalog_name       VARCHAR2(4000 BYTE),
     dummy_flag         CHAR(1 BYTE),
     character_set      VARCHAR2(4000 BYTE),
     version_tag        VARCHAR2(40 BYTE)
    
    */
    -- TODO: Handle wrapping here.
    if v_derivedRec.dummy_flag  <> C_DUMMYFLAG_TRUE then
      v_newName := v_derivedRec.schema_name || '_' || v_derivedRec.catalog_name;
	else
	  v_newName := v_derivedRec.schema_name;
	end if;
    INSERT INTO MD_SCHEMAS(CATALOG_ID_FK, NAME, TYPE, CHARACTER_SET, VERSION_TAG)
    VALUES (p_newcatalogid,  v_newName, v_derivedRec.cap_type, v_derivedRec.character_set, v_derivedRec.version_tag)
    RETURNING ID INTO v_newid;
    -- Here's and interesting situation.  What will we do with the additional properties?
    -- I can coalesce them such that they are in the condensed catalog/schema pair
    -- But their order could (will) contain duplicates.....
    v_ret := copy_additional_properties(p_catalogid, v_newid, p_newconnectionid);
    v_ret := copy_additional_properties(v_derivedRec.schema_id, v_newid, p_newconnectionid);
	-- No Need for namespace stuff for catalogs.
    INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
      ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
    VALUES (v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, v_newid, C_OBJECTTYPE_SCHEMAS, p_newconnectionid, v_derivedRec.schema_name, v_newName);
    INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
    VALUES (v_derivedRec.catalog_id, C_OBJECTTYPE_CATALOGS, v_newid, C_OBJECTTYPE_SCHEMAS, p_newconnectionid, v_derivedRec.catalog_name, v_newName);
    -- TODO: ADD THE FILTER TO THE PARAMETERS BELOW
    v_ret := copy_all_schema_objects(v_derivedRec.schema_id, v_newid, p_newconnectionid, p_filter_set);
    v_count := v_count + 1;
    v_newName :='';
  END LOOP;
  CLOSE cv_curs;
  -- Now...Once all of the schema objects have been done, we have to copy all of those objects that could cross
  -- schema boundaries.  So we need to loop through them again
v_selectStmt := 'SELECT SRC_ID, DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = ' 
  					|| '''' || C_OBJECTTYPE_SCHEMAS || ''' AND DERIVED_TYPE = ''' || C_OBJECTTYPE_SCHEMAS ||''''
  					--|| ' AND DERIVED_CONNECTION_ID_FK = ' || p_newconnectionid
                      || ' AND DERIVED_ID IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CATALOG_ID = ' || p_newcatalogid || ' AND CONNECTION_ID = ' || p_newconnectionid || ')';
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs into v_derivedRec2;
    EXIT when cv_curs%NOTFOUND;
    v_ret := copy_all_cross_schema_objects(v_derivedRec2.schemaid, v_derivedRec2.newid, p_newconnectionid, p_filter_set);
  END LOOP;
  CLOSE cv_curs;  					
  return v_count;
END copy_catalogs_cascade;

FUNCTION remove_duplicate_indexes(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs IS select  index_id_fk, sum(md_index_details.column_id_fk * md_index_details.detail_order) simplehash from md_index_details 
    where index_id_fk in (select id from md_indexes where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)) 
    group by index_id_fk
    order by simplehash, index_id_fk;
  v_lasthash NUMBER :=0;
  v_currenthash NUMBER :=0;
  v_currentid MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;
  v_lastid MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;
  v_count NUMBER := 0;
  v_sql VARCHAR(255);
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_currentid, v_currenthash;
    EXIT WHEN v_curs%NOTFOUND;
    if v_currenthash = v_lasthash THEN
      -- dbms_output.put_line('Index ' || TO_CHAR(v_currentid) || ' is a duplicate');
      v_sql := 'DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid;
      EXECUTE IMMEDIATE v_sql;
      --dbms_output.put_line('DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid);
      v_sql := 'UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = ''DUPIND'', DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid);
      EXECUTE IMMEDIATE v_sql;
      -- dbms_output.put_line('UPDATE MD_DERIVATIVES SET DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid));
      v_count := v_count + 1;
    else
      v_lasthash := v_currenthash;
      v_lastid := v_currentid;
    end if;
  END LOOP;
  CLOSE v_curs;
  return v_count;    
END remove_duplicate_indexes;

FUNCTION remove_indexes_used_elsewhere(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs IS
    select INDEX_ID_FK from 
      (select  index_id_fk, sum(md_index_details.column_id_fk * md_index_details.detail_order) simplehash from md_index_details 
       where index_id_fk in (select id from md_indexes where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)) 
       group by index_id_fk
       order by simplehash) a
    WHERE A.SIMPLEHASH 
    IN
    (
      SELECT b.simplehash FROM 
      (
        SELECT SUM(MD_CONSTRAINT_DETAILS.COLUMN_ID_FK * MD_CONSTRAINT_DETAILS.DETAIL_ORDER) simplehash from md_constraint_details
        where constraint_id_fk in (select id from md_constraints where table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid))
        group by constraint_id_fk
        order by simplehash
      ) b
     );
  v_currentId MD_INDEX_DETAILS.INDEX_ID_FK%TYPE;     
  v_sql VARCHAR2(255);
  v_count NUMBER := 0;
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_currentid;
    EXIT WHEN v_curs%NOTFOUND;
      v_sql := 'DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid;
      EXECUTE IMMEDIATE v_sql;
      --dbms_output.put_line('DELETE FROM MD_INDEXES WHERE ID = ' || v_currentid);
      v_sql := 'DELETE FROM MD_DERIVATIVES WHERE DERIVED_ID = ' || TO_CHAR(v_currentid);
      EXECUTE IMMEDIATE v_sql;
      -- dbms_output.put_line('UPDATE MD_DERIVATIVES SET DERIVED_ID = ' || TO_CHAR(v_lastid)  || ' WHERE DERIVED_ID = ' || TO_CHAR(v_currentid));
      v_count := v_count + 1;
  END LOOP;
  CLOSE v_curs;
  RETURN v_count;
END remove_indexes_used_elsewhere;    

PROCEDURE cut_lob_indexes_to_25(p_connectionId MD_CONNECTIONS.ID%TYPE)
IS
  CURSOR v_curs (context MD_ADDITIONAL_PROPERTIES.VALUE%TYPE, ctxcat MD_ADDITIONAL_PROPERTIES.VALUE%TYPE) is 
    SELECT * FROM MD_INDEXES WHERE 
    TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND LENGTH(INDEX_NAME) > 25 AND  
    ( EXISTS (SELECT 1 FROM MD_ADDITIONAL_PROPERTIES WHERE ( VALUE = context 
    OR VALUE = ctxcat ) AND REF_ID_FK = MD_INDEXES.ID ) )
    FOR UPDATE OF INDEX_NAME;
  v_numIndexCount INTEGER := 1;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;
  v_row MD_INDEXES%ROWTYPE;
BEGIN
-- totierne: for each lob index cut to 23 or 22 or 21 to put _XXX up to 25 chars (should be bytes)
  OPEN v_curs (C_INDEXTYPE_CONTEXT, C_INDEXTYPE_CTXCAT);
  LOOP
    FETCH v_curs INTO v_row;
    EXIT WHEN v_curs%NOTFOUND;
    v_newName := MIGRATION_TRANSFORMER.add_suffix(v_row.INDEX_NAME, '_' || TO_CHAR(v_numIndexCount), 25);
    update MD_INDEXES SET index_name = v_newName where current of v_curs;
    v_numIndexCount := v_numIndexCount + 1;
  END LOOP;
  CLOSE v_curs;
  commit;
END cut_lob_indexes_to_25;

FUNCTION fixupTextIndexes(p_connectionId MD_CONNECTIONS.ID%TYPE) return NUMBER
IS
  CURSOR v_curs is
    select index_id_fk, count(*) numcols from md_index_details where
    index_id_fk in (
      select c.id
      from md_columns a, md_index_details b, md_indexes c
      where b.column_id_fk = a.id
      and column_type in ('BLOB', 'CLOB')
      and b.index_id_fk = c.id
      and c.table_id_fk in (select table_id from mgv_all_tables where connection_id = p_connectionid)
    ) group by index_id_fk;
  v_indexId MD_INDEXES.ID%TYPE;
  v_numCols INTEGER;
  v_extendedIndexType MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
BEGIN        
  OPEN v_curs;
  LOOP
    FETCH v_curs into v_indexId, v_numCols;
    EXIT WHEN v_curs%NOTFOUND;
    IF v_numCols = 1 THEN
      v_extendedIndexType := C_INDEXTYPE_CONTEXT;
    ELSE
      v_extendedIndexType := C_INDEXTYPE_CTXCAT;
    END IF;
    INSERT INTO MD_ADDITIONAL_PROPERTIES(CONNECTION_ID_FK ,REF_ID_FK, REF_TYPE, PROP_KEY, VALUE)
    VALUES (p_connectionId, v_indexId, C_OBJECTTYPE_INDEXES, C_PROPKEY_EXTENDEDINDEXTYPE, v_extendedIndexType);
    COMMIT;
  END LOOP;
  -- NCLOBs cannot be indexed.  They aren't allowed in normal indexes, and they aren't allowed in TEXT 
  -- indexes.   The only thing to do here is to remove it.
  -- TODO: We can't just do this silently.
   -- Mark THE derivative RECORD AS DELETEd.
  UPDATE md_derivatives SET DERIVATIVE_REASON = 'NCLOBIND' WHERE DERIVED_TYPE = 'MD_INDEXES' AND DERIVED_CONNECTION_ID_FK = p_connectionid
      AND  DERIVED_ID IN 
             (SELECT C.ID   FROM MD_COLUMNS A, MD_INDEX_DETAILS B, MD_INDEXES C, MGV_ALL_TABLES D
                 WHERE B.COLUMN_ID_FK = A.ID AND COLUMN_TYPE ='NCLOB' AND B.INDEX_ID_FK = C.ID
                  AND C.TABLE_ID_FK = D.TABLE_ID AND D.CONNECTION_ID = p_connectionid);
  DELETE FROM MD_INDEXES WHERE ID IN
             (SELECT C.ID   FROM MD_COLUMNS A, MD_INDEX_DETAILS B, MD_INDEXES C, MGV_ALL_TABLES D
                 WHERE B.COLUMN_ID_FK = A.ID AND COLUMN_TYPE ='NCLOB' AND B.INDEX_ID_FK = C.ID
                  AND C.TABLE_ID_FK = D.TABLE_ID AND D.CONNECTION_ID = p_connectionid);
  -- cut blob/clob index string to 25 characters with _nn incrementing marker
  cut_lob_indexes_to_25(p_connectionId);
  CLOSE v_curs;
  return 0;
END fixupTextIndexes;

PROCEDURE createDummyScrTblPerSchema_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                               
  v_qualified_native_name VARCHAR2(300);
  n_newtblid NUMBER;
  tbltrigRec MD_TRIGGERS%ROWTYPE;
  n_newtrigId MD_TRIGGERS."ID"%TYPE;
  origtrigId MD_TRIGGERS."ID"%TYPE;
  CURSOR curtblTrig(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_TRIGGERS 
                                       WHERE TRIGGER_ON_FLAG = 'T'
                                           AND TABLE_OR_VIEW_ID_FK IN (
                                                SELECT "ID" 
                                                FROM MD_TABLES
                                                WHERE SCHEMA_ID_FK = schId);
                                                  
BEGIN
   SELECT A.catalog_name || '.' || B."NAME" || 'DUMMY' INTO v_qualified_native_name
             FROM MD_CATALOGS A, MD_SCHEMAS B
             WHERE A."ID" = B.catalog_id_fk
                   AND B."ID" = schemaId;

   -- insert 1 DUMMY table per schema.  We don't want to create peer records in md_tables for each table entry
   INSERT INTO MD_TABLES(schema_id_fk, table_name, qualified_native_name)
                  VALUES(new_schemaId, 'DUMMY', v_qualified_native_name)
                  RETURNING "ID" INTO n_newtblid;
   -- There is no additional property to copy as this is a dummy table with no src peer
   -- This table is used to attached all the translated triggers
                  
   -- insert corresponding row into md_derivatives
   INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (n_newtblid, C_OBJECTTYPE_TABLES, n_newtblId, C_OBJECTTYPE_TABLES, p_scratchConn, 'DUMMY', 'DUMMY');  
                   
   --copy_all_tbl_trigs_ee
   OPEN curtblTrig(schemaId);
   FETCH curtblTrig INTO tbltrigRec;
   LOOP
      EXIT WHEN curtblTrig%NOTFOUND;
      origtrigId := tbltrigRec."ID";
      tbltrigRec."ID" := NULL;
      tbltrigRec.table_or_view_id_fk := n_newtblid;
      INSERT INTO MD_TRIGGERS VALUES tbltrigRec RETURNING "ID" INTO n_newtrigId;

      -- insert corresponding row into md_derivatives
      INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (origtrigId, C_OBJECTTYPE_TRIGGERS, n_newtrigId, C_OBJECTTYPE_TRIGGERS, p_scratchConn, tbltrigRec.TRIGGER_NAME, tbltrigRec.TRIGGER_NAME);  

      
      FETCH curtblTrig INTO tbltrigRec;
   END LOOP;
   CLOSE curtblTrig;
                                     
END createDummyScrTblPerSchema_ee;

PROCEDURE copy_all_views_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                         
   CURSOR curViews(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = schId;
   viewRec MD_VIEWS%ROWTYPE;
   n_newVwid MD_VIEWS."ID"%TYPE;
   norigVwid MD_VIEWS."ID"%TYPE;
   n_ret NUMBER;
   
  vwtrigRec MD_TRIGGERS%ROWTYPE;
  n_newtrigId MD_TRIGGERS."ID"%TYPE;
  origtrigId MD_TRIGGERS."ID"%TYPE;
  CURSOR curvwTrig(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_TRIGGERS 
                                       WHERE TRIGGER_ON_FLAG = 'V'
                                           AND TABLE_OR_VIEW_ID_FK IN (
                                                SELECT "ID" 
                                                FROM MD_TABLES
                                                WHERE SCHEMA_ID_FK = schId);   
BEGIN
   OPEN curViews(schemaId);
   FETCH curViews INTO viewRec;
   LOOP
      EXIT WHEN curViews%NOTFOUND;
      norigVwid := viewRec."ID";
      viewRec."ID" := NULL;
      viewRec.SCHEMA_ID_FK := new_schemaId;
      INSERT INTO MD_VIEWS VALUES viewRec RETURNING "ID" INTO n_newVwId;
      n_ret := copy_additional_properties(viewRec."ID", n_newVwId, p_scratchConn);
      
      INSERT INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES(norigVwid,   
                                  C_OBJECTTYPE_VIEWS,   
                                  n_newVwId,   
                                  C_OBJECTTYPE_VIEWS, 
                                  p_scratchConn, viewRec.VIEW_NAME, viewRec.VIEW_NAME, C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaId));
                                  
      -- Handle view triggers
      OPEN curvwTrig(schemaId);
      FETCH curvwTrig INTO vwtrigRec;
      LOOP
         EXIT WHEN curvwTrig%NOTFOUND;
         origtrigId := vwtrigRec."ID";
         vwtrigRec."ID" := NULL;
         vwtrigRec.table_or_view_id_fk := n_newVwId;
         
         INSERT INTO MD_TRIGGERS VALUES vwtrigRec RETURNING "ID" INTO n_newtrigId;
         
         INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (origtrigId, C_OBJECTTYPE_TRIGGERS, n_newtrigId, C_OBJECTTYPE_TRIGGERS, p_scratchConn, vwtrigRec.TRIGGER_NAME, vwtrigRec.TRIGGER_NAME);           
         
         FETCH curvwTrig INTO vwtrigRec;         
      END LOOP; -- end vw trigger loop
      CLOSE curvwTrig;
      
      FETCH curViews INTO viewRec;
      --copy_all_tbl_trigs_ee      
   END LOOP; -- end vw loop
   CLOSE curViews;
END copy_all_views_ee;

PROCEDURE copy_all_unpackaged_sps_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS              
   CURSOR curSps(schId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = schId;
   spRec MD_STORED_PROGRAMS%ROWTYPE;
   n_newSpid MD_STORED_PROGRAMS."ID"%TYPE;
   norigSpid MD_STORED_PROGRAMS."ID"%TYPE;
   n_ret NUMBER;
BEGIN
   OPEN curSps(schemaId);
   FETCH curSps INTO spRec;
   LOOP
      EXIT WHEN curSps%NOTFOUND;
      norigSpid := spRec."ID";
      spRec."ID" := NULL;
      spRec.schema_id_fk := new_schemaId;

      INSERT INTO MD_STORED_PROGRAMS VALUES spRec RETURNING "ID" INTO n_newSpid;
      n_ret := copy_additional_properties(spRec."ID", n_newSpid, p_scratchConn);
      
      INSERT INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES(norigSpid,   
                                  C_OBJECTTYPE_STORED_PROGRAMS,   
                                  n_newSpid,   
                                  C_OBJECTTYPE_STORED_PROGRAMS, 
                                  p_scratchConn, spRec."NAME", spRec."NAME", C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaId));
      FETCH curSps INTO spRec;
   END LOOP;
   CLOSE curSps;
END copy_all_unpackaged_sps_ee;

PROCEDURE copy_all_tbl_trigs_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
   NULL;
END copy_all_tbl_trigs_ee;

PROCEDURE copy_all_vw_trigs_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
   NULL;
END copy_all_vw_trigs_ee;

PROCEDURE createIndexEntry(tableId MD_TABLES."ID"%TYPE, 
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curIndexes(tableId MD_TABLES."ID"%TYPE) IS SELECT * FROM md_indexes WHERE table_id_fk = tableId;
   idxRow MD_INDEXES%ROWTYPE;

BEGIN
   OPEN curIndexes(tableId);
   FETCH curIndexes INTO idxRow;
   
   LOOP
      EXIT WHEN curIndexes%NOTFOUND;

      INSERT INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              idxRow."ID",
                              C_OBJECTTYPE_INDEXES,
                              idxRow."ID",
                              'MD_INDEXES',
                              p_scratchConn,
                              idxRow.index_name,
                              idxRow.index_name,
                              C_OBJECTTYPE_INDEXES || TO_CHAR(tableId)         
                           );      
      FETCH curIndexes INTO idxRow;
   END LOOP;
   CLOSE curIndexes;

END;

PROCEDURE createColumnEntry(tableId MD_TABLES."ID"%TYPE, 
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curColumns(tableId MD_TABLES."ID"%TYPE) IS SELECT * FROM md_columns WHERE table_id_fk = tableId;
   colRow MD_COLUMNS%ROWTYPE;
BEGIN
   OPEN curColumns(tableId);
   FETCH curColumns INTO colRow;
   
   LOOP
      EXIT WHEN curColumns%NOTFOUND;

      INSERT INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              colRow."ID",
                              C_OBJECTTYPE_COLUMNS,
                              colRow."ID",
                              'MD_COLUMNS',
                              p_scratchConn,
                              colRow.column_name,
                              colRow.column_name,
                              C_OBJECTTYPE_COLUMNS || TO_CHAR(tableId)         
                           );      
      FETCH curColumns INTO colRow;
   END LOOP;
   CLOSE curColumns;
END;


PROCEDURE createTableEntry(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
   CURSOR curTables(schemaId MD_SCHEMAS."ID"%TYPE) IS SELECT * FROM md_tables WHERE schema_id_fk = schemaId;
   tblRow MD_TABLES%ROWTYPE;
BEGIN
   OPEN curTables(schemaId);
   FETCH curTables INTO tblRow;
   
   LOOP
      EXIT WHEN curTables%NOTFOUND;
      
      INSERT INTO MD_DERIVATIVES(src_id, 
                                 src_type, 
                                 derived_id, 
                                 derived_type, 
                                 DERIVED_CONNECTION_ID_FK, 
                                 ORIGINAL_IDENTIFIER, 
                                 NEW_IDENTIFIER, 
                                 DERIVED_OBJECT_NAMESPACE)
                           VALUES
                           (
                              tblRow."ID",
                              C_OBJECTTYPE_TABLES,
                              tblRow."ID",
                              'MD_TABLES',
                              p_scratchConn,
                              tblRow.table_name,
                              tblRow.table_name,
                              C_NS_SCHEMA_OBJS || TO_CHAR(new_schemaid)         
                           );      
      createColumnEntry(tblRow."ID", p_scratchConn);      
      createIndexEntry(tblRow."ID", p_scratchConn);      
      FETCH curTables INTO tblRow;
   END LOOP;
   CLOSE curTables;
END;
    
    
PROCEDURE createConstraintEntry(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS
BEGIN
   NULL;
END;


PROCEDURE copy_schema_objects_ee(schemaId MD_SCHEMAS."ID"%TYPE, 
                                 new_schemaId MD_SCHEMAS."ID"%TYPE,
                                 p_scratchConn MD_CONNECTIONS."ID"%TYPE)
IS                                 
BEGIN
    --This create scratch model for table triggers as well
    createDummyScrTblPerSchema_ee(schemaId,   
                                 new_schemaId,
                                 p_scratchConn);
    -- Make md_derivatives entry only for the following objects -- begin 
    createTableEntry(schemaId, new_schemaId, p_scratchConn);
    createConstraintEntry(schemaId, new_schemaId, p_scratchConn);    
    -- Make md_derivatives entry only for the following objects -- end
    
    --This create scratch model for view triggers as well                                 
    copy_all_views_ee(schemaId, 
                   new_schemaId,
                   p_scratchConn);
                   
    copy_all_unpackaged_sps_ee(schemaId, 
                 new_schemaId,
                 p_scratchConn);                                    
END copy_schema_objects_ee;

-- p_connectionid -- scratch model connection id
PROCEDURE copy_catalogs_cascade_ee(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
   CURSOR curDerivatives(conId MD_CONNECTIONS."ID"%TYPE) IS
                SELECT *
                       FROM MD_DERIVATIVES 
                       WHERE DERIVED_CONNECTION_ID_FK = conId
                       AND SRC_TYPE = C_OBJECTTYPE_CATALOGS;
   recDerived MD_DERIVATIVES%ROWTYPE;
   
   CURSOR curSchemas(catId MD_SCHEMAS.CATALOG_ID_FK%TYPE) IS
                SELECT * FROM MD_SCHEMAS WHERE CATALOG_ID_FK = catId;
   recSchema MD_SCHEMAS%ROWTYPE;
   
   ncatId MD_SCHEMAS.CATALOG_ID_FK%TYPE;
   n_newschId MD_SCHEMAS."ID"%TYPE;
   v_ret NUMBER;
   v_catalogdummy MD_CATALOGS.DUMMY_FLAG%TYPE;
   v_catalogname VARCHAR2(300);
   v_newName VARCHAR2(300); 
BEGIN
   OPEN curDerivatives(p_connectionid);
   FETCH curDerivatives INTO recDerived;
   LOOP -- for each of the catalog process its schemas
      EXIT WHEN curDerivatives%NOTFOUND;
      SELECT dummy_flag, catalog_name INTO v_catalogdummy, v_catalogname FROM MD_CATALOGS WHERE "ID" = recDerived.src_id;
      ncatId := recDerived.src_id;
      OPEN curSchemas(ncatId);
      FETCH curSchemas INTO recSchema;
      LOOP
         EXIT WHEN curSchemas%NOTFOUND;
         
         v_newName := recSchema."NAME" || '_' || v_catalogname;
         
         INSERT INTO MD_SCHEMAS(CATALOG_ID_FK, "NAME", "TYPE", CHARACTER_SET, VERSION_TAG)
                          VALUES (recDerived.derived_id, 
                                  v_newName, 
                                  recSchema."TYPE",
                                  recSchema.CHARACTER_SET, 
                                  recSchema.VERSION_TAG)
                          RETURNING "ID" INTO n_newschId;
         v_ret := copy_additional_properties(ncatId, n_newschId, p_connectionid);                          
         v_ret := copy_additional_properties(recSchema."ID", n_newschId, p_connectionid);
         
	       -- No Need for namespace stuff for catalogs.
         INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK,
               ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (recSchema."ID", C_OBJECTTYPE_SCHEMAS, n_newschId, C_OBJECTTYPE_SCHEMAS, p_connectionid, recSchema."NAME", v_newName);
    
         INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER)
                   VALUES (recDerived.src_id, C_OBJECTTYPE_CATALOGS, n_newschId, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_catalogname, v_newName);         
                   
         copy_schema_objects_ee(recSchema."ID", n_newschId, p_connectionId);
         FETCH curSchemas INTO recSchema;
      END LOOP; -- end schema loop
      CLOSE curSchemas;
      
      FETCH curDerivatives INTO recDerived;
   END LOOP;  -- end catalog loop
   CLOSE curDerivatives;
END copy_catalogs_cascade_ee;

FUNCTION copy_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE, p_filter_set MIGR_FILTER_SET := NULL, p_scratchModel BOOLEAN := FALSE) RETURN NUMBER
IS
  v_newConnectionId MD_CONNECTIONS.ID%TYPE;
  v_numProps NUMBER;
  v_catalogId MD_CATALOGS.ID%TYPE;
  v_catalogName MD_CATALOGS.CATALOG_NAME%TYPE;
  v_numCatalogs NUMBER;
  v_numDuplicateIndexes NUMBER;
  v_sql VARCHAR(255);   
  
  CURSOR curDerivatives(conId MD_CONNECTIONS."ID"%TYPE) IS
                SELECT distinct 
                           id,
                           src_id,
                           src_type,
                           derived_id,
                           derived_type,
                           derived_connection_id_fk,
                           transformed,
                           original_identifier,
                           new_identifier,
                           derived_object_namespace,
                           derivative_reason,
                           security_group_id,
                           created_on,
                           created_by,
                           last_updated_on,
                           last_updated_by
                       FROM MD_DERIVATIVES 
                       WHERE DERIVED_CONNECTION_ID_FK = conId
                       AND SRC_TYPE = C_OBJECTTYPE_CATALOGS;
                       
   recDerived MD_DERIVATIVES%ROWTYPE;
  
  
BEGIN
	
  --DROP ANY EXISTING CONVERTED MODEL, AS WE ONLY HAVE A ONE TO ONE RELATIONSHIP WITH CAPTURED AND CONVERTED MODELS NOW
  DELETE FROM Md_Connections C 
  WHERE C.Type = 'CONVERTED' --only want to delete CONVERTED MODELS
  AND C.Id IN ( -- delete all converted models associated with this captured model
  SELECT d.derived_id FROM md_derivatives d WHERE d.src_id =  p_connectionid
  );
  
  -- The connection doesn't use the filter, because it is called for a single connection.
  v_newConnectionId := copy_connection(p_connectionid, p_scratchModel);
  -- Don't forget its additional props
  v_numProps := copy_additional_properties(p_connectionid, v_newConnectionId, v_newConnectionId);
  -- OK - Next coalesce the schema/catalogs
  
  IF p_scratchModel = FALSE 
  THEN
      --v_catalogId := create_dummy_catalog(v_newConnectionId);
      --select CATALOG_NAME INTO v_catalogName FROM MD_CATALOGS WHERE CONNECTION_ID_FK = p_connectionid;
      --v_sql := 'UPDATE MD_CATALOGS SET CATALOG_NAME = ''' || v_catalogName  || ''' WHERE ID = ' || TO_CHAR(v_catalogId);
      --EXECUTE IMMEDIATE v_sql;
      create_dummy_catalogs(p_connectionid, v_newConnectionId, FALSE);
      
      OPEN curDerivatives(v_newConnectionId);
      
      LOOP
            FETCH curDerivatives INTO recDerived;
            EXIT WHEN curDerivatives%NOTFOUND;
           --v_numCatalogs := copy_catalogs_cascade(p_connectionid, v_catalogid, v_newConnectionId, p_filter_set);
           v_numCatalogs := copy_catalogs_cascade(p_connectionid, recDerived.src_id, recDerived.derived_id, v_newConnectionId, p_filter_set);
           --FETCH curDerivatives INTO recDerived;
      END LOOP;
      CLOSE curDerivatives;
      v_numDuplicateIndexes := remove_duplicate_indexes(v_newConnectionId);
      v_numDuplicateIndexes := v_numDuplicateIndexes + remove_indexes_used_elsewhere(v_newConnectionId);
  ELSE -- enterprise capture
      create_dummy_catalogs(p_connectionid, v_newConnectionId, TRUE);
      copy_catalogs_cascade_ee(v_newConnectionId);
  END IF;
  COMMIT;
  return v_newConnectionId;
END copy_connection_cascade;

PROCEDURE update_derivative_record(p_orig VARCHAR2, p_new VARCHAR2, p_derivedid MD_DERIVATIVES.DERIVED_ID%TYPE,
p_derivedtype MD_DERIVATIVES.DERIVED_TYPE%TYPE, p_connectionid MD_DERIVATIVES.DERIVED_CONNECTION_ID_FK%TYPE)
IS	
BEGIN
    UPDATE MD_DERIVATIVES SET TRANSFORMED = C_TRANSFORMED_TRUE, ORIGINAL_IDENTIFIER = p_orig, NEW_IDENTIFIER = p_new
      WHERE DERIVED_ID = p_derivedid
      AND DERIVED_TYPE = p_derivedtype
      AND DERIVED_CONNECTION_ID_FK = p_connectionid;
END update_derivative_record;

/*
 * This procedure is like update_derivative_record except it should be used at name clash stage
 * basically, this will work the same as update_derivative_record except in those cases where
 * there is already a derivative record.  In this latter case, we want ORIGINAL_IDENTIFIER preserved
 * (this is called when there is a possiblity that we've carried out a second transformation
 */
PROCEDURE second_update_derivative(p_orig VARCHAR2, p_new VARCHAR2, p_derivedid MD_DERIVATIVES.DERIVED_ID%TYPE,
p_derivedtype MD_DERIVATIVES.DERIVED_TYPE%TYPE, p_connectionid MD_DERIVATIVES.DERIVED_CONNECTION_ID_FK%TYPE)
IS
  v_firstOriginal MD_DERIVATIVES.ORIGINAL_IDENTIFIER%TYPE;
BEGIN
  -- see if p_orig is already the new identifier
  select ORIGINAL_IDENTIFIER INTO v_firstOriginal FROM MD_DERIVATIVES
      WHERE DERIVED_ID = p_derivedid
      AND DERIVED_TYPE = p_derivedtype
      AND NEW_IDENTIFIER = p_orig
      AND DERIVED_CONNECTION_ID_FK = p_connectionid;
  if v_firstOriginal IS NULL then
    update_derivative_record(p_orig, p_new, p_derivedid, p_derivedtype, p_connectionid);
  else
    update_derivative_record(v_firstOriginal, p_new, p_derivedid, p_derivedtype, p_connectionid);
  end if;
EXCEPTION
  when NO_DATA_FOUND THEN
    update_derivative_record(p_orig, p_new, p_derivedid, p_derivedtype, p_connectionid);
  WHEN TOO_MANY_ROWS THEN
    dbms_output.put_line(TO_CHAR(p_derivedid) || ' ' || TO_CHAR(p_derivedtype) || ' '|| TO_CHAR(p_connectionid));
  
END second_update_derivative;

FUNCTION transform_column_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                 p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
    SELECT * FROM MD_COLUMNS
    WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(COLUMN_NAME) != COLUMN_NAME 
    FOR UPDATE OF COLUMN_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
    SELECT c.*, d.NEW_IDENTIFIER FROM MD_COLUMNS c, MD_DERIVATIVES d
    WHERE (c.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE= C_OBJECTTYPE_COLUMNS AND DERIVED_CONNECTION_ID_FK = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != COLUMN_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF COLUMN_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.COLUMN_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_COLUMNS, p_connectionid);    
    IF p_scratchModel = FALSE -- Update md_columns only for non migration estimation models
    THEN
        UPDATE MD_COLUMNS SET COLUMN_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_COLUMNS, v_count);
  --return v_count;
END transform_column_identifiers;

FUNCTION transform_constraint_idents(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_CONSTRAINTS
  WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT c.*, d.NEW_IDENTIFIER FROM MD_CONSTRAINTS c, MD_DERIVATIVES d
  WHERE (c.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE = C_OBJECTTYPE_CONSTRAINTS AND DERIVED_CONNECTION_ID_FK = connid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != c.NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_CONSTRAINTS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
       UPDATE MD_CONSTRAINTS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_CONSTRAINTS, v_count);
END transform_constraint_idents;

FUNCTION transform_group_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                          p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_GROUPS WHERE
   SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(GROUP_NAME) != GROUP_NAME
    FOR UPDATE OF GROUP_NAME;
*/    

  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_GROUPS WHERE
   ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE = C_OBJECTTYPE_GROUPS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(GROUP_NAME) != GROUP_NAME
    FOR UPDATE OF GROUP_NAME;
  v_rec MD_GROUPS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.GROUP_NAME);
    
    update_derivative_record(v_rec.GROUP_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_GROUPS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
       UPDATE MD_GROUPS SET GROUP_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_GROUPS, v_count);
END transform_group_identifiers;

FUNCTION transform_index_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_INDEXES WHERE TABLE_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||INDEX_NAME) != INDEX_NAME
    FOR UPDATE OF INDEX_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT i.*, d.NEW_IDENTIFIER FROM MD_INDEXES i, MD_DERIVATIVES d WHERE (i.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_INDEXES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != i.INDEX_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF INDEX_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.INDEX_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_INDEXES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN    
        UPDATE MD_INDEXES SET INDEX_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  commit;
  CLOSE v_curs;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_INDEXES, v_count);
END transform_index_identifiers;

FUNCTION transform_othobj_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                          p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_OTHER_OBJECTS  WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_OTHER_OBJECTS  WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_OTHER_OBJECTS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_OTHER_OBJECTS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_OTHER_OBJECTS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_OTHER_OBJECTS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_OTHER_OBJECTS, v_count);
END transform_othobj_identifiers;

FUNCTION transform_package_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                        p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_PACKAGES  WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_PACKAGES  WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
    WHERE SRC_TYPE = C_OBJECTTYPE_PACKAGES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_PACKAGES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_PACKAGES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_PACKAGES SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_PACKAGES, v_count);
END transform_package_identifiers;

FUNCTION transform_schema_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                         p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SCHEMAS WHERE ID IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT s.*, d.NEW_IDENTIFIER FROM MD_SCHEMAS s, MD_DERIVATIVES d WHERE (s.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_SCHEMAS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(d.NEW_IDENTIFIER) != NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName:= MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SCHEMAS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_SCHEMAS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SCHEMAS, v_count);
END transform_schema_identifiers;

FUNCTION transform_sequence_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                           p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT s.*, d.NEW_IDENTIFIER FROM MD_SEQUENCES s, MD_DERIVATIVES d WHERE (s.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_SEQUENCES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SEQUENCES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_SEQUENCES SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SEQUENCES, v_count);
END transform_sequence_identifiers;

FUNCTION transform_sproc_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                         p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT sp.*, d.NEW_IDENTIFIER FROM MD_STORED_PROGRAMS sp, MD_DERIVATIVES d WHERE (sp.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_STORED_PROGRAMS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != sp.NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_STORED_PROGRAMS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_STORED_PROGRAMS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_STORED_PROGRAMS, v_count);
END transform_sproc_identifiers;

FUNCTION transform_synonym_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                       p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SYNONYMS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_SYNONYMS WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
       WHERE SRC_TYPE =  C_OBJECTTYPE_SYNONYMS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||NAME) != NAME
    FOR UPDATE OF NAME;
  v_rec MD_SYNONYMS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NAME);
    
    update_derivative_record(v_rec.NAME, v_newName, v_rec.ID, C_OBJECTTYPE_SYNONYMS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_SYNONYMS SET NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_SYNONYMS, v_count);
END transform_synonym_identifiers;

FUNCTION transform_table_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TABLE_NAME) != TABLE_NAME
    FOR UPDATE OF TABLE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT t.*, d.NEW_IDENTIFIER FROM MD_TABLES t, MD_DERIVATIVES d WHERE (t.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_TABLES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != TABLE_NAME 
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF TABLE_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.TABLE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TABLES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_TABLES SET TABLE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TABLES, v_count);
END transform_table_identifiers;

FUNCTION transform_view_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||VIEW_NAME) != VIEW_NAME
    FOR UPDATE OF VIEW_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT v.*, d.NEW_IDENTIFIER FROM MD_VIEWS v, MD_DERIVATIVES d WHERE (v.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_VIEWS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != VIEW_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH 
    FOR UPDATE OF VIEW_NAME;
  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);
    
    update_derivative_record(v_rec.VIEW_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_VIEWS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_VIEWS SET VIEW_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_VIEWS, v_count);
END transform_view_identifiers;

FUNCTION transform_tablespace_idents(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLESPACES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(TABLESPACE_NAME) != TABLESPACE_NAME
    FOR UPDATE OF TABLESPACE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_TABLESPACES WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE = C_OBJECTTYPE_TABLESPACES AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(TABLESPACE_NAME) != TABLESPACE_NAME
    FOR UPDATE OF TABLESPACE_NAME;
  v_rec MD_TABLESPACES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.TABLESPACE_NAME);
    
    update_derivative_record(v_rec.TABLESPACE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TABLESPACES, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_TABLESPACES SET TABLESPACE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TABLESPACES, v_count);
END transform_tablespace_idents;

FUNCTION transform_trigger_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                       p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs IS 
  SELECT * FROM MD_TRIGGERS  WHERE TABLE_OR_VIEW_ID_FK IN
    (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TRIGGER_NAME) != TRIGGER_NAME
    FOR UPDATE OF TRIGGER_NAME;
  CURSOR v_view_trigger_curs IS 
    SELECT * FROM MD_TRIGGERS  WHERE TABLE_OR_VIEW_ID_FK IN
    (SELECT VIEW_ID FROM MGV_ALL_VIEWS WHERE CONNECTION_ID =  p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||TRIGGER_NAME) != TRIGGER_NAME
    FOR UPDATE OF TRIGGER_NAME;
*/    
  CURSOR v_curs IS 
  SELECT t.*, d.NEW_IDENTIFIER FROM MD_TRIGGERS t, MD_DERIVATIVES d WHERE (t.ID, d.SRC_ID) IN
    (SELECT DERIVED_ID, SRC_ID FROM MD_DERIVATIVES 
      WHERE SRC_TYPE =  C_OBJECTTYPE_TRIGGERS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||d.NEW_IDENTIFIER) != t.TRIGGER_NAME
    AND d.DERIVATIVE_REASON = C_CONNECTIONTYPE_SCRATCH
    FOR UPDATE OF TRIGGER_NAME;

  v_rec v_curs%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs;
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.NEW_IDENTIFIER);

    update_derivative_record(v_rec.TRIGGER_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TRIGGERS, p_connectionid);
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_TRIGGERS SET TRIGGER_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;       

  END LOOP;
  CLOSE v_curs;
  /*
  OPEN v_view_trigger_curs;
  LOOP
    FETCH v_view_trigger_curs INTO v_rec;
    EXIT WHEN v_view_trigger_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.TRIGGER_NAME);
    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_TRIGGERS SET TRIGGER_NAME = v_newName WHERE CURRENT OF v_view_trigger_curs;
    END IF;
    
    update_derivative_record(v_rec.TRIGGER_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_TRIGGERS, p_connectionid);
  END LOOP;
  CLOSE v_view_trigger_curs;
  */
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_TRIGGERS, v_count);
END transform_trigger_identifiers;

FUNCTION transform_uddt_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                      p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||DATA_TYPE_NAME) != DATA_TYPE_NAME
    FOR UPDATE OF DATA_TYPE_NAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USER_DEFINED_DATA_TYPES WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_UDDT AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||DATA_TYPE_NAME) != DATA_TYPE_NAME
    FOR UPDATE OF DATA_TYPE_NAME;
  v_rec MD_USER_DEFINED_DATA_TYPES%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_prefixName||v_rec.DATA_TYPE_NAME);
    
    update_derivative_record(v_rec.DATA_TYPE_NAME, v_newName, v_rec.ID, C_OBJECTTYPE_UDDT, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_USER_DEFINED_DATA_TYPES SET DATA_TYPE_NAME = v_newName WHERE CURRENT OF v_curs;
    END IF;
    
  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_UDDT, v_count);
END transform_uddt_identifiers;

FUNCTION transform_user_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_T
IS
/*
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USERS WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME
    FOR UPDATE OF USERNAME;
*/    
  CURSOR v_curs(connid MD_CONNECTIONS.ID%TYPE) IS 
  SELECT * FROM MD_USERS WHERE ID IN
    (SELECT DERIVED_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_USERS AND DERIVED_CONNECTION_ID_FK = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME
    FOR UPDATE OF USERNAME;
  v_rec MD_USERS%ROWTYPE;
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_T;
  v_newName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
BEGIN
  OPEN v_curs(p_connectionid);
  LOOP
    FETCH v_curs INTO v_rec;
    EXIT WHEN v_curs%NOTFOUND;
    v_count := v_count + 1;
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_rec.USERNAME);
    
    update_derivative_record(v_rec.USERNAME, v_newName, v_rec.ID, C_OBJECTTYPE_USERS, p_connectionid);    
    IF p_scratchModel = FALSE
    THEN        
       UPDATE MD_USERS SET USERNAME = v_newName WHERE CURRENT OF v_curs;
    END IF;

  END LOOP;
  CLOSE v_curs;
  commit;
  return NAME_AND_COUNT_T(C_OBJECTTYPE_USERS, v_count);
END transform_user_identifiers;

PROCEDURE rename_duplicate_index_names(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE)
IS
    CURSOR v_curs IS
    select * from md_derivatives a 
          where a.derived_connection_id_fk = p_connectionid
                and 1 < (select count(*) 
                          from md_derivatives b 
                              where a.new_identifier = b.new_identifier 
                                  and a.derived_type='MD_INDEXES'
                                      and a.derived_connection_id_fk = b.derived_connection_id_fk)
                                      order by new_identifier;
                                          
  v_row MD_DERIVATIVES%ROWTYPE;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;

  v_id MD_DERIVATIVES.DERIVED_ID%TYPE;

  v_curName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_count NUMBER := 1;
BEGIN
  v_curName := 'dsa;lkjsd;alskj;';
  OPEN v_curs;
  LOOP
    FETCH v_curs INTO v_row;
    EXIT WHEN v_curs%NOTFOUND;
    

   IF UPPER(v_row.NEW_IDENTIFIER) = UPPER(v_curName) THEN
      v_newName := MIGRATION_TRANSFORMER.ADD_SUFFIX(v_row.NEW_IDENTIFIER, '_' || TO_CHAR(v_count), 30);
      v_count := v_count + 1;
      
      if p_scratchModel = FALSE
      THEN
         update MD_INDEXES SET index_name = v_newName where id = v_row.DERIVED_ID;
      END IF;
      second_update_derivative(v_row.NEW_IDENTIFIER, v_newName, v_row.DERIVED_ID, C_OBJECTTYPE_INDEXES, p_connectionid);
    else
      v_curName := v_row.NEW_IDENTIFIER;
      v_count := 1;
    END IF;
  END LOOP;
  CLOSE v_curs;
  commit;
END rename_duplicate_index_names;

PROCEDURE fixup_duplicate_identifier(p_connectionid MD_CONNECTIONS.ID%TYPE, 
                                      p_mdrec_id MD_DERIVATIVES.ID%TYPE,
                                      p_derived_type MD_DERIVATIVES.DERIVED_TYPE%TYPE,
                                      p_derived_id MD_DERIVATIVES.DERIVED_ID%TYPE,
                                      p_new_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE,
                                      p_suffix INTEGER, 
                                      p_scratchModel BOOLEAN := FALSE)
IS
	v_transform_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
	v_did_a_transform CHAR(1) := 'Y';
	--v_underscoresuffixsize NUMBER;
	--v_underscoresuffix VARCHAR2(100);
  --v_sizebeforeprefix NUMBER;
BEGIN
  --v_underscoresuffix := '_' || TO_CHAR(p_suffix);
  --v_underscoresuffixsize := LENGTH(v_underscoresuffix);
  --v_sizebeforeprefix := 30 - v_underscoresuffixsize;
  v_transform_identifier := MIGRATION_TRANSFORMER.ADD_SUFFIX(p_new_identifier, '_' || TO_CHAR(p_suffix) ,30);
  
  IF p_scratchModel = FALSE
  THEN
     CASE p_derived_type
      WHEN C_OBJECTTYPE_CONNECTIONS THEN
        UPDATE MD_CONNECTIONS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_CATALOGS THEN
        UPDATE MD_CATALOGS SET CATALOG_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SCHEMAS THEN
        UPDATE MD_SCHEMAS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TABLES THEN
        UPDATE MD_TABLES SET TABLE_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_CONSTRAINTS THEN
        UPDATE MD_CONSTRAINTS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_INDEXES THEN
        UPDATE MD_INDEXES SET INDEX_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TRIGGERS THEN
        UPDATE MD_TRIGGERS SET TRIGGER_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_VIEWS THEN
        UPDATE MD_VIEWS SET VIEW_NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_USERS THEN
        UPDATE MD_USERS SET USERNAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_GROUPS THEN
        UPDATE MD_GROUPS SET GROUP_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_OTHER_OBJECTS THEN
        UPDATE MD_OTHER_OBJECTS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_TABLESPACES THEN
        UPDATE MD_TABLESPACES SET TABLESPACE_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_UDDT THEN
        UPDATE MD_USER_DEFINED_DATA_TYPES SET DATA_TYPE_NAME  = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_STORED_PROGRAMS THEN
        UPDATE MD_STORED_PROGRAMS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_PACKAGES THEN
        UPDATE MD_PACKAGES SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SYNONYMS THEN
        UPDATE MD_SYNONYMS SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      WHEN C_OBJECTTYPE_SEQUENCES THEN
        UPDATE MD_SEQUENCES SET NAME = v_transform_identifier WHERE ID = p_derived_id;
      ELSE
        -- Handle column namespace here.
        IF SUBSTR(P_DERIVED_TYPE,1, LENGTH(C_OBJECTTYPE_COLUMNS)) = C_OBJECTTYPE_COLUMNS THEN
          UPDATE MD_COLUMNS SET COLUMN_NAME = v_transform_identifier WHERE ID = p_derived_id;
        ELSE
          v_did_a_transform := 'N';
        END IF;
      END CASE;
  END IF; -- end if scratch model
  
	IF v_did_a_transform = 'Y' THEN
	  UPDATE MD_DERIVATIVES SET NEW_IDENTIFIER = v_transform_identifier WHERE ID = p_mdrec_id;
	  commit;
    END IF;
    commit;
END fixup_duplicate_identifier;

FUNCTION getClashCount(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN INTEGER 
IS
  v_clashCount INTEGER;
BEGIN
  SELECT COUNT(*) INTO v_clashCount FROM md_derivatives a
    where rowid > (
      select min(rowid) from md_derivatives b
      where
        b.derived_connection_id_fk = p_connectionid
        AND b.derived_connection_id_fk = a.derived_connection_id_fk
        AND UPPER(b.new_identifier) = UPPER(a.new_identifier)--  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
        AND b.derived_object_namespace = a.derived_object_namespace);
  RETURN v_clashCount;
END getClashCount;

PROCEDURE transform_clashes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_scratchModel BOOLEAN := FALSE)
IS
  CURSOR v_curs IS
    select id,derived_type, derived_id, UPPER(new_identifier) --  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
    from md_derivatives a
    where rowid > (
      select min(rowid) from md_derivatives b
      where
        b.derived_connection_id_fk = p_connectionid
        AND b.derived_connection_id_fk = a.derived_connection_id_fk
        AND UPPER(b.new_identifier) = UPPER(a.new_identifier) --  Uppercasing the name so that case sensitve names are caught (see bug 6922052)
        AND b.derived_object_namespace = a.derived_object_namespace)
        ORDER BY new_identifier, derived_type;
  v_derived_type MD_DERIVATIVES.DERIVED_TYPE%TYPE;
  v_curr_type v_derived_type%TYPE := '~~dasdddfl;';
  v_derived_id MD_DERIVATIVES.DERIVED_ID%TYPE;
  v_new_identifier MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_curr_identifier v_new_identifier%TYPE := '~~~~asdasnc';
  v_suffix INTEGER := 0;
  v_innerSuffix INTEGER;
  v_clashCount INTEGER;
  v_mdrec_id MD_DERIVATIVES.ID%TYPE;
BEGIN

  rename_duplicate_index_names(p_connectionid, p_scratchModel);
  
  v_clashCount := getClashCount(p_connectionid);
  WHILE v_clashCount > 0 
  LOOP
	v_suffix := v_suffix + 1;
	v_innerSuffix := v_suffix; 
    -- Now lets see if there are any identifier clashes
    OPEN v_curs;
    LOOP 
      FETCH v_curs into v_mdrec_id, v_derived_type, v_derived_id, v_new_identifier;
      EXIT WHEN v_curs%NOTFOUND;
 	  IF v_derived_type = v_curr_type AND v_new_identifier = v_curr_identifier THEN
		  v_innerSuffix := v_innerSuffix + 1;
	  else
		  v_curr_type := v_derived_type;
		  v_curr_identifier := v_new_identifier;
	  END IF;
      -- We have to fix up all of these identifiers
      fixup_duplicate_identifier(p_connectionid, v_mdrec_id, v_derived_type, v_derived_id, v_new_identifier, v_innerSuffix, p_scratchModel);
    END LOOP;
	CLOSE v_curs;
    v_clashCount := getClashCount(p_connectionid);
  END LOOP;
END transform_clashes;

FUNCTION transform_all_identifiers_x(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                             p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY
IS
  v_count INTEGER := 0;
  v_ret NAME_AND_COUNT_ARRAY;
  v_rec NAME_AND_COUNT_T;
BEGIN
  v_ret := NAME_AND_COUNT_ARRAY();
  -- We need to update identifiers on pretty much the whole schema
  -- MD_COLUMNS
  v_rec := transform_column_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  
  -- MD_CONSTRAINTS
  v_rec := transform_constraint_idents(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_GROUPS
  v_rec := transform_group_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_INDEXES
  v_rec := transform_index_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_OTHER_OBJECTS
  v_rec := transform_othobj_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_PACKAGES
  v_rec := transform_package_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SCHEMAS
  v_rec := transform_schema_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SEQUENCES
  v_rec := transform_sequence_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_STORED_PROGRAMS
  v_rec := transform_sproc_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_SYNONYMS
  v_rec := transform_synonym_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TABLES
  v_rec := transform_table_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TABLESPACES
  v_rec := transform_tablespace_idents(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_TRIGGERS
  v_rec := transform_trigger_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_USER_DEFINED_DATA_TYPES
  v_rec := transform_uddt_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  -- MD_USERS
  v_rec := transform_user_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  /*
  UPDATE MD_USERS SET USERNAME = MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) WHERE SCHEMA_ID_FK IN
    (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionid)
    AND MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(USERNAME) != USERNAME;
  dbms_output.put_line(SQL%ROWCOUNT || ' USER names updated');
  */
  -- MD_VIEWS
  v_rec := transform_view_identifiers(p_connectionid, p_scratchModel);
  v_ret.EXTEND;
  v_ret(v_ret.count) := v_rec;
  dbms_output.put_line(v_rec.UPDATE_COUNT || v_rec.OBJECT_NAME || ' names udpates');
  transform_clashes(p_connectionid, p_scratchModel);
  -- TODO: Something meaningful if all goes wrong
  return v_ret;
  COMMIT;
END transform_all_identifiers_x;

FUNCTION transform_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE, p_prefixName VARCHAR2, p_scratchModel BOOLEAN := FALSE) RETURN NAME_AND_COUNT_ARRAY
IS
BEGIN
v_prefixName := p_prefixName;
RETURN  transform_all_identifiers_x(p_connectionid, p_scratchModel);
END transform_all_identifiers;

FUNCTION rule_specificity(p_precision MIGR_DATATYPE_TRANSFORM_RULE.SOURCE_PRECISION%TYPE, p_scale MIGR_DATATYPE_TRANSFORM_RULE.SOURCE_SCALE%TYPE) RETURN INTEGER
IS
BEGIN
  IF p_precision is NULL then 
    return 1;
  END IF;
  IF p_scale is NULL then
    return 2;
  END IF;
  return 3;
END rule_specificity;

FUNCTION addToWhereClause(p_whereclause VARCHAR2, p_toAdd VARCHAR2) return VARCHAR2
IS
BEGIN
  IF p_whereclause is NULL then
    return p_toAdd;
  else
    return p_whereclause || ' AND ' || p_toAdd;
  END IF;
END addToWhereClause;

FUNCTION precision_val(p_srcPrecision MD_COLUMNS.PRECISION%TYPE, p_newDataType VARCHAR2) RETURN VARCHAR2
IS
  v_newDataType VARCHAR2(255);
  v_ret VARCHAR2(255);
BEGIN
  v_newDataType := UPPER(to_char(p_newDataType));
  -- Assume that no precision should be present
  v_ret := 'NULL';
  -- No see what the new data type is and ensure that a precision is required
  IF v_newDataType = 'VARCHAR2' OR
     v_newDataType = 'NVARCHAR2' OR
     v_newDataType = 'NUMBER' OR
     v_newDataType = 'TIMESTAMP' OR
     v_newDataType = 'INTERVAL YEAR' OR
     v_newDataType = 'INTERVAL DAY' OR
     v_newDataType = 'UROWID' OR
     v_newDataType = 'CHAR' OR
     v_newDataType = 'RAW' OR
     v_newDataType = 'NCHAR' THEN
     v_ret := p_srcPrecision;
  END IF;
  return v_ret;
END precision_val;

FUNCTION scale_val(p_srcPrecision MD_COLUMNS.SCALE%TYPE, p_newDataType VARCHAR2) RETURN VARCHAR2
IS
  v_newDataType VARCHAR2(255);
  v_ret VARCHAR2(255);
BEGIN
  v_newDataType := UPPER(to_char(p_newDataType));
  v_ret := 'NULL';
  IF v_newDataType = 'NUMBER' THEN
    v_ret := p_srcPrecision;
  END IF;
  return v_ret;
END scale_val;

FUNCTION check_for_invalid_data_types(p_connectionid MD_CONNECTIONS.ID%TYPE, p_numbytesperchar INTEGER, p_is12c CHAR:= 'N') RETURN NUMBER
IS
    --make limits that vary in 12c variables
    v_limitVarchar2 MD_COLUMNS.PRECISION%TYPE :=4000;
    v_limitChar MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitNChar MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitNChar_2 MD_COLUMNS.PRECISION%TYPE := 1000;
    v_limitNVarchar2 MD_COLUMNS.PRECISION%TYPE := 4000;
    v_limitNVarchar2_2 MD_COLUMNS.PRECISION%TYPE := 2000;
    v_limitRaw MD_COLUMNS.PRECISION%TYPE := 2000;
BEGIN
    IF (p_is12c = 'Y') THEN
        v_limitVarchar2 :=32767;
        v_limitChar := 32767;
        v_limitNChar := 32767;
        v_limitNChar_2 := 16383;
        v_limitNVarchar2 := 32767;
        v_limitNVarchar2_2 := 16383;
        v_limitRaw := 32767;
    END IF;
    -- First, for char(n) columns, drop back to varchar2 - this could go up to 4k.
    -- If its even greater than this, it will be caught later on and made into a CLOB.
    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
        AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'CHAR' AND PRECISION > v_limitChar
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET COLUMN_TYPE = 'VARCHAR2' WHERE COLUMN_TYPE = 'CHAR' AND PRECISION > v_limitChar
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- We'll do something similar for NCHARs
    IF p_numbytesperchar = 1 THEN
        UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE MD_COLUMNS SET COLUMN_TYPE = 'NVARCHAR2' WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    ELSE   
        -- 2 bytes per char - max is actually 1k          
        UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE MD_COLUMNS SET COLUMN_TYPE = 'NVARCHAR2' WHERE COLUMN_TYPE = 'NCHAR' AND PRECISION > v_limitNChar_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    END IF;            
    -- VARCHAR or VARCHAR2 can't go above 4000 (32767 in 12c).  If they do, they need to fallback to a CLOB
    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'VARCHAR' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET COLUMN_TYPE = 'CLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'VARCHAR' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS  WHERE COLUMN_TYPE = 'VARCHAR2' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET COLUMN_TYPE = 'CLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'VARCHAR2' AND PRECISION > v_limitVarchar2 
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- NUMBER has a max precision of 38, and scale must be between -84 and 127
    -- We can only narrow this.  

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND PRECISION > 38
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET PRECISION = 38 WHERE COLUMN_TYPE = 'NUMBER' AND PRECISION > 38
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND SCALE < -84
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET SCALE = -84 WHERE COLUMN_TYPE = 'NUMBER' AND SCALE < -84
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NUMBER' AND SCALE > 127
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET SCALE = 127 WHERE COLUMN_TYPE = 'NUMBER' AND SCALE > 127
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- NVARCHAR has a max of 4000 (32767 in 12c) bytes.  But its definition depends on the character set in use.
    IF  p_numbytesperchar = 1 THEN
        UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE MD_COLUMNS SET COLUMN_TYPE = 'NCLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    ELSE
        UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
          AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2_2 
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
        UPDATE MD_COLUMNS SET COLUMN_TYPE = 'NCLOB', PRECISION = NULL, SCALE = NULL WHERE COLUMN_TYPE = 'NVARCHAR2' AND PRECISION > v_limitNVarchar2_2
            AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    END IF;            
    -- TIMESTAMP has a max size of 9

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'TIMESTAMP' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'TIMESTAMP' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL YEAR' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'INTERVAL YEAR' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL DAY' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET PRECISION = 9 WHERE COLUMN_TYPE = 'INTERVAL DAY' AND PRECISION > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'INTERVAL DAY' AND SCALE > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET SCALE = 9 WHERE COLUMN_TYPE = 'INTERVAL DAY' AND SCALE > 9
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'UROWID' AND PRECISION > 4000
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET PRECISION = 4000 WHERE COLUMN_TYPE = 'UROWID' AND PRECISION > 4000
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    -- Too large RAW?  Make it a CLOB        

    UPDATE MD_DERIVATIVES SET DERIVATIVE_REASON = 'INVDTTYPE' WHERE DERIVED_CONNECTION_ID_FK = p_connectionid
      AND DERIVED_TYPE = 'MD_COLUMNS' AND DERIVED_ID IN (SELECT ID FROM MD_COLUMNS WHERE COLUMN_TYPE = 'RAW' AND PRECISION > v_limitRaw
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid));
    UPDATE MD_COLUMNS SET COLUMN_TYPE = 'BLOB', PRECISION = NULL WHERE COLUMN_TYPE = 'RAW' AND PRECISION > v_limitRaw
        AND TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionid);
    commit;
    RETURN 0;        
END check_for_invalid_data_types;

FUNCTION transform_datatypes(p_connectionid MD_CONNECTIONS.ID%TYPE, p_mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE, p_numbytesperchar INTEGER, p_is12c VARCHAR2 :=  'N') RETURN NUMBER
IS
  v_projectid MD_PROJECTS.ID%TYPE;
  v_mapProjectid MD_PROJECTS.ID%TYPE;
  CURSOR v_curs(mapid MIGR_DATATYPE_TRANSFORM_MAP.ID%TYPE) IS
    SELECT * FROM MIGR_DATATYPE_TRANSFORM_RULE WHERE map_ID_fk = mapid
    ORDER BY     DECODE(source_precision,
            NULL, 0,
            1) +
    DECODE(source_scale,
            NULL, 0,
            1)  DESC;
  v_rule MIGR_DATATYPE_TRANSFORM_RULE%ROWTYPE;
  v_whereClause VARCHAR2(4000);
  v_updateClause VARCHAR2(4000);
  v_count NUMBER := 0;
  v_ret NUMBER;
BEGIN
  -- We should only work with our "own" maps.  I.e. The map should be part of this project.
  SELECT project_id_fk into v_projectid from MD_CONNECTIONS where id = p_connectionid;
  SELECT project_id_fk into v_mapProjectid from MIGR_DATATYPE_TRANSFORM_MAP where id = p_mapid;
  IF v_projectid != v_mapProjectid then 
    -- TODO.  Some nice RAISE_APPLICATION_ERROR stuff here.
    return 0;
  END IF;
  -- OK We can work with our map
  OPEN v_curs(p_mapid);
  LOOP
    fetch v_curs INTO v_rule;
    EXIT WHEN v_curs%NOTFOUND;
    v_whereClause := 'UPPER(COLUMN_TYPE) = ''' || UPPER(v_rule.SOURCE_DATA_TYPE_NAME) || '''';
    if v_rule.SOURCE_PRECISION is not NULL then
      v_whereClause := addToWhereClause(v_whereClause, 'PRECISION = ' || to_char(v_rule.source_precision));
      IF v_rule.SOURCE_SCALE is not NULL then
        v_whereClause := addToWhereClause(v_whereClause, 'SCALE = ' || to_char(v_rule.source_scale));
      end IF;
    END IF;
    v_whereClause := addToWhereClause(v_whereClause, 'table_id_fk in (SELECT table_id from MGV_ALL_TABLES WHERE connection_id = ' || to_char(p_connectionid) || ')');
    v_whereClause := addTowhereclause(v_whereClause, 'DATATYPE_TRANSFORMED_FLAG IS NULL');
    v_updateClause := 'UPDATE MD_COLUMNS SET COLUMN_TYPE = ''' || v_rule.TARGET_DATA_TYPE_NAME || ''', DATATYPE_TRANSFORMED_FLAG=''Y''';
    IF v_rule.TARGET_PRECISION is not NULL then
      v_updateClause := v_updateClause || ', PRECISION = ' || precision_val(v_rule.TARGET_PRECISION, v_rule.TARGET_DATA_TYPE_NAME);
      IF v_rule.TARGET_SCALE is not NULL then
        -- The rule says change it to a specific scale, but we may override this is the data type shouldn't have a scale
        v_updateClause := v_updateClause || ', SCALE = ' || scale_val(v_rule.TARGET_SCALE, v_rule.TARGET_DATA_TYPE_NAME);
      ELSE
        -- There was no mention on the rule to touch the scale, so we should leave it alone...
        -- ..unless of course the data type forbids having it.
        IF scale_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
          v_updateClause := v_updateClause || ', SCALE = NULL';
        END IF;
      END IF;
    ELSE
      -- There was no metion on the rul to touch the precision, so we should leave it alone...
      -- ..unless of course the data type forbids having it.
      IF precision_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
        v_updateClause := v_updateClause || ', PRECISION = NULL';
      END IF;
      IF scale_val(1, v_rule.TARGET_DATA_TYPE_NAME) = 'NULL' THEN
        v_updateClause := v_updateClause || ', SCALE = NULL';
      END IF;
    END IF;
    v_updateClause := v_updateClause || ' WHERE ' || v_whereClause;
    dbms_output.put_line(v_updateClause);
    EXECUTE IMMEDIATE v_updateClause;
    v_count := v_count + SQL%ROWCOUNT;
  END LOOP;
  CLOSE v_curs;
  COMMIT;
  -- OK.  Lets see if we've made any columns invalid.
  v_ret := check_for_invalid_data_types(p_connectionid, p_numbytesperchar, p_is12c);  
  -- Now that we know the data types of the index columns, we may have flag some of the indexes
  -- as text indexes.
  v_ret := fixupTextIndexes(p_connectionid);

  RETURN v_count;
END transform_datatypes;

FUNCTION GET_SIMPLE_IDENTITY_TRIGGER(v_triggerName VARCHAR2 , v_tableName VARCHAR2  , 
v_ColumnName VARCHAR2,v_emulationPkgNamePrefix VARCHAR2 ) RETURN VARCHAR2
as
 v_identityClause VARCHAR2(200);
BEGIN

IF v_emulationpkgnameprefix = 'mysql_utilities.' THEN
  v_identityclause := '  --used to emulate LAST_INSERT_ID()'|| chr(10) || '  --'||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
ELSE
  v_identityclause := '  -- save this to emulate @@identity'|| chr(10) || '  '||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
END IF;
       
return 'CREATE OR REPLACE TRIGGER ' || v_triggerName || ' AFTER INSERT ON ' || v_tableName || CHR(10) ||
       'FOR EACH ROW' || CHR(10) ||
       'DECLARE ' || CHR(10)||
       'v_newVal NUMBER(12) := 0;' ||CHR(10) ||
       'BEGIN' || CHR(10) ||
       '  v_newVal := :new.' || v_ColumnName || ';' || CHR(10) ||
       v_identityClause
      ||
       'END;' || CHR(10);
END GET_SIMPLE_IDENTITY_TRIGGER;

FUNCTION GET_IDENTITY_TRIGGER(v_triggerName VARCHAR2 , v_tableName VARCHAR2  , 
v_ColumnName VARCHAR2  ,v_seqName VARCHAR2 ,v_emulationPkgNamePrefix VARCHAR2 ) RETURN VARCHAR2
as
 v_identityClause VARCHAR2(200);
BEGIN

IF v_emulationpkgnameprefix = 'mysql_utilities.' THEN
  v_identityclause := '    --used to emulate LAST_INSERT_ID()'|| chr(10) || '    --'||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
ELSE
  v_identityclause := '    -- save this to emulate @@identity'|| chr(10) || '   '||v_emulationpkgnameprefix || 'identity := v_newVal; '|| chr(10) ;
END IF;
       
return 'CREATE OR REPLACE TRIGGER ' || v_triggerName || ' BEFORE INSERT ON ' || v_tableName || CHR(10) ||
       'FOR EACH ROW' || CHR(10) ||
       'DECLARE ' || CHR(10)||
       'v_newVal NUMBER(12) := 0;' ||CHR(10) ||
	   'v_incval NUMBER(12) := 0;'||CHR(10) ||
       'BEGIN' || CHR(10) ||
       '  IF INSERTING AND :new.' || v_ColumnName || ' IS NULL THEN' || CHR(10) ||
       '    SELECT  ' || v_seqName || '.NEXTVAL INTO v_newVal FROM DUAL;' || CHR(10) ||
	   '    -- If this is the first time this table have been inserted into (sequence == 1)' || CHR(10) ||
	   '    IF v_newVal = 1 THEN ' || CHR(10) ||
	   '      --get the max indentity value from the table' || CHR(10) ||
	   '      SELECT NVL(max(' || v_ColumnName || '),0) INTO v_newVal FROM ' || v_tableName || ';'|| CHR(10) || 
	   '      v_newVal := v_newVal + 1;' || CHR(10) || 
	   '      --set the sequence to that value'|| CHR(10) || 
	   '      LOOP'|| CHR(10) || 
	   '           EXIT WHEN v_incval>=v_newVal;'|| CHR(10) || 
	   '           SELECT ' || v_seqName || '.nextval INTO v_incval FROM dual;'|| CHR(10) || 
       '      END LOOP;'|| CHR(10) || 
       '    END IF;'|| chr(10) ||    
       v_identityClause
      ||
       '   -- assign the value from the sequence to emulate the identity column'|| CHR(10) || 
       '   :new.' || v_ColumnName || ' := v_newVal;'|| CHR(10) || 
       '  END IF;' || CHR(10) ||
       'END;' || CHR(10);
END GET_IDENTITY_TRIGGER;

FUNCTION get_plugin_name(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN VARCHAR2
IS
  CURSOR v_pluginNameCur IS SELECT value FROM MD_ADDITIONAL_PROPERTIES WHERE prop_key='PLUGIN_ID' AND connection_id_fk = p_connectionid;
  v_pluginName MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
  BEGIN
	  OPEN v_pluginNameCur;
	  FETCH v_pluginNameCur INTO v_pluginName;
	  CLOSE v_pluginNameCur;
	  RETURN v_pluginName;
END get_plugin_name;	  
	  
FUNCTION get_emulation_pkg_name(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN VARCHAR2
AS
v_pkgName VARCHAR2(1000);
v_pluginName MD_ADDITIONAL_PROPERTIES.VALUE%TYPE;
BEGIN
	v_pluginName := get_plugin_name(p_connectionid);
	IF LOWER(v_pluginName) LIKE '%sqlserver%'THEN
	  	v_pkgName := 'utils.';
	  ELSIF LOWER(v_pluginName) LIKE '%access%'THEN
	    v_pkgName := 'msaccess_utilities.';
	  ELSIF LOWER(v_pluginName) LIKE '%sybase%'THEN
	    v_pkgName := 'utils.';
	  ELSIF LOWER(v_pluginName) LIKE '%mysql%' THEN
	    v_pkgName := 'mysql_utilities.';
	  ELSIF LOWER(v_pluginName) LIKE '%db2%' THEN
	    v_pkgName := 'db2_utilities.';
	END IF;
  RETURN v_pkgName;
END get_emulation_pkg_name;

FUNCTION transform_identity_columns(p_connectionid MD_CONNECTIONS.ID%TYPE, p_is12c VARCHAR2 := 'N') RETURN NUMBER
IS
  CURSOR v_curs IS SELECT a.schema_id_fk, a.id tableid, a.TABLE_NAME, b.id, b.column_name, b.NULLABLE
                   FROM md_tables a, md_columns b WHERE b.id IN
                     (SELECT ref_id_fk FROM md_additional_properties WHERE prop_key = C_PROPKEY_SEEDVALUE)
                   AND table_id_fk IN (SELECT table_id FROM mgv_all_tables WHERE connection_id = p_connectionid)
                   AND a.id = b.table_id_fk
                   AND b.id NOT IN (SELECT SRC_ID FROM MD_DERIVATIVES WHERE SRC_TYPE = C_OBJECTTYPE_COLUMNS AND DERIVED_TYPE = C_OBJECTTYPE_SEQUENCES AND 
                                    DERIVED_CONNECTION_ID_FK = p_connectionid);  
  	v_schemaId MD_SCHEMAS.ID%TYPE;
	v_tableId MD_TABLES.ID%TYPE;
        v_tableName MD_TABLES.TABLE_NAME%TYPE;
	v_columnId MD_COLUMNS.ID%TYPE;
	v_columnName MD_COLUMNS.COLUMN_NAME%TYPE;
	v_row MD_ADDITIONAL_PROPERTIES%ROWTYPE;
	v_seedValue NUMBER;
	-- Default the increment to 1 if it is not supplied.
	v_increment NUMBER := 1;
	v_lastVal NUMBER := NULL;
	v_retId MD_SEQUENCES.ID%TYPE;
	v_retSeqId MD_SEQUENCES.ID%TYPE;
	v_seqName MD_SEQUENCES.NAME%TYPE;
        v_trgName MD_TRIGGERS.TRIGGER_NAME%TYPE;
	v_triggerText VARCHAR2(4000);
        v_lob CLOB;
	v_transRet NAME_AND_COUNT_T;
	v_dbTypeCurs VARCHAR2(1000);
	v_emulationPkgNamePrefix VARCHAR2(100) := '';
	v_nullable MD_COLUMNS.NULLABLE%TYPE;
    v_alreadyDone NUMBER;
    v_continueTriggered BOOLEAN := FALSE;
BEGIN
  -- Auxillary, get the emulation package name
  v_emulationPkgNamePrefix := get_emulation_pkg_name(p_connectionid);
  
  OPEN v_curs;
  LOOP
    v_continueTriggered := FALSE;
  	FETCH v_curs into v_schemaId, v_tableId, v_tableName, v_columnId, v_columnName, v_nullable;
  	EXIT WHEN v_curs%NOTFOUND;
  	-- The above query excludes already created sequences, so we should be ok.
  	-- create the sequence:
  	-- 1. Get the seedvalue, increment, lastvalue if present
    v_alreadyDone := 0;
    BEGIN
      IF (p_is12c = 'Y') THEN
        SELECT 1 INTO  v_alreadyDone FROM MD_ADDITIONAL_PROPERTIES
        WHERE CONNECTION_ID_FK = p_connectionid 
        AND REF_ID_FK = v_tableId 
        AND REF_TYPE = C_OBJECTTYPE_TABLES 
        AND PROP_KEY = C_PROPKEY_ALREADY_IDENTITY;
      ELSE
        v_alreadyDone:=0;
      END IF;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN v_alreadyDone :=0;
    END;

    IF (v_nullable = 'N' AND p_is12c = 'Y' AND v_alreadyDone != 1) THEN
      INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
      VALUES (p_connectionid, v_columnId, C_OBJECTTYPE_COLUMNS, C_PROPKEY_REAL_IDENTITY, 'GENERATED BY DEFAULT ON NULL AS IDENTITY');
      INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
      VALUES (p_connectionid, v_tableId, C_OBJECTTYPE_TABLES, C_PROPKEY_ALREADY_IDENTITY, '');
      v_continueTriggered:=TRUE;
      --DONE do it in create table/ enable - 
      --ISSUES: DONE can be ascending or decending 
      --        DONE top (bottom) value has to be set at end (along with enable constraints)
      --ISSUE   If no entries sequence next val will be 0+increment - there was some work by Indian integrator to recapture current sequence,
      --            if capture convert generate is not done at the same time, or the sequence is otherwise above max/min value.
  	END IF;
  	if (v_continueTriggered = TRUE) THEN /* need simple trigger to fill @@identity */
      v_trgName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_TRG');
      v_triggerText := GET_SIMPLE_IDENTITY_TRIGGER(v_trgName, v_tableName , v_ColumnName ,v_emulationPkgNamePrefix);
      -- Note: I'm adding _TRG to the column name for now.We'll have to use the collsion manager in the futre.
  	  INSERT INTO MD_TRIGGERS(TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME, TRIGGER_TIMING, TRIGGER_OPERATION, NATIVE_SQL, LANGUAGE)
      VALUES(v_tableId, 'T', v_trgName, 'AFTER', 'INSERT OR UPDATE', EMPTY_CLOB(), C_LANGUAGEID_ORACLE)
      RETURNING ID INTO v_retId;
      INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
        VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_TRIGGER_REWRITE, '');
      --INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
      --  VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_SEQUENCEID, TO_CHAR(v_retSeqId));  
      INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
        VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_TRIGGERS, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_trgName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
      SELECT NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_retId;          
        DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
        DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
        DBMS_LOB.CLOSE(v_lob);
  	ELSE
  	 FOR v_row in (SELECT * FROM MD_ADDITIONAL_PROPERTIES WHERE REF_ID_FK = v_columnId)
  	LOOP
  	  IF v_row.PROP_KEY = C_PROPKEY_SEEDVALUE THEN
  	    v_seedValue := TO_NUMBER(v_row.VALUE);
          END IF;
  	  IF v_row.PROP_KEY = C_PROPKEY_INCREMENT THEN
  	    v_increment := TO_NUMBER(v_row.VALUE);
          END IF;
  	  IF v_row.PROP_KEY = C_PROPKEY_LASTVALUE THEN
  	    v_lastVal := TO_NUMBER(v_row.VALUE);
  	  END IF;
  	END LOOP;
  	-- Note: We'll start our sequence where the source left off.
  	IF v_lastVal IS NOT NULL THEN
  	  v_seedValue := v_lastVal;
  	END IF;
      
  	-- 2. Create the sequence
  	-- Note: I'm adding _SEQ to the column name for now. We'll have to use the collision manager in the
  	-- future.
  	v_seqName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_SEQ');
  	INSERT INTO MD_SEQUENCES(SCHEMA_ID_FK, NAME, SEQ_START, INCR)
  	  VALUES (v_schemaId, v_seqName, v_seedValue, v_increment)
  	  RETURNING ID INTO v_retId;
  	v_retSeqId := v_retId;
  	-- And of course a new derivative record
  	INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
  	  VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_SEQUENCES, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_seqName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
  	-- Create the trigger
        v_trgName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_tableName || '_' || v_columnName || '_TRG');
  	v_triggerText := GET_IDENTITY_TRIGGER(v_trgName, v_tableName , v_ColumnName ,v_seqName ,v_emulationPkgNamePrefix);
  	-- Note: I'm adding _TRG to the column name for now.We'll have to use the collsion manager in the futre.
  	INSERT INTO MD_TRIGGERS(TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME, TRIGGER_TIMING, TRIGGER_OPERATION, NATIVE_SQL, LANGUAGE)
  	  VALUES(v_tableId, 'T', v_trgName, 'BEFORE', 'INSERT OR UPDATE', EMPTY_CLOB(), C_LANGUAGEID_ORACLE)
  	  RETURNING ID INTO v_retId;
  	INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
       VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_TRIGGER_REWRITE, '');
    INSERT INTO MD_ADDITIONAL_PROPERTIES ( CONNECTION_ID_FK, REF_ID_FK, REF_TYPE, PROP_KEY, VALUE )
       VALUES (p_connectionid, v_retId, C_OBJECTTYPE_TRIGGERS, C_PROPKEY_SEQUENCEID, TO_CHAR(v_retSeqId));	
  	INSERT INTO MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED, ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE)
  	  VALUES(v_columnId, C_OBJECTTYPE_COLUMNS, v_retId, C_OBJECTTYPE_TRIGGERS, p_connectionId, C_TRANSFORMED_TRUE, NULL, v_trgName, C_NS_SCHEMA_OBJS || TO_CHAR(v_schemaId));
        SELECT NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_retId;          
        DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
        DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
        DBMS_LOB.CLOSE(v_lob);
    END IF;
  END LOOP;
  COMMIT;
  CLOSE v_curs;
  RETURN 0;
END transform_identity_columns;




FUNCTION transform_rewrite_trigger(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  CURSOR v_curs is SELECT ID, TABLE_OR_VIEW_ID_FK, TRIGGER_ON_FLAG, TRIGGER_NAME,
    TRIGGER_TIMING, TRIGGER_OPERATION, TRIGGER_EVENT, NATIVE_SQL, NATIVE_KEY,
    LANGUAGE, COMMENTS from MD_TRIGGERS where ID in
    (SELECT REF_ID_FK from MD_ADDITIONAL_PROPERTIES
    WHERE CONNECTION_ID_FK = p_connectionid and PROP_KEY = C_PROPKEY_TRIGGER_REWRITE);
  
  v_rowTriggers MD_TRIGGERS%ROWTYPE;
  v_tableName MD_TABLES.TABLE_NAME%TYPE;
	v_columnName MD_COLUMNS.COLUMN_NAME%TYPE;
	v_retId MD_SEQUENCES.ID%TYPE;
  v_retSeqId MD_SEQUENCES.ID%TYPE;
	v_seqName MD_SEQUENCES.NAME%TYPE;
  v_seqName2 MD_SEQUENCES.NAME%TYPE;
	v_triggerText VARCHAR2(4000);
  v_lob CLOB;
  v_projectName VARCHAR2(100);
  v_emulationPkgNamePrefix VARCHAR2(100) := '';
BEGIN
  -- Auxillary, get the emulation package name
  v_emulationPkgNamePrefix := get_emulation_pkg_name(p_connectionid);
  
  open v_curs;
  loop
    fetch v_curs into v_rowTriggers.ID, v_rowTriggers.TABLE_OR_VIEW_ID_FK, v_rowTriggers.TRIGGER_ON_FLAG, v_rowTriggers.TRIGGER_NAME,
    v_rowTriggers.TRIGGER_TIMING, v_rowTriggers.TRIGGER_OPERATION, v_rowTriggers.TRIGGER_EVENT, v_rowTriggers.NATIVE_SQL, v_rowTriggers.NATIVE_KEY,
    v_rowTriggers.LANGUAGE, v_rowTriggers.COMMENTS ;
    EXIT WHEN v_curs%NOTFOUND;
    update MD_TRIGGERS set native_sql = empty_clob() where id = v_rowTriggers.ID;

    -- get table and column name from the derivative of this trigger
    select T.TABLE_NAME, C.COLUMN_NAME into v_tableName, v_columnName from MD_TABLES T,
      MD_COLUMNS C where C.TABLE_ID_FK = T.ID and C.ID =
      (select SRC_ID from MD_DERIVATIVES where DERIVED_ID =  v_rowTriggers.ID and SRC_TYPE =
      C_OBJECTTYPE_COLUMNS and DERIVED_CONNECTION_ID_FK = p_connectionid);
    -- get sequence name from id got from additional property
    BEGIN
      select s.NAME into v_seqName from MD_SEQUENCES s where s.ID =
        (select TO_NUMBER(VALUE) from MD_ADDITIONAL_PROPERTIES where CONNECTION_ID_FK = p_connectionid
        AND REF_ID_FK = v_rowTriggers.ID and PROP_KEY = C_PROPKEY_SEQUENCEID);
      v_triggerText := GET_IDENTITY_TRIGGER(v_rowTriggers.TRIGGER_NAME, v_tableName , v_ColumnName ,v_seqName ,v_emulationPkgNamePrefix);
    EXCEPTION WHEN NO_DATA_FOUND THEN
      --no sequence known (its 12 c identity)
      v_triggerText := GET_SIMPLE_IDENTITY_TRIGGER(v_rowTriggers.TRIGGER_NAME, v_tableName , v_ColumnName ,v_emulationPkgNamePrefix);
    END;
    SELECT NATIVE_SQL INTO v_lob FROM MD_TRIGGERS WHERE ID = v_rowTriggers.ID;          
    DBMS_LOB.OPEN(v_lob, DBMS_LOB.LOB_READWRITE);
    DBMS_LOB.WRITE(v_lob, LENGTH(v_triggerText), 1, v_triggerText);
    DBMS_LOB.CLOSE(v_lob);
  END LOOP;
  COMMIT;
  CLOSE v_curs;
  return 0;
END transform_rewrite_trigger;

PROCEDURE RefreshLineCountViews(p_connectionId MD_CONNECTIONS.ID%TYPE DEFAULT NULL)
IS
BEGIN
	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_stored_programs s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1
	 	WHERE linecount IS NULL;
	 	
	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_views s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1
	 	WHERE linecount IS NULL;
	 	
	 	UPDATE (select s.*, ltrim(rtrim(s.native_sql,' ' ||'  '|| chr(10)||chr(13)),' ' ||'  '|| chr(10)||chr(13)) trimmed from md_triggers s)  x
	 	SET LINECOUNT = LENGTH(trimmed) -  LENGTH(replace(trimmed,chr(10))) +1 
	 	WHERE linecount IS NULL;
END;

FUNCTION gatherConnectionStats(p_connectionId MD_CONNECTIONS.ID%TYPE,p_comments MD_CONNECTIONS.COMMENTS%TYPE) RETURN NUMBER
IS
	v_numCatalogs INTEGER := 0;
	v_numColumns INTEGER := 0;
	v_numConstraints INTEGER := 0;
	v_numGroups INTEGER := 0;
	v_numRoles INTEGER := 0;
	v_numIndexes INTEGER := 0;
	v_numOtherObjects INTEGER := 0;
	v_numPackages INTEGER := 0;
	v_numPrivileges INTEGER := 0;
	v_numSchemas INTEGER := 0;
	v_numSequences INTEGER := 0;
	v_numStoredPrograms INTEGER := 0;
	v_numSynonyms INTEGER := 0;
	v_numTables INTEGER := 0;
	v_numTableSpaces INTEGER := 0;
	v_numTriggers INTEGER := 0;
	v_numUserDefinedDataTypes INTEGER := 0;
	v_numUsers INTEGER := 0;
	v_numViews INTEGER := 0;
BEGIN
	SELECT COUNT(*) INTO v_numCatalogs FROM MD_CATALOGS  WHERE CONNECTION_ID_FK = p_connectionId;
	SELECT COUNT(*) INTO v_numColumns FROM MD_COLUMNS WHERE TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numConstraints FROM MD_CONSTRAINTS WHERE  TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numGroups FROM MD_GROUPS WHERE GROUP_FLAG = 'G' AND SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId); 
	SELECT COUNT(*) INTO v_numRoles FROM MD_GROUPS WHERE GROUP_FLAG = 'R' AND SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numIndexes FROM MD_INDEXES  WHERE TABLE_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numOtherObjects FROM MD_OTHER_OBJECTS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numPackages FROM MD_PACKAGES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);  
	SELECT COUNT(*) INTO v_numPrivileges FROM MD_PRIVILEGES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numSchemas FROM MD_SCHEMAS WHERE CATALOG_ID_FK IN (SELECT CATALOG_ID FROM MGV_ALL_CATALOGS WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numSequences FROM MD_SEQUENCES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numStoredPrograms FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numSynonyms FROM MD_SYNONYMS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numTables FROM MD_TABLES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numTableSpaces FROM MD_TABLESPACES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numTriggers FROM MD_TRIGGERS WHERE TABLE_OR_VIEW_ID_FK IN (SELECT TABLE_ID FROM MGV_ALL_TABLES WHERE CONNECTION_ID = p_connectionId
                                                                                          UNION SELECT VIEW_ID FROM MGV_ALL_VIEWS WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numUserDefinedDataTypes FROM MD_USER_DEFINED_DATA_TYPES WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numUsers FROM MD_USERS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
	SELECT COUNT(*) INTO v_numViews FROM MD_VIEWS WHERE SCHEMA_ID_FK IN (SELECT SCHEMA_ID FROM MGV_ALL_SCHEMA WHERE CONNECTION_ID = p_connectionId);
  	UPDATE MD_CONNECTIONS SET  
		NUM_CATALOGS = v_numCatalogs,
		NUM_COLUMNS = v_numColumns,
		NUM_CONSTRAINTS = v_numConstraints,
		NUM_GROUPS = v_numGroups,
		NUM_ROLES = v_numRoles,
		NUM_INDEXES = v_numIndexes,
		NUM_OTHER_OBJECTS = v_numOtherObjects,
		NUM_PACKAGES = v_numPackages,
		NUM_PRIVILEGES = v_numPrivileges,
		NUM_SCHEMAS = v_numSchemas,
		NUM_SEQUENCES = v_numSequences,
		NUM_STORED_PROGRAMS = v_numStoredPrograms,
		NUM_SYNONYMS = v_numSynonyms,
		NUM_TABLES = v_numTables,
		NUM_TABLESPACES = v_numTableSpaces,
		NUM_TRIGGERS = v_numTriggers,
		NUM_USER_DEFINED_DATA_TYPES = v_numUserDefinedDataTypes,
		num_users = v_numusers,
        num_views = v_numviews,
        COMMENTS = COMMENTS || p_comments    
	WHERE ID = p_connectionId;
	COMMIT;
    RefreshLineCountViews(p_connectionId);
	COMMIT;
	RETURN 0;
END gatherConnectionStats;

--
-- Procedures that start with "insert_*" insert a copy of MD_* values into MD_DERIVATIVES table.
-- MD_* are MD_COLUMNS, MD_CONSTRAINTS, MD_TABLES, MD_TRIGGERS, MD_INDEXES, MD_SEQUENCES, MD_STORED_PROGRAMS 
-- AND MD_VIEWS
--
PROCEDURE insert_all_columns(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_COLUMNS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_COLUMNS WHERE TABLE_ID_FK = ' || p_tableid;
  v_newName MD_COLUMNS.COLUMN_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.COLUMN_NAME);
    if v_row.COLUMN_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_COLUMNS, v_row.id, C_OBJECTTYPE_COLUMNS, p_connectionid, v_transformed,
                  v_row.COLUMN_NAME, v_newName, C_OBJECTTYPE_COLUMNS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);
    
  END LOOP;
  close cv_curs;
END insert_all_columns;

PROCEDURE insert_all_indexes(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_INDEXES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_INDEXES WHERE MD_INDEXES.TABLE_ID_FK = ' || p_tableid;
  v_newName MD_INDEXES.INDEX_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.INDEX_NAME);
    if v_row.INDEX_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_INDEXES, v_row.id, C_OBJECTTYPE_INDEXES, p_connectionid, v_transformed,
                  v_row.INDEX_NAME, v_newName, C_OBJECTTYPE_INDEXES || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);
    
  END LOOP;
  close cv_curs;
END insert_all_indexes;

PROCEDURE insert_all_table_triggers(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                     p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_TRIGGERS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TRIGGERS WHERE MD_TRIGGERS.TABLE_OR_VIEW_ID_FK = ' || p_tableid;
  v_newName MD_TRIGGERS.TRIGGER_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.TRIGGER_NAME);
    if v_row.TRIGGER_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_TRIGGERS, v_row.id, C_OBJECTTYPE_TRIGGERS, p_connectionid, v_transformed,
                  v_row.TRIGGER_NAME, v_newName, C_NS_DB_TRIGGERS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);
    
  END LOOP;
  close cv_curs;
END insert_all_table_triggers;

PROCEDURE insert_all_constraints(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                 p_tableid MD_TABLES.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_CONSTRAINTS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_CONSTRAINTS WHERE MD_CONSTRAINTS.TABLE_ID_FK = ' || p_tableid;
  v_newName MD_CONSTRAINTS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_CONSTRAINTS, v_row.id, C_OBJECTTYPE_CONSTRAINTS, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_CONSTRAINTS || TO_CHAR(p_tableid), C_CONNECTIONTYPE_SCRATCH);
    
  END LOOP;
  close cv_curs;
END insert_all_constraints;


PROCEDURE insert_all_tables_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_TABLES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_TABLES where SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_TABLES.TABLE_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.TABLE_NAME);
    if v_row.TABLE_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_TABLES, v_row.id, C_OBJECTTYPE_TABLES, p_connectionid, v_transformed,
                  v_row.TABLE_NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);
                  
     insert_all_columns(p_connectionid, v_row.id);
     insert_all_indexes(p_connectionid, v_row.id);
     insert_all_table_triggers(p_connectionid, v_row.id);
     insert_all_constraints(p_connectionid, v_row.id);
     
  END LOOP;
  close cv_curs;	
END insert_all_tables_cascade;

PROCEDURE insert_all_views(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_VIEWS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_VIEWS WHERE SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_VIEWS.VIEW_NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.VIEW_NAME);
    if v_row.VIEW_NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_VIEWS, v_row.id, C_OBJECTTYPE_VIEWS, p_connectionid, v_transformed,
                  v_row.VIEW_NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);
     
  END LOOP;
  close cv_curs;	
END insert_all_views;

PROCEDURE insert_all_sequences(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_SEQUENCES%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_SEQUENCES WHERE SCHEMA_ID_FK = ' || p_schemaid;
  v_newName MD_SEQUENCES.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_SEQUENCES, v_row.id, C_OBJECTTYPE_SEQUENCES, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);
     
  END LOOP;
  close cv_curs;	
END insert_all_sequences;

PROCEDURE insert_all_unpackaged_sps(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                    p_schemaid MD_SCHEMAS.ID%TYPE)
IS
  cv_curs REF_CURSOR;
  v_row MD_STORED_PROGRAMS%ROWTYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_STORED_PROGRAMS WHERE SCHEMA_ID_FK = ' || p_schemaid || ' AND PACKAGE_ID_FK IS NULL';
  v_newName MD_STORED_PROGRAMS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;

BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.NAME);
    if v_row.NAME <> v_newName then
       v_transformed := C_TRANSFORMED_TRUE;
    end if;
    
    INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_row.id, C_OBJECTTYPE_STORED_PROGRAMS, v_row.id, C_OBJECTTYPE_STORED_PROGRAMS, p_connectionid, v_transformed,
                  v_row.NAME, v_newName, C_NS_SCHEMA_OBJS || TO_CHAR(p_schemaid), C_CONNECTIONTYPE_SCRATCH);
     
  END LOOP;
  close cv_curs;	
END insert_all_unpackaged_sps;


PROCEDURE insert_all_schobjs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                            p_schemaid MD_SCHEMAS.ID%TYPE)
IS 
BEGIN
  insert_all_tables_cascade(p_connectionid, p_schemaid);
  insert_all_views(p_connectionid, p_schemaid);
  insert_all_sequences(p_connectionid, p_schemaid);
  insert_all_unpackaged_sps(p_connectionid, p_schemaid);
END insert_all_schobjs_cascade;	  
                                              

PROCEDURE insert_catalogs_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE,
                                  p_catalogid MD_CATALOGS.ID%TYPE)
IS
  cv_curs REF_CURSOR; 
  v_selectStmt VARCHAR2(4000) := 'SELECT a.id schema_id, A.name schema_name, b.id catalog_id, B.CATALOG_NAME, B.DUMMY_FLAG, A.type, A.character_set, A.version_tag 
      FROM MD_SCHEMAS A, MD_CATALOGS B
      WHERE 
      	A.CATALOG_ID_FK = B.ID 
        AND B.ID =' || p_catalogid  || 
        ' AND CONNECTION_ID_FK = ' || p_connectionid ;
  v_derivedRec  DERIVATIVE_REC;
  v_newName MD_SCHEMAS.NAME%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
BEGIN
   OPEN cv_curs FOR v_selectStmt;
   LOOP
     FETCH cv_curs INTO v_derivedRec;
     EXIT WHEN cv_curs%NOTFOUND;
     
     if v_derivedRec.dummy_flag  <> C_DUMMYFLAG_TRUE then
        v_newName := v_derivedRec.schema_name || '_' || v_derivedRec.catalog_name;
        v_transformed := C_TRANSFORMED_TRUE;
     else
	    v_newName := v_derivedRec.schema_name;
     end if;
     
     if v_newName <> MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName) then
        v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName);
        v_transformed := C_TRANSFORMED_TRUE;
     end if;
     
     INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES (v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, v_derivedRec.schema_id, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_transformed,
                  v_derivedRec.schema_name, v_newName, C_NS_DATABASE, C_CONNECTIONTYPE_SCRATCH);
     
     INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                  ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_derivedRec.catalog_id, C_OBJECTTYPE_CATALOGS, v_derivedRec.catalog_id, C_OBJECTTYPE_SCHEMAS, p_connectionid, v_transformed, 
                  v_derivedRec.catalog_name, v_newName, NULL, C_CONNECTIONTYPE_SCRATCH);
      
     insert_all_schobjs_cascade(p_connectionid, v_derivedRec.schema_id);
     
   END LOOP;
   close cv_curs;
END insert_catalogs_cascade;


PROCEDURE insert_connection_cascade(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
  v_connectionsRow MD_CONNECTIONS%ROWTYPE;
  v_origName MD_CONNECTIONS.NAME%TYPE;
  v_newName MD_CONNECTIONS.NAME%TYPE;
  v_id MD_CONNECTIONS.ID%TYPE;
  v_catid MD_CATALOGS.ID%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE := NULL;
  cv_curs REF_CURSOR;
    
BEGIN
  SELECT * INTO v_connectionsRow from MD_CONNECTIONS WHERE "ID" = p_connectionid;
      v_origName := v_connectionsRow.NAME;
      v_newName := v_origName;
      v_id := v_connectionsRow.ID;
      
      if v_newName <> MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName) then
        v_newName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_newName);
        v_transformed := C_TRANSFORMED_TRUE;
      end if;
      
      INSERT INTO 
          MD_DERIVATIVES(SRC_ID, SRC_TYPE, DERIVED_ID, DERIVED_TYPE, DERIVED_CONNECTION_ID_FK, TRANSFORMED,
                      ORIGINAL_IDENTIFIER, NEW_IDENTIFIER, DERIVED_OBJECT_NAMESPACE, DERIVATIVE_REASON)
          VALUES(v_id , C_OBJECTTYPE_CONNECTIONS, v_id, C_OBJECTTYPE_CONNECTIONS, v_id, v_transformed, 
                      v_origName, v_newName, '', C_CONNECTIONTYPE_SCRATCH);
  
  OPEN cv_curs FOR 'SELECT id from MD_CATALOGS where connection_id_fk ='|| v_connectionsRow.id;
  LOOP
    FETCH cv_curs INTO v_catid;
    EXIT WHEN cv_curs%NOTFOUND;
                       
      insert_catalogs_cascade(v_id, v_catid);
   END LOOP;   
END insert_connection_cascade;

PROCEDURE populate_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
BEGIN
  insert_connection_cascade(p_connectionid);
END populate_derivatives_table;

--
-- reverts NEW_IDENTIFIER values back to their default(derived) values in MD_DERIVATIVES table.
--
PROCEDURE revert_derivatives_table(p_connectionid MD_CONNECTIONS.ID%TYPE)
IS
  cv_curs REF_CURSOR;  
  v_row MD_DERIVATIVES%ROWTYPE;
  v_origName MD_DERIVATIVES.ORIGINAL_IDENTIFIER%TYPE;
  v_derivedName MD_DERIVATIVES.NEW_IDENTIFIER%TYPE;
  v_transformed MD_DERIVATIVES.TRANSFORMED%TYPE;
  v_selectStmt VARCHAR2(4000) := 'SELECT * FROM MD_DERIVATIVES 
         WHERE DERIVED_CONNECTION_ID_FK = ' || p_connectionid ;
BEGIN
  OPEN cv_curs FOR v_selectStmt;
  LOOP
    FETCH cv_curs INTO v_row;
    EXIT WHEN cv_curs%NOTFOUND;
    
    v_transformed := NULL;
    v_derivedName := MIGRATION_TRANSFORMER.TRANSFORM_IDENTIFIER(v_row.ORIGINAL_IDENTIFIER);
    if v_row.NEW_IDENTIFIER <> v_derivedName then
      if v_row.ORIGINAL_IDENTIFIER <> v_derivedName then
         v_transformed := C_TRANSFORMED_TRUE;
      end if;
      
      UPDATE MD_DERIVATIVES SET TRANSFORMED = v_transformed, NEW_IDENTIFIER = v_derivedName WHERE 
         SRC_ID = v_row.SRC_ID and DERIVED_CONNECTION_ID_FK = p_connectionid ;
    end if;
  END LOOP;
  CLOSE cv_curs;
END revert_derivatives_table;


-- One time initialisation
begin
NULL;
end;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION_REPORT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "OIE"."MIGRATION_REPORT" AS
--Function getCaptureStatus
FUNCTION getCaptureStatus(srcid IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';
BEGIN
  select decode((select count(*) from migrlog where ref_object_id=srcid and severity>800),0,'Passed','Failed') into status from dual;
  return status;
END getCaptureStatus;
--Function getConvertStatus
FUNCTION getConvertStatus(srcid IN NUMBER,convert_conn_id IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';
ifconvert NUMBER default 0;
BEGIN
  SELECT count(*) into ifconvert FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk=convert_conn_id;
  IF ifconvert=0 THEN
      RETURN 'NotConverted';
  ELSIF getCaptureStatus(srcid)='Failed' THEN
     RETURN 'Failed';
  ELSE
   BEGIN
    SELECT 
   decode((SELECT DISTINCT severity from migrlog 
                  WHERE  ref_object_id IN (SELECT derived_id FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk= convert_conn_id) 
                         and severity=1000
           UNION
           SELECT DISTINCT severity from migrlog 
                  WHERE ref_object_id IN (SELECT derived_id FROM md_derivatives where src_id=srcid and derived_connection_id_fk=convert_conn_id)
                  AND severity=900 
                  AND logtext like '%limitation%'),
                  null,'Passed',1000,'Failed',900,'Limitation',' ') 
  into status from dual;
  return status;
  END;
  END IF;
END getConvertStatus;
--Function getGenerateStatus
FUNCTION getGenerateStatus(srcid IN number,convert_conn_id IN NUMBER)  RETURN VARCHAR2 IS
status VARCHAR(20) default ' ';

BEGIN
   status:=getConvertStatus(srcid,convert_conn_id);   
   IF status='NotConverted' THEN
      RETURN 'NotGenerated';
   ELSIF  status='Failed'  THEN
      RETURN 'Failed';      
   ELSE
     BEGIN
        SELECT 
           decode((SELECT count(*) FROM migrlog 
                   WHERE ref_object_id IN (SELECT derived_id FROM md_derivatives WHERE src_id=srcid and derived_connection_id_fk=convert_conn_id) 
                         AND phase='Generate'
                         AND severity>800),
                    0,'Passed','Failed')
             INTO status FROM dual;
        RETURN status;
    END;
   END IF;
END getGenerateStatus;
--migration details for each objects
FUNCTION getDetails(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN migr_report_detail_table PIPELINED IS
BEGIN
FOR cur IN (
    select allobjs.ObjID captured_id,
           allobjs.ObjName captured_name,
           md.new_identifier converted_name,
           allobjs.ObjType captured_type,
           decode(md.derived_type,'MD_INDEXES', substr(md.derived_type,4, length(md.derived_type)-5),substr(md.derived_type,4, length(md.derived_type)-4)) converted_type,
           allobjs.CaptureStatus capture_status,
           allobjs.ConvertStatus convert_status,
           allobjs.GenerateStatus generate_status,
           decode(mlog.logtext,null,' ',mlog.logtext) logtext from (
 --schema
     SELECT md_schemas.id ObjID,md_schemas.name ObjName,'SCHEMA' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_schemas.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_schemas.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_schemas.id,convert_conn_id) GenerateStatus
       FROM md_schemas,md_catalogs
       WHERE md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--table
UNION ALL
      SELECT md_tables.id ObjID,md_tables.table_name ObjName,'TABLE' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_tables.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_tables.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_tables.id,convert_conn_id) GenerateStatus
       FROM md_tables,md_schemas,md_catalogs
       WHERE md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--view
UNION ALL
      SELECT md_views.id ObjID,md_views.view_name ObjName,'View' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_views.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_views.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_views.id,convert_conn_id) GenerateStatus
       FROM md_views,md_schemas,md_catalogs
       WHERE md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--storedprogram
UNION ALL
      SELECT md_stored_programs.id ObjID,md_stored_programs.name ObjName,'STORED_PROGRAM' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_stored_programs.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_stored_programs.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_stored_programs.id,convert_conn_id) GenerateStatus
       FROM md_stored_programs,md_schemas,md_catalogs
       WHERE md_stored_programs.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
--index
UNION ALL
      SELECT md_indexes.id ObjID,md_indexes.index_name ObjName,'INDEX' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_indexes.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_indexes.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_indexes.id,convert_conn_id) GenerateStatus
       FROM md_indexes, md_tables,md_schemas,md_catalogs
       WHERE md_indexes.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
UNION ALL
      SELECT md_constraints.id ObjID,md_constraints.name ObjName,'CONSTRAINT' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_constraints.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_constraints.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_constraints.id,convert_conn_id) GenerateStatus
       FROM md_constraints, md_tables,md_schemas,md_catalogs
       WHERE md_constraints.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id  
UNION ALL
      SELECT md_triggers.id ObjID,md_triggers.trigger_name ObjName,'TRIGGER' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,convert_conn_id) GenerateStatus
       FROM md_triggers, md_tables,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id 
UNION ALL
       SELECT md_triggers.id ObjID,md_triggers.trigger_name ObjName,'TRIGGER' ObjType,
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,convert_conn_id) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,convert_conn_id) GenerateStatus
       FROM md_triggers, md_views,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_views.id
            AND md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=capture_conn_id
  ) allobjs left join (select md_derivatives.src_id,migrlog.logtext 
                        from migrlog,md_derivatives 
                        where migrlog.ref_object_id = md_derivatives.derived_id or migrlog.ref_object_id=md_derivatives.src_id) mlog 
                                on allobjs.objid=mlog.src_id  left join md_derivatives md on allobjs.objid=md.src_id
    ) 
  LOOP
     PIPE ROW(MIGR_REPORT_DETAIL_ROW(cur.captured_id,
                              cur.captured_name,
                              cur.converted_name,
                              cur.captured_type,
                              cur.converted_type,
                              cur.capture_status,
                              cur.convert_status,
                              cur.generate_status,
                              cur.logtext
                              ));       
    
  END LOOP;  
  RETURN;
 END getDetails; 

--migration summary
FUNCTION getSum(capture_conn_id IN NUMBER,convert_conn_id IN NUMBER) RETURN migr_report_sum_table PIPELINED IS
--
capture_passed_schema number default 0;
capture_passed_table number default 0;
capture_passed_view number default 0;
capture_passed_sp number default 0;
capture_passed_index number default 0;
capture_passed_constraint number default 0;
capture_passed_trigger number default 0;
--
capture_failed_schema number default 0;
capture_failed_table number default 0;
capture_failed_view number default 0;
capture_failed_sp number default 0;
capture_failed_index number default 0;
capture_failed_constraint number default 0;
capture_failed_trigger number default 0;
--
convert_passed_schema number default 0;
convert_passed_table number default 0;
convert_passed_view number default 0;
convert_passed_sp number default 0;
convert_passed_index number default 0;
convert_passed_constraint number default 0;
convert_passed_trigger number default 0;
--
convert_limit_schema number default 0;
convert_limit_table number default 0;
convert_limit_view number default 0;
convert_limit_sp number default 0;
convert_limit_index number default 0;
convert_limit_constraint number default 0;
convert_limit_trigger number default 0;
--
convert_failed_schema number default 0;
convert_failed_table number default 0;
convert_failed_view number default 0;
convert_failed_sp number default 0;
convert_failed_index number default 0;
convert_failed_constraint number default 0;
convert_failed_trigger number default 0;
--
convert_not_schema number default 0;
convert_not_table number default 0;
convert_not_view number default 0;
convert_not_sp number default 0;
convert_not_index number default 0;
convert_not_constraint number default 0;
convert_not_trigger number default 0;
--
generate_passed_schema number default 0;
generate_passed_table number default 0;
generate_passed_view number default 0;
generate_passed_sp number default 0;
generate_passed_index number default 0;
generate_passed_constraint number default 0;
generate_passed_trigger number default 0;
--
generate_failed_schema number default 0;
generate_failed_table number default 0;
generate_failed_view number default 0;
generate_failed_sp number default 0;
generate_failed_index number default 0;
generate_failed_constraint number default 0;
generate_failed_trigger number default 0;
--
generate_not_schema number default 0;
generate_not_table number default 0;
generate_not_view number default 0;
generate_not_sp number default 0;
generate_not_index number default 0;
generate_not_constraint number default 0;
generate_not_trigger number default 0;
--CURSORS
--SCHEMAS CURSOR
CURSOR schema_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_schemas.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_schemas.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_schemas.id,did) GenerateStatus
       FROM md_schemas,md_catalogs
       WHERE md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--TABLES CURSOR
CURSOR table_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_tables.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_tables.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_tables.id,did) GenerateStatus
       FROM md_tables,md_schemas,md_catalogs
       WHERE md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--VIEWS CURSOR
CURSOR view_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_views.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_views.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_views.id,did) GenerateStatus
       FROM md_views,md_schemas,md_catalogs
       WHERE md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--STORED_PROGRAMS CURSOR
CURSOR sp_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_stored_programs.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_stored_programs.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_stored_programs.id,did) GenerateStatus
       FROM md_stored_programs,md_schemas,md_catalogs
       WHERE md_stored_programs.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--INDEXES CURSOR
CURSOR index_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_indexes.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_indexes.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_indexes.id,did) GenerateStatus
       FROM md_indexes, md_tables,md_schemas,md_catalogs
       WHERE md_indexes.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
--CONSTRAINTS CURSOR
CURSOR constraint_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_constraints.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_constraints.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_constraints.id,did) GenerateStatus
       FROM md_constraints, md_tables,md_schemas,md_catalogs
       WHERE md_constraints.table_id_fk= md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;  
--TRIGGERS CURSOR
CURSOR trigger_status(cid IN NUMBER,did IN NUMBER) IS
      SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,did) GenerateStatus
       FROM md_triggers, md_tables,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_tables.id
            AND md_tables.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid 
       UNION ALL
       SELECT 
          MIGRATION_REPORT.getCaptureStatus(md_triggers.id) CaptureStatus,
          MIGRATION_REPORT.getConvertStatus(md_triggers.id,did) ConvertStatus,
          MIGRATION_REPORT.getGenerateStatus(md_triggers.id,did) GenerateStatus
       FROM md_triggers, md_views,md_schemas,md_catalogs
       WHERE md_triggers.table_or_view_id_fk=md_views.id
            AND md_views.schema_id_fk=md_schemas.id
            AND md_schemas.catalog_id_fk= md_catalogs.id
            AND md_catalogs.connection_id_fk=cid;
BEGIN
 --count
 --schemas
 FOR cur IN schema_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_schema:=capture_failed_schema+1;
                ELSE capture_passed_schema:=capture_passed_schema+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_schema:=convert_failed_schema+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_schema:=convert_limit_schema+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_schema:=convert_passed_schema+1;
                 ELSE   convert_not_schema:=convert_not_schema+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_schema:=generate_failed_schema+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_schema:=generate_passed_schema+1;
                ELSE  generate_not_schema:=generate_not_schema+1;
                END IF;            
 END LOOP;
 --tables
 FOR cur IN table_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_table:=capture_failed_table+1;
                ELSE capture_passed_table:=capture_passed_table+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_table:=convert_failed_table+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_table:=convert_limit_table+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_table:=convert_passed_table+1;
                 ELSE   convert_not_table:=convert_not_table+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_table:=generate_failed_table+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_table:=generate_passed_table+1;
                ELSE  generate_not_table:=generate_not_table+1;
                END IF;            
 END LOOP;
 --views
 FOR cur IN view_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_view:=capture_failed_view+1;
                ELSE capture_passed_view:=capture_passed_view+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_view:=convert_failed_view+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_view:=convert_limit_view+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_view:=convert_passed_view+1;
                 ELSE   convert_not_view:=convert_not_view+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_view:=generate_failed_view+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_view:=generate_passed_view+1;
                ELSE  generate_not_view:=generate_not_view+1;
                END IF;            
 END LOOP;
 --stored programs
 FOR cur IN sp_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_sp:=capture_failed_sp+1;
                ELSE capture_passed_sp:=capture_passed_sp+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_sp:=convert_failed_sp+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_sp:=convert_limit_sp+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_sp:=convert_passed_sp+1;
                 ELSE   convert_not_sp:=convert_not_sp+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_sp:=generate_failed_sp+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_sp:=generate_passed_sp+1;
                ELSE  generate_not_sp:=generate_not_sp+1;
                END IF;            
 END LOOP;
 --index
 FOR cur IN index_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_index:=capture_failed_index+1;
                ELSE capture_passed_index:=capture_passed_index+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_index:=convert_failed_index+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_index:=convert_limit_index+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_index:=convert_passed_index+1;
                 ELSE   convert_not_index:=convert_not_index+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_index:=generate_failed_index+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_index:=generate_passed_index+1;
                ELSE  generate_not_index:=generate_not_index+1;
                END IF;            
 END LOOP;
 --constraints
 FOR cur IN constraint_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_constraint:=capture_failed_constraint+1;
                ELSE capture_passed_constraint:=capture_passed_constraint+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_constraint:=convert_failed_constraint+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_constraint:=convert_limit_constraint+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_constraint:=convert_passed_constraint+1;
                 ELSE   convert_not_constraint:=convert_not_constraint+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_constraint:=generate_failed_constraint+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_constraint:=generate_passed_constraint+1;
                ELSE  generate_not_constraint:=generate_not_constraint+1;
                END IF;            
 END LOOP;
 --triggers
 FOR cur IN trigger_status(capture_conn_id,convert_conn_id)
 LOOP
                IF cur.capturestatus='Failed' 
                 THEN capture_failed_trigger:=capture_failed_trigger+1;
                ELSE capture_passed_trigger:=capture_passed_trigger+1;
                END IF;
                
                 IF cur.convertstatus='Failed' 
                    THEN convert_failed_trigger:=convert_failed_trigger+1;
                 ELSIF cur.convertstatus='Limitation' 
                    THEN convert_limit_trigger:=convert_limit_trigger+1;
                 ELSIF cur.convertstatus='Passed'
                    THEN  convert_passed_trigger:=convert_passed_trigger+1;
                 ELSE   convert_not_trigger:=convert_not_trigger+1;
                 END IF;
                
                IF cur.generatestatus='Failed' 
                 THEN generate_failed_trigger:=generate_failed_trigger+1;
                ELSIF cur.generatestatus='Passed' 
                 THEN generate_passed_trigger:=generate_passed_trigger+1;
                ELSE  generate_not_trigger:=generate_not_trigger+1;
                END IF;            
 END LOOP; 
 --source exists row
  FOR cur IN (  
      SELECT 
        'Source Exists' Label,
         num_schemas,
         num_tables,
         num_indexes,
         num_constraints,
         num_views,
         num_stored_programs,        
         num_triggers
         FROM  md_connections
         WHERE type IS NULL and id=capture_conn_id
 )
 LOOP
   PIPE ROW(MIGR_REPORT_SUM_ROW(
           cur.Label, 
           cur.num_schemas,
           cur.num_tables,
           cur.num_indexes,
           cur.num_constraints,
           cur.num_views,
           cur.num_triggers,
           cur.num_stored_programs
             ));
 END LOOP; 
   PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Capture Passed', 
           capture_passed_schema,
           capture_passed_table,
           capture_passed_index,
           capture_passed_constraint,
           capture_passed_view,
           capture_passed_trigger,
           capture_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Capture Failed', 
           capture_failed_schema,
           capture_failed_table,
           capture_failed_index,
           capture_failed_constraint,
           capture_failed_view,
           capture_failed_trigger,
           capture_failed_sp
             ));
             
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Passed', 
           convert_passed_schema,
           convert_passed_table,
           convert_passed_index,
           convert_passed_constraint,
           convert_passed_view,
           convert_passed_trigger,
           convert_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Limitation', 
           convert_limit_schema,
           convert_limit_table,
           convert_limit_index,
           convert_limit_constraint,
           convert_limit_view,
           convert_limit_trigger,
           convert_limit_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Convert Failed', 
           convert_failed_schema,
           convert_failed_table,
           convert_failed_index,
           convert_failed_constraint,
           convert_failed_view,
           convert_failed_trigger,
           convert_failed_sp
             ));
             
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Generate Passed', 
           generate_passed_schema,
           generate_passed_table,
           generate_passed_index,
           generate_passed_constraint,
           generate_passed_view,
           generate_passed_trigger,
           generate_passed_sp
             ));
  PIPE ROW(MIGR_REPORT_SUM_ROW(
           'Generate Failed', 
           generate_failed_schema,
           generate_failed_table,
           generate_failed_index,
           generate_failed_constraint,
           generate_failed_view,
           generate_failed_trigger,
           generate_failed_sp
             )); 
  RETURN;
END getSum;
END MIGRATION_REPORT;

/
--------------------------------------------------------
--  DDL for Package Body MIGRATION_TRANSFORMER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "OIE"."MIGRATION_TRANSFORMER" AS
  -- Maximum length of an identifier
  MAX_IDENTIFIER_LEN NUMBER:=30;
C_DISALLOWED_CHARS   CONSTANT NVARCHAR2(100) := ' .@`!"%^&*()-+=[]{};:,.<>?/~'''||UNISTR('\00A3');

--PRIVATE FUNCTION
FUNCTION truncateStringByteSize(p_work VARCHAR2, p_bsize NUMBER) RETURN VARCHAR2
IS
v_work VARCHAR2(4000);
v_bsize NUMBER(10);
BEGIN
 IF LENGTHB(p_work) <= p_bsize THEN
    return p_work;
  END IF;
  v_work := p_work;
  v_work := SUBSTRB(v_work, 1, p_bsize);
  WHILE INSTRC(p_work, v_work , 1, 1) <> 1 LOOP -- a character has been cut in half or in 2/3 or 3/4 by substrb (multibyte can have up to 4 bytes) 
  --note each left over corrupt byte can be a single character
   BEGIN
     v_bsize := LENGTHB(v_work);
  	 v_work := SUBSTRB(v_work, 1, v_bsize-1);
   END;
  END LOOP; 
  return v_work;
END;

FUNCTION add_suffix(p_work VARCHAR2, p_suffix VARCHAR2, p_maxlen NUMBER) RETURN VARCHAR2
IS
  v_suflen NUMBER := LENGTHB(p_suffix);
  v_truncamount NUMBER;
BEGIN
  IF LENGTHB(p_work) < p_maxlen - v_suflen THEN
    RETURN p_work || p_suffix;
  END IF;
  v_truncamount := LENGTHB(p_work) + v_suflen - p_maxlen;
  RETURN truncateStringByteSize(p_work, LENGTHB(p_work)-v_truncamount) || p_suffix;
END add_suffix;
  

FUNCTION check_identifier_length(p_ident VARCHAR2) RETURN VARCHAR2
IS
  v_work VARCHAR2(4000);
BEGIN
  return truncateStringByteSize(p_ident,  MAX_IDENTIFIER_LEN);
END;

FUNCTION check_reserved_word(p_work VARCHAR2) RETURN VARCHAR2
IS
  v_count NUMBER := 0;
BEGIN
  SELECT COUNT(*) INTO v_count FROM MIGRATION_RESERVED_WORDS WHERE KEYWORD = UPPER(p_work);
  IF v_count > 0 THEN
    -- It is a reserved word
    RETURN add_suffix(p_work, '_', MAX_IDENTIFIER_LEN);
  END IF;
  RETURN p_work;
END check_reserved_word;

FUNCTION sys_check(p_work VARCHAR2) RETURN VARCHAR2
IS
BEGIN
  IF LENGTH(p_work) < 4 THEN
    return p_work;
  END IF;
  IF SUBSTR(p_work, 1, 4) <> 'SYS_' THEN
    return p_work;
  END IF;
  RETURN 'SIS_' || SUBSTR(p_work, 5);
END sys_check;

FUNCTION first_char_check(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 * Never want to start with anything but AlphaNumeri
 */
IS
  v_firstChar NCHAR(1);
  v_allowed NCHAR(200);
BEGIN
  v_allowed := C_DISALLOWED_CHARS || '0123456789_$#';
  v_firstChar := SUBSTR(p_work,1,1);
  if INSTR(v_allowed, v_firstChar) > 0 THEN
    return 'A' ||p_work;
  END IF;
  return p_work;
END first_char_check;



FUNCTION lTrimNonAlphaNumeric(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 *Remove all non alphanumeric characters from the start 
 */
IS
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
  v_work NVARCHAR2(4000):=p_work;
  v_forbiddenChars VARCHAR2(100);
  v_firstgoodchar NUMBER;
BEGIN
  v_forbiddenChars := C_DISALLOWED_CHARS ||'_$#';
   FOR v_index in 1..LENGTH(v_work) LOOP
    v_testChar := SUBSTR(p_work, v_index, 1);
    IF INSTR(v_forbiddenChars, v_testChar) <= 0 THEN
      v_firstgoodchar := v_index;
      EXIT;--make sure to leave loop now as first real char reached
    END IF;
  END LOOP;
  return substr(p_work,v_firstgoodchar);
END lTrimNonAlphaNumeric;

FUNCTION removeQuotes(p_work NVARCHAR2) RETURN NVARCHAR2
/**
 * Removed Quotes around a identifier name
 */
IS
  v_firstChar NCHAR(1);
  v_lastChar NCHAR(1);
  v_quote NCHAR(200):= '"[]'; -- strip these from start and end;
  v_work NVARCHAR2(4000) := p_work;
BEGIN
  v_firstChar := SUBSTR(v_work,1,1);
  v_lastChar  := SUBSTR(v_work,LENGTH(v_work),1);
  if INSTR(v_quote, v_firstChar) > 0 THEN
  	v_work := SUBSTR(v_work, 2);
  	if INSTR(v_quote, v_lastChar) > 0 THEN
  	  v_work := SUBSTR(v_work,0,LENGTH(v_work)-1);
      return v_work;
    END IF;
      return v_work;
  END IF;
  return v_work;
END removeQuotes;


FUNCTION check_allowed_chars(p_work NVARCHAR2) RETURN NVARCHAR2
/* The documentation states 
 * "Nonquoted identifiers can contain only alphanumeric characters from your database character set and the
 *  underscore (_), dollar sign ($), and pound sign (#). Database links can also contain periods (.) and "at" signs (@).
 *  Oracle strongly discourages you from using $ and # in nonquoted identifiers."
 *  Heres a couple of gotchas
 *  1) We don't know where we will be generated to, so dunno what that database character set will be
 *  2) We've now way of knowing if a character is alphanumeric on the character set.
 * So... Here's what we'll do
 *  1) given that its come from a database, we'll assume with was alphanumeric
 *  2) We'll remove any "regular" symbol characters (i.e. one's on my keyboard!)
 *  3) We'll be storing in NVARCHAR2 in the hope that this will preserve everything.
 * 
 */
IS
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
  -- Folowing syntax is a workaround for a problem with wrap.  Do not change it.
  v_forbiddenChars NVARCHAR2(100) := C_DISALLOWED_CHARS;
  v_work VARCHAR2(4000) := p_work;
  v_endswithunderscore boolean := FALSE;
BEGIN
  IF INSTR('_',SUBSTR(p_work, LENGTH(p_work))) >0 THEN
    v_endswithunderscore := TRUE;
  END IF;
  
 
  FOR v_index in 1..LENGTH(v_work) LOOP
    v_testChar := SUBSTR(p_work, v_index, 1);
     
    --check for existing underscores.these existed in the original and should be preserved as later we remove multiple underscores
    --bug:10405027
    IF v_testChar = '_' THEN
    	v_work :=SUBSTR(v_work,1,v_index-1)||'!' || SUBSTR(v_work,v_index+1);
    ELSIF INSTR(v_forbiddenChars, v_testChar) > 0 THEN
      v_work := SUBSTR(v_work, 1, v_index-1) || '_' || SUBSTR(v_work, v_index+1);
    END IF;
  END LOOP;
 
  --NOW REMOVE DOUBLE UNDERSCORES see bug 6647397
  v_work := replace(replace (replace (v_work,'__','_'),'__','_'),'__','_');--replace 2 underscores with 1 underscore
 
  --bug:10405027 , original underscore and a new one
  v_work := replace(v_work,'!_','_');
  v_work := replace(v_work,'_!','_'); 
  	
  --NOW ADD BACK IN EXISTING ORGINAL UNDERSCORES bug:10405027
  v_work := replace(v_work,'!','_');
  
  --REMOVE THE LT CHAR IF IT IS AN UNDERSCORE
  IF v_endswithunderscore=false AND INSTR('_',SUBSTR(v_Work,LENGTH(v_work))) > 0 THEN
    v_work := SUBSTR(v_work,0,LENGTH(v_work)-1);
  END IF;
  return v_work;
END check_allowed_chars;

FUNCTION transform_identifier(p_identifier NVARCHAR2)  RETURN NVARCHAR2
IS
  v_work VARCHAR2(4000);
BEGIN
  v_work := p_identifier;
  
  -- There are 10 rules defined for identifier naming:
  -- See http://st-doc.us.oracle.com/10/102/server.102/b14200/sql_elements008.htm#i27570
 
  v_work := removeQuotes(v_work);
  v_work := lTrimNonAlphaNumeric(v_work);
  IF v_work is null THEN
    v_work := getNameForNullCase(p_identifier);	 ---bug no. 8904200 
  END IF;
  
  --moving this to first as we can shrink the size of the name if they have more than 1 invalid char in a row.
  --see bug 6647397
   -- 5. Must begin withan alpha character from your character set
  v_work := first_char_check(v_work);
   -- 6. Alphanumeric characters from your database charset plus '_', '$', '#' only
  v_work := check_allowed_chars(v_work);
  -- 1. Length
  v_work := check_identifier_length(v_work);
  -- 2. Reserved words
  v_work := check_reserved_word(v_work);
  -- 3. "Special words" -I've handled these in reserved words, but still have to check if it starts with SYS
  v_work := sys_check(v_work);
  -- 4. "You should use ASCII characters in database names, global database names, and database link names,
  --    because ASCII characters provide optimal compatibility across different platforms and operating systems."
  -- This doesn't apply as we are not doing anything with DB names
  -- 7. Name collisions; we'll handle this at a higher level.
  -- 8. Nonquoted identifiers are case insensitive.  This is a doubl edged sword: If we use quoted, we can possible
  --    Keep it similar to the source platform.  However this is not how it is typically done in Oracle.
  -- 9. Columns in the same table.  See point 7. above.
  -- 10. All about overloading for functions and parameters.  We don't have to handle this here either, at this
  --     Should all be done by parsing technology.
  return v_work;
END transform_identifier;
FUNCTION fix_all_schema_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := 0;
  -- First, we transform all identifiers to meet our rules
  -- Then, we need to see if we've caused any collisions in the process
  -- And if so, fix them
  -- Right now, this is a dummy stub.
  return v_ret;
END fix_all_schema_identifiers;

FUNCTION fix_all_identifiers(p_connectionid MD_CONNECTIONS.ID%TYPE) RETURN NUMBER
IS
  v_ret NUMBER;
BEGIN
  v_ret := fix_all_schema_identifiers(p_connectionid);
  return v_ret;
END fix_all_identifiers;  

FUNCTION getNameForNullCase(p_work NVARCHAR2) RETURN NVARCHAR2
IS
  v_work VARCHAR2(4000);
  v_testChar VARCHAR2(2000);
  v_index NUMBER;
BEGIN
  FOR v_index in 1..LENGTH(p_work) LOOP
    v_testchar := SUBSTR(p_work,v_index,1);
    v_work := v_work || getDisallowedCharsNames(v_testchar);
  END LOOP;
  return v_work;
END;

FUNCTION getDisallowedCharsNames(p_work NVARCHAR2) RETURN VARCHAR2
IS
  v_work VARCHAR2(4000) := p_work;
BEGIN
  ----' .@`!"%^&*()-+=[]{};:,.<>?/~''' 
    v_work := ( CASE p_work
    WHEN '.' THEN 'DOT'
    WHEN '@' THEN 'AT'
    WHEN '`' THEN 'APOSTROPHE'
    WHEN '!' THEN 'EXCLAMATION'
    WHEN '"' THEN 'D_QUOTE'
    WHEN '%' THEN 'PERCENT'
    WHEN '^' THEN 'CARET'
    WHEN '&' THEN 'AMPERSAND'
    WHEN '*' THEN 'STAR'
    WHEN '(' THEN 'LEFTPARENTHESIS'
    WHEN ')' THEN 'RIGHTPARANTHESIS'
    WHEN '-' THEN 'MINUS'
    WHEN '+' THEN 'PLUS'
    WHEN '=' THEN 'EQUAL'
    WHEN '[' THEN 'LEFTSQUARE_B'
    WHEN ']' THEN 'RIGHTSQUARE_B'
    WHEN '{' THEN 'LEFTCURLY_B'
    WHEN '}' THEN 'RIGHTCURLY_B'
    WHEN ';' THEN 'COLON'
    WHEN ':' THEN 'SEMICOLON'
    WHEN ',' THEN 'COMMA'
    WHEN '<' THEN 'LESSTHAN'
    WHEN '>' THEN 'GREATERTHAN'
    WHEN '?' THEN 'QUESTIONMARK'
    WHEN '~' THEN 'TILDE'
    WHEN '/' THEN 'BACKSLASH'
    WHEN '''' THEN 'S_QUOTE'
    WHEN '$' THEN 'DOLLAR'
    ELSE 'UNKNOWN'
    END);
    return v_work;
END;

END;

/
