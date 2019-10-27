package jp.co.teruuu.s99

object P04 {

  def length[A](l: List[A]): Int = {
    def go(i: Int, l: List[A]): Int = l match {
      case Nil => i
      case _ :: xs => go(i + 1, xs)
    }
    go(0, l)
  }
}
