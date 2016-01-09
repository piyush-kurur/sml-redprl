(* This is the sum type containing all the operators in JonPRL's
 * programming language. *)
structure OperatorData =
struct
  type opid = string

  datatype 'i operator =
      S of 'i ScriptOperator.t
    | LVL_OP of 'i LevelOperator.t
    | VEC_LIT of Sort.t * int
    | OP_SOME of Sort.t
    | OP_NONE of Sort.t
    | CUST of opid * ('i * Sort.t) list * Arity.t
        (* it may make sense in the future to replace [opid] with ['i];
         * then, we could seamlessly rename operators when importing one
         * development into another. *)
end
