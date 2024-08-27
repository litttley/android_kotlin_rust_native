// Top-level build file where you can add configuration options common to all sub-projects/modules.
plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.jetbrains.kotlin.android) apply false

//    alias(libs.plugins.rust.android)
}

//
//fun getABITargets(): List<String> {
//    var abi = project.gradle.parent?.startParameter?.projectProperties?.get("targetABI")
//    if (abi.isNullOrBlank())
//        abi = findProperty("targetABI") as String?
//
//    return if (abi.isNullOrBlank())
//        listOf("arm", "arm64", "x86", "x86_64")
//    else
//        listOf(abi)
//}
//
//cargo {
//    module  = "../math_ndk"       // Or whatever directory contains your Cargo.toml
//    libname = "math_ndk"          // Or whatever matches Cargo.toml's [package] name.
//    targets = getABITargets()
//}