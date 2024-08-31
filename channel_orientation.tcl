#Calculate a vector between two residues and orient the distance vetcor along z-axis
set sel1 [atomselect top "segname PROB and resid 247"]
set sel2 [atomselect top "segname PROB and resid 270"]
set sel1pos [lindex [$sel1 get {x y z}] 0]
set sel2pos [lindex [$sel2 get {x y z}] 0]
set vecnorm [vecsub $sel1pos $sel2pos]

puts $vecnorm


#set sel [atomselect top all]
#set M [transvecinv {1.1879997253417969 0.006999969482421875 34.646995544433594}]
#$sel move $M
#set M [transaxis y 90]
#$sel move $M
#$sel writepdb all_orient.pdb 

