/*T1 Example */

START TRANSACTION;

	INSERT INTO address  (house_name, house_number, street_line_one) VALUES ('', 21, 'Lisburn Road');	
	SET @last_id_in_address = LAST_INSERT_ID();

	INSERT INTO account (balance) VALUES (0);	
	SET @last_id_in_account = LAST_INSERT_ID();
	
	INSERT INTO customer (name, address_id, account_id) 
	VALUES ("Neil Anderson", 3, 4);
	
COMMIT;
	



/*T2 Example */

START TRANSACTION;

	INSERT INTO address  (house_name, house_number, street_line_one) VALUES ('', 22, 'Dublin Road');	
	SET @last_id_in_address = LAST_INSERT_ID();

	INSERT INTO account (balance) VALUES (45);	
	SET @last_id_in_account = LAST_INSERT_ID();
	
	INSERT INTO customer (name, address_id, account_id) 
	VALUES ('James Hillier', @last_id_in_address, @last_id_in_account);

	INSERT INTO customer (name, address_id, account_id) 
	VALUES ('James Bond', @last_id_in_address, @last_id_in_account);
	
COMMIT;
	



/*T3 Example */

START TRANSACTION;

	INSERT INTO address  (house_name, house_number, street_line_one) VALUES ('', 22, 'Dublin Road');	
	SET @last_id_in_address = LAST_INSERT_ID();

	INSERT INTO account (balance) VALUES (50);	
	SET @last_id_in_account = LAST_INSERT_ID();
	
	INSERT INTO customer (name, address_id, account_id) 
	VALUES ('James Hillier', @last_id_in_address, @last_id_in_account);

	SAVEPOINT SAVEPOINT1;

	INSERT INTO customer (name, address_id, account_id) 
	VALUES ('James Bond', @last_id_in_address, @last_id_in_account);

	#RELEASE SAVEPOINT SAVEPOINT1;

	ROLLBACK TO SAVEPOINT1;

COMMIT;