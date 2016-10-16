CREATE OR REPLACE TRIGGER gofaster.connect_trace
AFTER LOGON ON gofaster.schema
BEGIN
	EXECUTE IMMEDIATE 'ALTER SESSION SET CURRENT_SCHEMA = SYSADM';
	EXCEPTION WHEN OTHERS THEN NULL;
END;
/

show errors