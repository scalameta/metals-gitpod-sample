organization := "com.example"
scalaVersion := "2.13.17"
name := "metals-sample"
scalacOptions ++= Seq(
  "-Yrangepos",
  "-P:semanticdb:failures:warning",
  "-P:semanticdb:synthetics:on",
  "-Xplugin-require:semanticdb",
  "-P:semanticdb:sourceroot:" +
    baseDirectory.in(ThisBuild).value.toString
)

libraryDependencies += "org.scalameta" %% "munit" % "1.2.0" % Test
testFrameworks += new TestFramework("munit.Framework")

addCompilerPlugin(
  "org.scalameta" % "semanticdb-scalac" % "4.14.3" cross CrossVersion.full
)
