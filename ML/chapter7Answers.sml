(********************************************************)
(* Chapter 7 Answers *)
(* Author: Michael Hrishenko *)
(* Date: 31JAN2020 *)
(*===================== Ex 7.3.1 =======================*)
fun andImp2Imp exp1 = 
let
	val (im1,im2) = dest_imp exp1
	val (im3,im4) = dest_conj im1
	val im5 = mk_imp (im4,im2)
in
	mk_imp (im3,im5)
end;

val test1 = ``(p /\ q) ==> r``;
andImp2Imp test1;
(*===================== Ex 7.3.2 =======================*)
fun impImpAnd exp1 = 
let
	val (im1,im2) = dest_imp exp1
	val (im3,im4) = dest_imp im2
	val im5 = mk_conj (im1,im3)
in
	mk_imp (im5,im4)
end;

val test2 = ``p ==> q ==> r``;
andImp2Imp(impImpAnd test2);
(*===================== Ex 7.3.3 =======================*)
fun notExists exp1 = 
let
	val (im1,im2) = dest_comb exp1
	val (im3,im4) = dest_exists im2
	val im5 = mk_neg im4
in
	mk_forall (im3,im5)
end;

val test3 = ``~?z.Q z``;
notExists test3;