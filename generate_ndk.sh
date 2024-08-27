cd math_ndk

cargo build --lib    --target x86_64-linux-android

#nushell
#mkdir -s  app\src\main\jniLibs\x86_64

#git bash
mkdir -p  app\src\main\jniLibs\x86_64

copy .\target\x86_64-linux-android\release\libmath_ndk.so ..\app\src\main\jniLibs\x86_64\libmath_ndk.so

#nushell
#mkdir -s app\src\main\java\com\example\android_kotlin_rust_native\native
mkdir -p app\src\main\java\com\example\android_kotlin_rust_native\native


cargo run --features uniffi/cli --bin uniffi-bindgen generate --library target/aarch64-linux-android/debug/libmath_ndk.so --language kotlin --out-dir "..\app\src\main\java\com\example\android_kotlin_rust_native\native"
