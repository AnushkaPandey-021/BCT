const { Blockchain, Block } = require('./automorph')
let mb = new Blockchain();
console.log("Anushka Pandey - 31031523021")

mb.addBlock(new Block(1, new Date(), 5))
mb.addBlock(new Block(2, new Date(), 7))
mb.addBlock(new Block(3, new Date(), 6))

console.log(mb.validate());
console.log(JSON.stringify(mb, null, 3));