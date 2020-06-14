function formulario()
{
    document.getElementById('formularioR').style.display="block";
    var texto = document.getElementById("textarea").value;
    document.getElementById("text").innerHTML = texto;
        var texto2 = document.getElementById("nombre").value;
        document.getElementById("name").innerHTML = texto2;


    if (texto=="")
        document.getElementById("name").innerHTML = "Error";




    if (texto2=="")
        document.getElementById("text").innerHTML = "Error";



}
function formulario2()
{


    document.getElementById('formularioR').style.display="none";

    
}