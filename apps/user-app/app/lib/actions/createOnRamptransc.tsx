'use server'

import { getServerSession } from "next-auth"
import { authOptions } from "../auth"
import prisma from "@repo/db/client";

export async function createOnRampTransc( amount: number, provider: string ) {
    const session = await getServerSession(authOptions);
    const userId = session.user.id;

    // For a real bank: api call to bank --> returns token
    const token = Math.random().toString()

    await prisma.onRampTransaction.create({
        data: {
            userId: Number(userId),
            amount: amount,
            status: "Processing",
            startTime: new Date(),
            provider: provider,
            token: token,
        }
    })

    return {
        message: "OnRamp transaction added"
    }
}