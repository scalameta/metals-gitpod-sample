lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "3.0.0-M3"
    )
  ),
  name := "metals-sample",
  scalacOptions ++= Seq(
    "-Xsemanticdb"
  )
)

libraryDependencies += "org.scalameta" %% "munit" % "0.7.20" % Test
testFrameworks += new TestFramework("munit.Framework")
