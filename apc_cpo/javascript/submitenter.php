<?php 
//Makes a form submit when enter is pressed on the field that calls this function
?>
<script>
function submitenter(myfield,e)
{
    var keypressed = (e.keyCode ? e.keyCode : e.which);
    
    if (keypressed == 13)
    {
        myfield.form.submit();
        e.preventDefault();
    }
}
</script>
