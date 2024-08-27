# nushell script

mkdir   app\src\main\jniLibs\x86_64
mkdir  app\src\main\java\com\example\android_kotlin_rust_native\native

cd math_ndk

ls

cargo build --lib    --target x86_64-linux-android





cp .\target\x86_64-linux-android\debug\libmath_ndk.so ..\app\src\main\jniLibs\x86_64\




cargo run --features uniffi/cli --bin uniffi-bindgen generate --library target/x86_64-linux-android/debug/libmath_ndk.so --language kotlin --out-dir ..\app\src\main\java\com\example\android_kotlin_rust_native\native

