lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.13.3"
    )
  ),
  name := "metals-sample"
)

libraryDependencies += "org.scalameta" %% "munit" % "0.7.17" % Test
testFrameworks += new TestFramework("munit.Framework")
