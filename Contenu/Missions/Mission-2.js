function bonus(){
    var total = 0
    var stotal = 0
    var stotalr = 0
    var impot = 0
    var taxe = 0
    var exp = 0
    var totalf = 0

    do{
        var price = prompt("Prix")
        var quantity = prompt("Quantité")

        alert(`Vos ${article} couterons ${price * quantity} €`)
        total = Number(price)*Number(quantity) 
        totalf += total 
        c += ("Article : " +article+" <br> Prix : "+price +"€"+ " <br> Quantité : "+quantity+ " <br> Total : "+total+"€"+"<br><br><br>")
        alert('Vos articles additionnes couterons ' + totalf + "€")

        next = prompt("Voulez vous continuer (OUI/STOP) ?")
    }
    while(next != "STOP");
    document.write(c);
    document.write(" Total final: "+totalf+"€");
}

function somme(){
    var d= document.getElementById("t1").value;
    var e= document.getElementById("t2").value;
    var f= document.getElementById("t3").value;
    var g= document.getElementById("t4").value;
    var h= document.getElementById("t5").value;
    var i= document.getElementById("t6").value;
    var j= document.getElementById("t7").value;
    var k= document.getElementById("t8").value;
    var l= document.getElementById("t9").value;
    var m= document.getElementById("t10").value;
    var s= Number(d)+ Number(e)+ Number(f)+ Number(g)+ Number(h)+ Number(i)+ Number(j)+ Number(k)+ Number(l)+ Number(m);
    t3.value=s;
}