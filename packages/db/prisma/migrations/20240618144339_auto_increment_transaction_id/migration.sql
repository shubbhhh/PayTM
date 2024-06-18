-- AlterTable
CREATE SEQUENCE transactions_transactionid_seq;
ALTER TABLE "Transactions" ALTER COLUMN "transactionId" SET DEFAULT nextval('transactions_transactionid_seq');
ALTER SEQUENCE transactions_transactionid_seq OWNED BY "Transactions"."transactionId";
