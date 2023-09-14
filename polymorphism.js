const fs = require('fs');
const wasmfile = fs.readFileSync(__dirname + '/polymorphism.wasm');

// This object is imported into wasm.
const importObject = {
    env: {
        jstimes3: (n) => 3 * n,
    }
}


WebAssembly.instantiate(new Uint8Array(wasmfile), importObject).then(obj => {
    // Get two exported functions from wasm.
    let f = obj.instance.exports.functor;

    console.log('f(16) =>', f(16));
    console.log('f(17) =>', f(17));
});
