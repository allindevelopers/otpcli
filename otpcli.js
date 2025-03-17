#!/usr/bin/env node

import { authenticator } from "otplib";
import readline from "node:readline";

const rl = readline.createInterface({
	input: process.stdin,
	terminal: true,
});

rl.question("", (key) => {
	console.log(authenticator.generate(key));
	rl.close();
});
