lazy val root = (project in file(".")).settings(
  inThisBuild(
    List(
      organization := "com.example",
      scalaVersion := "2.13.6",
      scalacOptions += "-Xsource:3",
      
    )
  ),
  // scalacOptions += "-Ywarn-unused:imports",
  name := "scalatest-example",
  // scalacOptions := List("-Xfatal-warnings"),
  // javaOptions in run := List("-agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=5005"),
  fork in run := true
)

libraryDependencies += "org.scalatest" %% "scalatest" % "3.2.6" % "test"
libraryDependencies += "org.scala-lang" % "scala-reflect" % "2.13.5"
libraryDependencies +=   "com.github.pathikrit"  %% "better-files-akka"  % "3.9.1"


