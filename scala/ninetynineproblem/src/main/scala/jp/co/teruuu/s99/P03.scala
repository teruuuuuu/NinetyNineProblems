package jp.co.teruuu.s99

object P03 {
  def nth[A](i: Int, l: List[A]): A = l match {
    case x :: xs if i == 0 => x
    case x :: xs => nth(i-1, xs)
    case _ => sys.error("")
  }
}
