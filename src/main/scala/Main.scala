package org.example
import scala.concurrent.Await

@main def hello: Unit = {

    val name: Option[String] = Some("Anne")

    name match {
      case None    => println("Hello <unknown>")
      case Some(x) => println(s"Hello $x")
    }

    val a =
      """|
         |
         |
         |
         |
         |
         |
         |""".stripMargin

    val b = ""

}
