lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.12.10"
    )
  ),
  name := "scalatest-example"
)

libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.8" % Test
