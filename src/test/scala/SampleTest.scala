class SampleTest extends org.scalatest.FunSuite {
  test("zigzag") {
    assert(1 == 1)
  }

  test("zigzag-fail") {
    assert(1 == 2)
  }
}

case class Test(anem: String) {}

object Test extends App {

  implicit val repeatable = 1
  implicit val farewell = "farewell"

  def method(greeting: String)(implicit times: Int, bye: String) {
    for (_ <- 0 to times) println(greeting)

    println(bye)
  }
  
  method("Hello!")

  // val bye = new Bye

  Bye.method2
 
  "123".map(_.toInt)
}
 