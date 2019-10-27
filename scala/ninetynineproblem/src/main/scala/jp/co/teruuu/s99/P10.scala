package jp.co.teruuu.s99

object P10 {
  import P04.length
  import P09.pack

  def encode[A](l: List[A]): List[(Int, A)] =
    pack(l).map(a => (length(a), a.head))
}
