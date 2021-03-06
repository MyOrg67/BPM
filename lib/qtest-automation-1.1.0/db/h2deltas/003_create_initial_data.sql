-- INITIAL FRAMEWORKS DATA
INSERT INTO FRAMEWORKS(NAME, PLUGIN_ID, IS_DOWNLOADED, IS_INSTALLED) VALUES ('TestNG for Java', 'testng-plugin', FALSE, FALSE);
INSERT INTO FRAMEWORKS(NAME, PLUGIN_ID, IS_DOWNLOADED, IS_INSTALLED) VALUES ('JUnit for Java', 'junit-plugin', FALSE, FALSE);
INSERT INTO FRAMEWORKS(NAME, PLUGIN_ID, IS_DOWNLOADED, IS_INSTALLED) VALUES ('Cucumber for Java', 'cucumber-plugin', FALSE, FALSE);

-- INIT DICTIONARY DATA
INSERT INTO DICTIONARY(NAME, VALUE) VALUES ('POLLING_FREQUENCY', '20');
INSERT INTO DICTIONARY(NAME, VALUE) VALUES ('MAX_ATTACHMENTS_IN_TEST_LOG', '3');

--//@UNDO
DELETE FROM FRAMEWORKS WHERE PLUGIN_ID='testng-plugin';
DELETE FROM FRAMEWORKS WHERE PLUGIN_ID='junit-plugin';
DELETE FROM FRAMEWORKS WHERE PLUGIN_ID='cucumber-plugin';
DELETE FROM DICTIONARY WHERE NAME='POLLING_FREQUENCY';
DELETE FROM DICTIONARY WHERE NAME='MAX_ATTACHMENTS_IN_TEST_LOG';