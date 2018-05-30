window.onload = function()
{
        document.getElementById('upc').focus();
}


document.getElementById('upc').focus();

var input = document.getElementById("upc");


input.addEventListener("keyup", function(event)
{
    event.preventDefault();
    if (event.keyCode === 13)
    {
        document.getElementById("add").click();
    }
});
