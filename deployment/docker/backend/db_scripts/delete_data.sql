/*
  If you need to delete the lmdb database you will need to run this as well (testing purposes only).
*/

USE pool;
DELETE from pending_payouts where 1=1;
DELETE from balance where 1=1;
DELETE from block_balance where 1=1;
DELETE from transactions where 1=1;
DELETE from payments where 1=1;
