package jp.co.teruuu.s99

object P02 {
  def penultimate[A](l: List[A]): A = l match {
    case x :: y :: Nil => x
    case x :: xs => penultimate(xs)
    case _ => sys.error("")
  }
}
