const c = require('crypto');

class Block {
    constructor(i, t, n, ph = '') {
        this.i = i;
        this.t = t;
        this.n = n;  // Directly store `n` without encryption
        this.automorphic = this.morph();
        this.ph = ph;
        this.h = this.calHash();
    }

    morph() {
        let n1 = this.n;  // Directly use `n` without decryption
        let squared = n1 * n1;
        let numStr = n1.toString();
        let squaredStr = squared.toString();
        let result = squaredStr.endsWith(numStr);
        return result ? "Automorphic Number" : "Not an Automorphic Number";
    }

    calHash() {
        return c.createHash('sha256').update(this.i + this.t + this.automorphic + this.ph).digest('hex');
    }
}

class Blockchain {
    constructor() {
        this.chain = [this.createGBlock()];
    }

    createGBlock() {
        return new Block(0, new Date(), 0, '0');
    }

    getCBlock() {
        return this.chain[this.chain.length - 1];
    }

    addBlock(nb) {
        if (nb.morph() === "Automorphic Number") {
            nb.ph = this.getCBlock().h;
            nb.h = nb.calHash();
            this.chain.push(nb);
        }
    }

    validate() {
        for (let i = 1; i < this.chain.length; i++) {
            let cb = this.chain[i];
            let pb = this.chain[i - 1];
            if (cb.h !== cb.calHash() || pb.h !== cb.ph) {
                return false;
            }
        }
        return true;
    }
}

module.exports.Block = Block;
module.exports.Blockchain = Blockchain;
