SELECT docteur.prenom,docteur.nom,secteur.nom_secteur,secrecteur.prenom,secrecteur.nom FROM docteur INNER JOIN bloc 
on docteur.id = bloc.id_docteur
 INNER JOIN secteur on secteur.id=bloc.id_secteur INNER JOIN service on secteur.id=service.idsecteur 
iNNER JOIN secrecteur on secrecteur.id=service.idsecreteur;

//pour afficher les nom des docteur dune secteur

SELECT docteur.prenom,docteur.nom,secteur.nom_secteur,secrecteur.prenom,secrecteur.nom FROM docteur 
INNER JOIN bloc on docteur.id = bloc.id_docteur INNER JOIN secteur on secteur.id=bloc.id_secteur 
INNER JOIN service on secteur.id=service.idsecteur iNNER JOIN secrecteur on secrecteur.id=service.idsecreteur 
WHERE secteur.nom_secteur="gastro";

SELECT patients.prenom,patients.nom,patients.symptone,docteur.prenom,docteur.nom,secteur.nom_secteur,secrecteur.prenom,secrecteur.prenom,secrecteur.nom FROM docteur INNER JOIN bloc on docteur.id = bloc.id_docteur INNER JOIN secteur on secteur.id=bloc.id_secteur INNER JOIN service on secteur.id=service.idsecteur iNNER JOIN secrecteur on secrecteur.id=service.idsecreteur 
INNER JOIN traitement on traitement.id_docteur=docteur.id
INNER JOIN patients on patients.id=traitement.id_patient
WHERE secteur.nom_secteur="gastro"