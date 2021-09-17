<?php
    require "connexion.php";
    $reqcount=$bdd->query("SELECT * FROM examen");
    $count = $reqcount->rowCount();
    $limit = 10;
    $nbpage=ceil($count/$limit); 
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Babel test</title>
    </head>
    <body>
        <h1>Horaire</h1>
        <?php
                if(isset($_GET['page']))
                {
                    $pg=$_GET['page'];
                }
                else
                {
                    $pg=1;
                }
                $offset=($pg-1)*$limit;
                echo "<div id='pagination'>";
                 if($pg>1)
                 {
                 echo "  &nbsp;<a href='index.php?page=".($pg-1)."' title='Page précédente'><</a>";
                 }
                echo "Page ".$pg." ";
                if($pg!=$nbpage)
                 {
                 echo "  &nbsp;<a href='index.php?page=".($pg+1)."' title='Page suivante'>></a>";
                 }

                 echo "</div>";

                 for($page=1; $page<=$nbpage; $page++)
                 {
                     echo "<a href='index.php?page=".$page."'>page ".$page."</a>";
                 }

                   $req=$bdd->prepare("SELECT examen as exam, DATE_FORMAT(date,'%d/%m/%y') as madate FROM examen ORDER BY date DESC LIMIT :offset, :limit");
                    $req->bindParam(':offset', $offset, PDO::PARAM_INT);
                    $req->bindParam(':limit', $limit, PDO::PARAM_INT);
                    $req->execute();
                    while($don=$req->fetch())
                    {
                        echo "<div class='boite1'><div class='date'>".$don['madate']."</div><div class='exam'>".$don['exam']."</div></div>";
                    }
                    $req->closeCursor(); 
         
        ?>
        
    </body>
</html>