allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    // avoid touching the Android app project during configuration to prevent SDK location lookup
    if (project.name == "app") return@subprojects

    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
/* Avoid forcing evaluation of the :app project during configuration to prevent SDK location lookup errors.
   If you need to depend on tasks from :app, invoke them during the execution phase or ensure local.properties/ANDROID_HOME is set. */

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
