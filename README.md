## How to generate wasm in dependency-less way

### 1. Build tinygo:

a. git clone tinygo branch from this repo: https://github.com/LiuJiazheng/tinygo/tree/freestand 

b. remember check out to branch `freestand`, this contains a baremetal-alike wasm target and wasi-libc to eliminate potential external functions

c. build tinygo following Makefile. During this step, first and second step to fetch and build go-llvm, then you might need a lib dependency by "git submodule update --init". In fact, this step we only need lib wasi-libc (and also need to modify it). In Makefile of wasi-libc, find target "$(BULK_MEMORY_OBJS)", chang the cflag to:
```
$(BULK_MEMORY_OBJS): CFLAGS += \
        -mno-bulk-memory
```
This could help us forbid 0xFC wasm opcode extention compiled into our target. Because zkWASM does not support that.

I am just lazy, this could by changing git submodule to make this automatic rather than doing this manually.

Remember compiling cache might also affect the correctness. Rememer to find the tinygo cache in your system and delete it everytime you think the build is weird.

### 2. Compile example target

a. compile
```
${TINYGO_PATH_YOU_BUILD}/tinygo build -o fib-freestand.wasm -scheduler=none --no-debug -gc=leaking -target=wasm-freestanding fib.go
```

b. check whether this build is sound
```
wasm2wat fib-freestand.wasm > fib-freestand.wat
```

### 3. Verify it in zkWASM

a. git clone zkWASM

b. RUST_LOG=info cargo run --release -- --function zkmain --output ./output --wasm ./fib.wasm setup

c. RUST_LOG=info cargo run --release -- --function zkmain --output ./output --wasm ./fib.wasm single-prove

d. RUST_LOG=info cargo run --release -- --function zkmain --output ./output --wasm ./fib.wasm single-verify --proof ./output/zkwasm.0.transcript.data --instance ./output/zkwasm.0.instance.data

### 4. Results:
```
Finished release [optimized] target(s) in 0.10s
     Running `target/release/delphinus-cli --function zkmain --output ./output --wasm ./fib.wasm single-verify --proof ./output/zkwasm.0.transcript.data --instance ./output/zkwasm.0.instance.data`
read params K=18 from "./output/K18.params"
read vkey from "./output/zkwasm.0.vkey.data"
quotient_poly_degree 4
read transcript from "./output/zkwasm.0.transcript.data"
[2023-08-21T01:19:38Z INFO  delphinus_cli::exec] Verifing proof passed
```
