package jp.co.teruuu.s99

object P01 {
  def last[A](v: List[A]): A = v match {
    case x :: Nil => x
    case x :: xs => last(xs)
    case _ => sys.error("")
  }
}
