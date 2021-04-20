/*
This is needed if setting up the pool without the deploy script and is not included in base.sql

Run the following in the terminal twice:
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1

Then replace FIRST_RUN and SECOND_RUN respectively with the values received.
*/
USE pool;
INSERT INTO pool.config (module, item, item_value, item_type, Item_desc)
VALUES ('api', 'authKey', 'FIRST_RUN', 'string', 'Auth key sent with all Websocket frames for validation.');
INSERT INTO pool.config (module, item, item_value, item_type, Item_desc)
VALUES ('api', 'secKey', 'SECOND_RUN', 'string', 'HMAC key for Passwords.  JWT Secret Key.  Changing this will invalidate all current logins.');
