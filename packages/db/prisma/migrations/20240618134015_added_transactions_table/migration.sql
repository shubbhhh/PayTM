-- CreateTable
CREATE TABLE "Transactions" (
    "transactionId" INTEGER NOT NULL,
    "amount" INTEGER NOT NULL,
    "from" INTEGER NOT NULL,
    "to" INTEGER NOT NULL,
    "transcTime" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Transactions_pkey" PRIMARY KEY ("transactionId")
);

-- AddForeignKey
ALTER TABLE "Transactions" ADD CONSTRAINT "Transactions_from_fkey" FOREIGN KEY ("from") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
