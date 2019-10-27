package jp.co.teruuu.s99

import scala.annotation.tailrec

object P05 {

  def reverse[A](l: List[A]): List[A] = {
    @tailrec
    def go(l: List[A], m: List[A]): List[A] = l match {
      case Nil => m
      case x :: xs => go(xs, x :: m)
    }
    go(l, Nil)
  }
}
