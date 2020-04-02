lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.12.10"
    )
  ),
  name := "metals-sample"
)

libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.8" % Test
