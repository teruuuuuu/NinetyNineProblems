package jp.co.teruuu.s99

object P08 {

  def compress[A](l: List[A]): List[A] = {
    def go(a: A, l: List[A]): List[A] = l match {
      case x :: xs if x == a => go(a, xs)
      case x :: xs => a :: go(x, xs)
      case Nil => a :: Nil
    }
    l match {
      case x :: xs => go(x, xs)
      case Nil => Nil
    }
  }
}
