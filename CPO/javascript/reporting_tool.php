<?php 
//Default javascript functions for the custom reporting tool interface
?>
<script>
function checkAll()
{

    var arrCheckBoxes = document.getElementsByName('show_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = true;
    }
}
function uncheckAll()
{
    var arrCheckBoxes = document.getElementsByName('show_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = false;
    }
}
function checkAllSum()
{

    var arrCheckBoxes = document.getElementsByName('sum_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = true;
    }
}
function uncheckAllSum()
{
    var arrCheckBoxes = document.getElementsByName('sum_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = false;
    }
}
function checkAllCount()
{

    var arrCheckBoxes = document.getElementsByName('count_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = true;
    }
}
function uncheckAllCount()
{
    var arrCheckBoxes = document.getElementsByName('count_field[]');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = false;
    }
}

function removeGroup()
{
    var arrCheckBoxes = document.getElementsByName('group_field');
    for (var i = 0; i < arrCheckBoxes.length; i++)
    {
        arrCheckBoxes[i].checked = false;
    }
}
</script>
