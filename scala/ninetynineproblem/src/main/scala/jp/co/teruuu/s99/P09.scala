package jp.co.teruuu.s99

object P09 {

//  def pack[A](l: List[A]): List[List[A]] = {
//    def go(a: List[A], l: List[A]): List[List[A]] = l match {
//      case x :: xs if (a.head == x) => go(x:: a, xs)
//      case x :: xs => a :: go(x:: Nil, xs)
//    }
//    l match {
//      case x :: xs => go(x :: Nil, xs)
//      case Nil => Nil
//    }
//  }

  def pack[T](list: List[T]): List[List[T]] =
    list.foldRight(Nil: List[List[T]]) { (e, ls) =>
      ls match {
        case (x @ `e` :: _) :: xs => (e :: x) :: xs
        case _                    => List(e) :: ls
      }
    }
}
