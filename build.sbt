

lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.12.12"
    )
  ),
  name := "scalatest-example",
  // scalacOptions := List("-Xfatal-warnings"),
  // javaOptions in run := List("-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005"),
  fork in run := true
)

libraryDependencies += "org.scalatest" %% "scalatest" % Deps.scalatest % Test

