secondgrade_course(ceng212).
secondgrade_course(ceng214).
secondgrade_course(ceng216).
secondgrade_course(ceng218).
secondgrade_course(ceng222).
thirdgrade_course(ceng312).
thirdgrade_course(ceng316).
thirdgrade_course(ceng318).
thirdgrade_course(ceng322).
researchassistant(leyla_tekin).
researchassistant(serhat_caner).
researchassistant(adil_coban).
researchassistant(altug_yigit).
researchassistant(burak_korcuklu).
researchassistant(burak_topcu).
researchassistant(busra_guvenoglu).
researchassistant(cansu_ozkan).
researchassistant(didem_genc).
researchassistant(ersin_cine).
researchassistant(dilek_ozturk).
researchassistant(emre_dincer).
researchassistant(furkan_eren_uzyildirim).
researchassistant(guliz_akkaya).
researchassistant(huseyin_unlu).
researchassistant(samet_tenekeci).
researchassistant(semih_orhan).
researchassistant(samet_caner).
researchassistant(yagiz_nalcakan).

assists(huseyin_unlu , ceng212).
assists(leyla_tekin , ceng212).
assists(serhat_caner , ceng212).
assists(ersin_cine , ceng218).
assists(leyla_tekin , ceng218).
assists(furkan_eren_uzyildirim, ceng218).
assists(furkan_eren_uzyildirim, ceng216).
assists(ersin_cine , ceng216).
assists(didem_genc , ceng214).
assists(burak_korcuklu, ceng214).
assists(adil_coban , ceng214).
assists(emre_dincer, ceng214).
assists(burak_topcu , ceng222).
assists(adil_coban , ceng222).

professor(cuneyt_bazlamacci).
professor(onur_demirors).
assistantprofessor(damla_oguz).
assistantprofessor(belgin_ergenc_bostanoglu).
assistantprofessor(mustafa_ozuysal).
assistantprofessor(tolga_ayav).
assistantprofessor(tugkan_tuglular).
assistantprofessor(yalin_bastanlar).
assistantprofessor(isil_oz).
assistantprofessor(nesli_erdogmus).
assistantprofessor(selma_tekir).
assistantprofessor(serap_sahin).
assistantprofessor(berat_alper_erol).
assistantprofessor(buket_ersahin).
assistantprofessor(burak_galip_aslan).
assistantprofessor(turgut_kalfaoglu).
parttime_assistantprofessor(gorkem_giray).
parttime_assistantprofessor(erdem_taylan).
retired_professor(fevzi_belli).
retired_professor(halis_puskulcu).
retired_professor(sitki_aytac).
%facultymember(damla_oguz).
%facultymember(belgin_ergenc_bostanoglu).
%facultymember(mustafa_ozuysal).
%facultymember(tolga_ayav).
%facultymember(tugkan_tuglular).
%facultymember(yalin_bastanlar).
%facultymember(isil_oz).
%facultymember(nesli_erdogmus).
%facultymember(selma_tekir).
%facultymember(serap_sahin).
%facultymember(berat_alper_erol).
%facultymember(buket_ersahin).
%facultymember(burak_galip_aslan).
%facultymember(turgut_kalfaoglu).
%facultymember(gorkem_giray).
%facultymember(erdem_taylan).
%facultymember(leyla_tekin).
%facultymember(huseyin_unlu).
%facultymember(furkan_eren_uzyildirim).
%facultymember(burak_korcuklu).
%facultymember(burak_topcu).
%facultymember(serhat_caner).
%facultymember(adil_coban).
%facultymember(altug_yigit).
%facultymember(semih_orhan).
%facultymember(samet_caner).
%facultymember(samet_tenekeci).
%facultymember(guliz_akkaya).
%facultymember(busra_guvenoglu).
%facultymember(cansu_ozkan).
%facultymember(didem_genc).
%facultymember(ersin_cine).
%facultymember(dilek_ozturk).
%facultymember(emre_dincer).
%facultymember(yagiz_nalcakan).
teaches(nesli_erdogmus , ceng222).
teaches(damla_oguz , ceng212).
teaches(mustafa_ozuysal , ceng216).
teaches(mustafa_ozuysal , ceng218).
teaches(burak_galip_aslan , ceng214).

collaborations(iztech ,paul_sabatier_university).
collaborations(iztech , ege_university).
collaborations(iztech , adnan_menderes_university).
collaborations(iztech , rouen_university).



is_course(X) :- secondgrade_course(X) ; thirdgrade_course(X). %check if X is a course 
is_active_member(X) :- assistantprofessor(X) ; professor(X) ; parttime_assistantprofessor(X) ; researchassistant(X). %since there are retired faculty members i thoguht this rule would be needed 
is_facultymember(X) :- assistantprofessor(X) ; professor(X) ; parttime_assistantprofessor(X) ; researchassistant(X) ; retired_professor(X). % retired professors are also faculty member
can_teach(X) :-  is_active_member(X). % active Faculty members can teach
can_teach_course(X , Y):- is_active_member(X) , is_course(Y), teaches(X , Y). % checks if a facultymember can teach specific course. example: erdem taylan cant teach 212 because damla oguz already teaching it.
can_assist(X) :- is_active_member(X) , researchassistant(X). %
can_assist_course(X , Y) :- can_assist(X) ,is_course(Y), assists(X , Y). %if X can assist and Y is a course x can assst course y. example: ersin cine  cant assist 216 because huseyin unlu already assisting it.


is_researchassistant(X) :- researchassistant(X).
is_professor(X) :- professor(X).
is_assistantprofessor(X) :- assistantprofessor(X).



