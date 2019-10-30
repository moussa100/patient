<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>sunu clinique</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/mtb.js"></script>
<link rel="stylesheet" type="text/css" href="main.css">

</head>

<body>
<nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#monNemu">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">SUNU CLINIQUE</a>
        </div>
        <div  class="collapse navbar-collapse" id="monNemu">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Accueil</a></li>
            <li><a href="">Qui sommes nous</a></li>
            <li><a href="con_docteur.php">Docteur</a></li>
            <li><a href="">Contact</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="" class="btn btn-default"><span class="glyphicon glyphicon-log-in "></span> Connexion</a></li>
          </ul>
        </div>
      </div>
</nav>

      <div class="container mtb-margin-top">
        <form class="form-horizontal" method="POST" id="login_form">
            <div class="row">
                <div class="col-md-5 col-xs-4"></div>
                <div class="col-md-4 col-xs-4">
                    <h2 style="color: black">PATIENT</h2>
                </div>
            </div> 
            <div class="row">
                <div class="col-md-4 col-xs-8"></div>
                <div class="col-md-4 col-xs-8">
                    <div class="form-group has-danger">
                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <label for="matricule">Numero</label>
                                <input type="text" name="id" placeholder="OM-0001" class="form-control"placeholder="Username" autocomplete="off" required autofocus><br>
                                <label for="prenom">Prenom</label>
                                <input type="text" name="prenom" class="form-control" placeholder="Entrer le prenom" autocomplete="off" required autofocus><br>
                                <label for="nom">Nom</label> 
                                <input type="text" name="nom" class="form-control" placeholder="Entrer le nom" autocomplete="off" required autofocus><br>
                                <label for="age">Age</label>  
                                <input type="text" name="age" class="form-control" placeholder="Entrer l'age" autocomplete="off" required autofocus><br>
                                <label for="adresse">Adresse</label>  
                                <input type="text" name="adresse" class="form-control" placeholder="Entrer l'adresse" autocomplete="off" required autofocus><br>
                                <label for="tel">Telephone</label>  
                                <input type="text" name="phone" class="form-control" placeholder="Entrer le numero de telephone" autocomplete="off" required autofocus><br>
                                <label for="mail">E-mail</label>
                                <input type="text" name="mail" class="form-control" placeholder="Entrer l'adresse mail" autocomplete="off" required autofocus><br>
                                <label for="symptone">Symptone</label><br>  
                                <input type="text" name="symptone"class="form-control" placeholder="le symptone du patient" autocomplete="off" required autofocus>
                                <center><input type="submit" class="btn btn-success" value="Enregistrer"></center>
					                      <label class="form-check-label">
					                     	<span class="text-danger align-middle" id="errorMsg"></span>
					                      </label>
                        </div>
                    </div>  
                </div>
            </div>
        </form>       
      </div>
      <div id="footer" style="
        /*background: #007b5e;*/
        background: #000;
        color: white;
        margin: 50px 0px 0px 0px;
        padding: 60px 0 40px;
        display: block;">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-xs-12">
              <center>
                <h5>Copyright 2019 SONATEL ACADEMY</h5>
                <h5>Francisco lopez Papis Diouf & Moussa Ba.</h5>
                <h5> Creation d'une systeme de reservation des patients </h5>
              </center>
            </div>
          </div> 
        </div>
    </div>

</body>
</html>