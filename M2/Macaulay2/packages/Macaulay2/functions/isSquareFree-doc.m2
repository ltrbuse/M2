--- status: Draft
--- author(s): Gregory G. Smith
--- notes: 

document { 
     Key => {isSquareFree, (isSquareFree,MonomialIdeal)},
     Headline => "whether a monomial ideal is square free",
     Usage => "isSquareFree I",
     Inputs => {
	  "I" => MonomialIdeal => ""
	  },
     Outputs => {
	  {"returns ", TT "true", " if ", TT "I", " is a square free ", 
	       TO2("MonomialIdeal", "monomial ideal"), 
	       " and ", TT "false", " otherwise"}	  
	  },
     "A square free ", TO2("MonomialIdeal", "monomial ideal"), " is an ideal generated 
     by products of variables; in other words, a radical
     monomial ideal.",
     EXAMPLE {
	  "QQ[x,y,z];",
	  "J = monomialIdeal(x^3*y^5*z, y^5*z^4, y^3*z^5, 
	       x*y*z^5, x^2*z^5, x^4*z^3, x^4*y^2*z^2, 
	       x^4*y^4*z)",
	  "isSquareFree J",
	  "isSquareFree radical J"
	  },    
     "Square free monomial ideals correspond both to 
     simplicial complexes and to unions of coordinate 
     subspaces.",     
     EXAMPLE {
	  "needsPackage \"SimplicialComplexes\"",
	  "D = simplicialComplex {{0,1,2},{0,1,3},{0,2,3},{1,2,3}}",
	  "debug SimplicialComplexes",
	  "I = monomialIdeal presentation D.facering",
	  "isSquareFree I"
	  },
     PARA,
     "Implemented by Greg Smith.",	       
     SeeAlso => {radical, ass, "SimplicialComplexes"}
     }
