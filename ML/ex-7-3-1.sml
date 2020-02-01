(********************************************************)
(* Exercise 7.3.1 *)
(* Author: Michael Hrishenko *)
(* Date: 31JAN2020 *)
(********************************************************)
Exercise 7.3.1 Create a function andImp2Imp term that operates on terms of the form p^q  r and
returns p  q  r.
11
- andImp2Imp ‘‘(p /\ q) ==> r‘‘;
> val it =
‘‘(p :bool) ==> (q :bool) ==> (r :bool)‘‘
: term

