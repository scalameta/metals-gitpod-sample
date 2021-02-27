lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.13.5"
    )
  ),
  name := "metals-sample",
  scalacOptions ++= Seq(
    "-Yrangepos",
    "-P:semanticdb:failures:warning",
    "-P:semanticdb:synthetics:on",
    "-Xplugin-require:semanticdb",
    "-P:semanticdb:sourceroot:" +
      baseDirectory.in(ThisBuild).value.toString
  )
)

libraryDependencies += "org.scalameta" %% "munit" % "0.7.22" % Test
testFrameworks += new TestFramework("munit.Framework")

addCompilerPlugin(
  "org.scalameta" % "semanticdb-scalac" % "4.4.10" cross CrossVersion.full
)
