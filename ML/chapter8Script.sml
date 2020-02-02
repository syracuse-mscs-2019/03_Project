(********************************************************)
(* Chapter 8 Problems *)
(* Author: Michael Hrishenko *)
(* Date: 31JAN2020 *)
(*==================== Ex 8.4.1 ========================*)
(* PROVE val problem1Thm =
[] |- p ==> (p ==> q) ==> (q ==> r) ==> r
: thm *)
structure chapter8Script = struct
	open HolKernel Parse boolLib bossLib;
	val _ = new_theory "chapter8"; (* "_" is a placeholder, we only care about the side-effects of this command not the variable itslef. *)
	val problem1Thm =
	let
		val asm1 = ASSUME ``p:bool``
		val asm2 = ASSUME ``p ==> q``
		val asm3 = ASSUME ``q ==> r``
		val im1 = MP asm2 asm1
		val im2 = MP asm3 im1
		val im3 = DISCH (concl asm3) im2
		val im4 = DISCH (concl asm2) im3
	in
		DISCH ``p:bool`` im4
	end

	val _ = export_theory();
end (* structure *)

(*==================== Ex 8.4.2 ========================*)
(*==================== Ex 8.4.3 ========================*)