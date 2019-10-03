package org
import java.nio.file.Files

trait A {
  def method(a: String): Unit
}

class B extends A {
  def method(a: String): Unit = ???
}

object C
