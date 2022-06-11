
is_active_member(fevzi_belli).
is_active_member(damla_oguz).
is_facultymember(fevzi_belli). % since fevzi_belli is retired he is faculty member but not active.
is_facultymember(damla_oguz).
is_course(ceng12332132).
is_course(ceng216).
can_teach_course(damla_oguz , ceng216).
can_teach_course(ddmla_oguz , ceng212).
can_teach(huseyin_unlu). %in examples it says faculty members can teach 
can_assist(huseyin_unlu).
can_assist_course(huseyin_unlu , ceng216).
can_assist_course(huseyin_unlu , ceng222).
is_researchassistant(damla_oguz).
is_assistantprofessor(damla_oguz.


