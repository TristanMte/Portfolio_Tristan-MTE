function calcul_moyenne() {
    var note1 = prompt("Quelle est la premi&egrav;re note? Coeff. 2");
    var note2 = prompt("Quelle est la deuxi&egrav;me note? Coeff. 2");
    var note3 = prompt("Quelle est la troisi&egrav;me note? Coeff. 2");
    var note4 = prompt("Quelle est la quatri&egrav;me note? Coeff. 3");

    var somme = Number(note1 * 2) + Number(note2 * 2) + Number(note3 * 2) + Number(note4 * 3);

    var moyenne = somme / 9;

    document.write("Voici la somme des notes: " + somme + "  |  ");

    document.write("Voici la moyenne des notes: " + moyenne + "  |  ");

    if (moyenne < 10)
        document.write("Redoublement...");
    else
        document.write("Admis!")
}

function age_test() {
    var age = prompt("Quel est votre &acirc;ge?");

    document.write("Vous avez: " + age + " ans |  ");

    if (age < 18)
        document.write("Vous &ecirc;tes donc mineur.");
    else
        document.write("Vous &ecirc;tes donc majeur.");


}

function affichage_simple() {
    var nom = prompt("Quel est votre nom?");
    var prenom = prompt("Quel est votre pr&eacute;nom?");

    document.write("<div style='background-color: #fefefe; border: 2px solid #303030; height: 30px; width=25%; color: #303030;>; border-radius: 26px;text-align: center; font-weight: bold;'")
    document.write("<p1 style='color: black'>Bonjour " + prenom + " " + nom + " !</p1>")
    document.write("</div>")
}

function test_color() {
    var couleur = prompt("Donner une couleur");
    if (couleur == "rouge" || couleur == "Rouge" || couleur == "ROUGE" || couleur == "rOUGE")
        document.body.style.background = "red"
    else if (couleur == "orange" || couleur == "Orange" || couleur == "ORANGE" || couleur == "oRANGE")
        document.body.style.background = "orange"
    else if (couleur == "jaune" || couleur == "Jaune" || couleur == "JAUNE" || couleur == "jAUNE")
        document.body.style.background = "yellow"
    else if (couleur == "vert" || couleur == "Vert" || couleur == "VERT" || couleur == "vERT")
        document.body.style.background = "green"
    else if (couleur == "bleu" || couleur == "Bleu" || couleur == "BLEU" || couleur == "bLEU")
        document.body.style.background = "blue"
    else if (couleur == "violet" || couleur == "Violet" || couleur == "VIOLET" || couleur == "vIOLET")
        document.body.style.background = "violet"
    else
        alert("Couleur non répertoriée")
}

function somme() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a) + Number(b);
    t3.value = s;
}

function soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a) - Number(b);
    t3.value = s;
}

function produit() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a) * Number(b);
    t3.value = s;
}

function division() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var s = Number(a) / Number(b);
    t3.value = s;
}

function parite() {
    var x = Number(document.getElementById("t1").value);
    if (x % 2 == 0)
        t3.value = "Nombre pair"
    else
        t3.value = "Nombre impair"
}

function permute() {
    var a = document.getElementById("t1").value;
    var tmp = 0, x, nbr, y;
    nbr = Number(document.getElementById("t1").value);
    y = nbr;
    while (nbr > 0) {
        x = nbr % 10;
        nbr = parseInt(nbr / 10);
        tmp = tmp * 10 + x;
    }
    t1.value = tmp;
    var b = document.getElementById("t2").value;
    var tmp = 0, x, nbr, y;
    nbr = Number(document.getElementById("t2").value);
    y = nbr;
    while (nbr > 0) {
        x = nbr % 10;
        nbr = parseInt(nbr / 10);
        tmp = tmp * 10 + x;
    }
    t2.value = tmp;
}

function releve() {
    var a = document.getElementById("n1").value;
    var b = document.getElementById("n2").value;
    var c = document.getElementById("n3").value;

    var d = document.getElementById("o1").value;
    var e = document.getElementById("o2").value;
    var f = document.getElementById("o3").value;

    var s = Number(a) * Number(d) + Number(b) * Number(e) + Number(c) * Number(f);
    var t = Number(s) / (Number(d) + Number(e) + Number(f))

    p1.value = t;

    if (t < 8)
        p2.value = ("Redoublement...");
    else if (t < 10)
        p2.value = ("Rattrapages");
    else if (t < 12)
        p2.value = ("Admis Passable");
    else if (t < 14)
        p2.value = ("Admis Mention Assez bien");
    else if (t < 16)
        p2.value = ("Admis Mention Bien");
    else if (t <= 20)
        p2.value = ("Admis Mention Tr&egrav;s bien");
    else if (t > 20)
        alert("Erreur")
}


