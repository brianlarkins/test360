(* 
 * example.sml
 * D. Brian Larkins (c) 2021
 *)

fun print_args [] = print("\n")
  | print_args (x::xs) = (print(x ^ " "); print_args xs);

 let
   val args = CommandLine.arguments()
 in
   print_args(args)
 end;

val _ = OS.Process.exit(OS.Process.success)
