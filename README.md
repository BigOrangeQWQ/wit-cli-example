# wasi-cli template 

对于大部分的 WIT 文件而言，其中生成出来的 Package 可复用的代码极多，于是我魔改了来自 peter-jerry-ye 的 [bindgen](https://github.com/peter-jerry-ye/wit-bindgen)

魔改后的 wit-bindgen 只会生成该 package 的接口，其余的 package 将会以依赖项的形式添加到 deps 字段里面，作为外部依赖项引用

由 moonbit 工具链自己管理那些未使用到的 import 函数，之后 export 将提供出真正需要编写的项目

这里是作此修改之后的一个 wasi-cli 模板


## TODO

- [ ] bindgen 尚未对 export 相关功能魔改，此处的模板是手动魔改的 bindgen 的结果。
- [ ] 对于其它的 Package 而言，还需要增加自动发布的工作流
- [ ] 试图使用虚拟包来实现 export 相关的内容


## Usage 

```bash
wasm-tools component embed wit target/wasm/release/build/run/run.wasm -o target/wasm/release/build/run/run.wasm --encoding utf16
wasm-tools component new target/wasm/release/build/run/run.wasm -o target/wasm/release/build/run/run.wasm
wasmtime target/wasm/release/build/run/run.wasm
```