function affichagetab1() {
    document.write('<table border=2px width=30%');
    for (let i = 0; i <= 5; i++) {
        document.write('<tr> <td>1</td> <td>2</td> <td>3</td> </tr>');
    }
    document.write('</table>');
}

function affichagetab2() {
    document.write('<table border=2px width=30%');
    var ligne = prompt("Combien de lignes dans le tableau?")
    for (let i = 1; i <= ligne; i++) {
        document.write("<tr> <td>" + i + "</td> <td>2</td> <td>3</td> </tr>");
    }
    document.write('</table>');
}

function seconnecter1() {
    var log = prompt("Quel est votre identifiant?");
    var pwd = prompt("Entrez le mot de passe");

    if (log == 'admin' & pwd == 'password')
        document.write("Bonjour, vous &ecirc;tes en acc&eacute;s administrateur !")
    else
        alert("Mauvais identifiant/mot de passe !")
}

function seconnecter2() {
    var i = 0;
    do {
        var log = prompt("Quel est votre identifiant?");
        var pwd = prompt("Entrez le mot de passe");
        if (log == 'admin' & pwd == 'password') {
            document.write("Bonjour, vous &ecirc;tes en acc&eacute;s administrateur, " + log);
            break;
        }
        else
            alert("Mauvais identifiant/mot de passe !");
        i += 1;
    }
    while (i < 3);
    if (i == 3)
        alert("Trop de tentatives, d&eacute;lai d&eacute;pass&eacute;!")
}

function cdc() {
    var chaine = prompt("Donner un mot");
    document.write(chaine.toUpperCase() + "<br><br>");
    document.write(chaine.toLowerCase() + "<br><br>");
    document.write(" La chaine contient " + chaine.length + " caract&egrav;res " + "<br><br>");
    document.write(" La premi&egrav;re lettre de la chaine est " + chaine.substring(0, 1));
}

function switch1() {
    var color = prompt("Entrez une couleur");
    switch (color) {
        case "rouge": document.body.style.background = "red";
            break;
        case "ROUGE": document.body.style.background = "red";
            break;
        case "Rouge": document.body.style.background = "red";
            break;
        case "orange": document.body.style.background = "orange";
            break;
        case "ORANGE": document.body.style.background = "orange";
            break;
        case "Orange": document.body.style.background = "orange";
            break;
        case "jaune": document.body.style.background = "yellow";
            break;
        case "JAUNE": document.body.style.background = "yellow";
            break;
        case "Jaune": document.body.style.background = "yellow";
            break;
        case "vert": document.body.style.background = "green";
            break;
        case "VERT": document.body.style.background = "green";
            break;
        case "Vert": document.body.style.background = "green";
            break;
        case "bleu": document.body.style.background = "blue";
            break;
        case "BLEU": document.body.style.background = "blue";
            break;
        case "Bleu": document.body.style.background = "blue";
            break;
        case "violet": document.body.style.background = "violet";
            break;
        case "VIOLET": document.body.style.background = "violet";
            break;
        case "Violet": document.body.style.background = "violet";
            break;
        default: alert("Couleur non repertoriee");
    }
}

function bonus() {
    var totalf = 0
    var total = ""
    var c = ""
    do {
        var article = prompt("Article")
        var price = prompt("Prix")
        var quantity = prompt("Quantit&eacute;")

        alert(`Vos ${article} couterons ${price * quantity} €`)
        total = Number(price) * Number(quantity)
        totalf += total
        c += ("Article : " + article + " <br> Prix : " + price + "€" + " <br> Quantit&eacute; : " + quantity + " <br> Total : " + total + "€" + "<br><br><br>")
        alert('Vos articles additionn&eacute;s couterons ' + totalf + "€")

        next = prompt("Voulez-vous continuer (OUI/STOP) ?")
    }
    while (next != "STOP");
    document.write(c);
    document.write(" Total final: " + totalf + "€");
}