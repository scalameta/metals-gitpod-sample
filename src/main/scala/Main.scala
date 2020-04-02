package org.example
import scala.concurrent.Await

object Main {

  def main(args: Array[String]) {

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
}
