<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="game.aspx.cs"  %>

<!DOCTYPE html>
<head runat="server">
    <title></title>
    <link href="css/metro-bootstrap.css" rel="stylesheet" />
    <link href="css/m-buttons.css" rel="stylesheet" />
    <link href="css/metro-bootstrap-responsive.css" rel="stylesheet" />
    <link href="css/iconFont.css" rel="stylesheet" />
    <link href="css/docs.css" rel="stylesheet" />
    <link href="js/prettify/prettify.css" rel="stylesheet" />

    <!-- Load JavaScript Libraries -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/jquery/jquery.widget.min.js"></script>
    <script src="js/jquery/jquery.mousewheel.js"></script>
    <script src="js/prettify/prettify.js"></script>
    <script src="js/holder/holder.js"></script>

    <!-- Metro UI CSS JavaScript plugins -->
    <script src="js/load-metro.js"></script>
    <script src="js/metro.min.js"></script>
    <script src="js/metro-calendar.js"></script>
    <script src="js/metro-global.js"></script>
    <script src="js/metro-locale.js"></script>
    <script src="js/metro-datepicker.js"></script>

    <!-- Local JavaScript -->
    
    <script src="js/jquery.json.js"></script>
    <script src="js/jquery.session.js"></script>
    <script src="js/docs.js"></script>
    <script src="js/ga.js"></script>
    <script src="js/encoder.js"></script>

    <script type="text/javascript">

    var gameWon = "False";
    var movenumber = "0";
    var startg = "";
    var endg = "";

    function startNewGame() {
        startg = new Date();

        var newGameArray = [];
        newGameArray = generateRandomNumbers();


        sessionStorage.setItem("movenum", movenumber);

        $('[name="btnStopGame"]').prop('disabled', false);
        $('[name="btnStartGame"]').prop('disabled', true);
        $('[name="statisticspanel"]').css("display", "none");

        $('[name="statdetails"]').html("<div class=\"panel\"><div class=\"panel-header\">NUMBER OF MOVES:</div><div class=\"panel-content\"></div></div><div class=\"panel\"><div class=\"panel-header\">TIME TAKEN:</div><div class=\"panel-content\"></div></div>");


        if (newGameArray[0] == "1") {
            $('[name="imgOne"]').attr("src", "Numbers/one.png");
            $('[name="imgOne"]').attr("alt", "1");

        }
        else if (newGameArray[0] == "2") {
            $('[name="imgOne"]').attr("src", "Numbers/two.png");
            $('[name="imgOne"]').attr("alt", "2");
        }
        else if (newGameArray[0] == "3") {
            $('[name="imgOne"]').attr("src", "Numbers/three.png");
            $('[name="imgOne"]').attr("alt", "3");
        }
        else if (newGameArray[0] == "4") {
            $('[name="imgOne"]').attr("src", "Numbers/four.png");
            $('[name="imgOne"]').attr("alt", "4");
        }
        else if (newGameArray[0] == "5") {
            $('[name="imgOne"]').attr("src", "Numbers/five.png");
            $('[name="imgOne"]').attr("alt", "5");
        }
        else if (newGameArray[0] == "6") {
            $('[name="imgOne"]').attr("src", "Numbers/six.png");
            $('[name="imgOne"]').attr("alt", "6");
        }
        else if (newGameArray[0] == "7") {
            $('[name="imgOne"]').attr("src", "Numbers/seven.png");
            $('[name="imgOne"]').attr("alt", "7");
        }
        else if (newGameArray[0] == "8") {
            $('[name="imgOne"]').attr("src", "Numbers/eight.png");
            $('[name="imgOne"]').attr("alt", "8");
        }
        else if (newGameArray[0] == "9") {
            $('[name="imgOne"]').attr("src", "Numbers/nine.png");
            $('[name="imgOne"]').attr("alt", "9");
        }
        else if (newGameArray[0] == "10") {
            $('[name="imgOne"]').attr("src", "Numbers/ten.png");
            $('[name="imgOne"]').attr("alt", "10");
        }
        else if (newGameArray[0] == "11") {
            $('[name="imgOne"]').attr("src", "Numbers/eleven.png");
            $('[name="imgOne"]').attr("alt", "11");
        }
        else if (newGameArray[0] == "12") {
            $('[name="imgOne"]').attr("src", "Numbers/twelve.png");
            $('[name="imgOne"]').attr("alt", "12");
        }
        else if (newGameArray[0] == "13") {
            $('[name="imgOne"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgOne"]').attr("alt", "13");
        }
        else if (newGameArray[0] == "14") {
            $('[name="imgOne"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgOne"]').attr("alt", "14");
        }
        else if (newGameArray[0] == "15") {
            $('[name="imgOne"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgOne"]').attr("alt", "15");
        }
        //element 2
        if (newGameArray[1] == "1") {
            $('[name="imgTwo"]').attr("src", "Numbers/one.png");
            $('[name="imgTwo"]').attr("alt", "1");
        }
        else if (newGameArray[1] == "2") {
            $('[name="imgTwo"]').attr("src", "Numbers/two.png");
            $('[name="imgTwo"]').attr("alt", "2");
        }
        else if (newGameArray[1] == "3") {
            $('[name="imgTwo"]').attr("src", "Numbers/three.png");
            $('[name="imgTwo"]').attr("alt", "3");
        }
        else if (newGameArray[1] == "4") {
            $('[name="imgTwo"]').attr("src", "Numbers/four.png");
            $('[name="imgTwo"]').attr("alt", "4");
        }
        else if (newGameArray[1] == "5") {
            $('[name="imgTwo"]').attr("src", "Numbers/five.png");
            $('[name="imgTwo"]').attr("alt", "5");
        }
        else if (newGameArray[1] == "6") {
            $('[name="imgTwo"]').attr("src", "Numbers/six.png");
            $('[name="imgTwo"]').attr("alt", "6");
        }
        else if (newGameArray[1] == "7") {
            $('[name="imgTwo"]').attr("src", "Numbers/seven.png");
            $('[name="imgTwo"]').attr("alt", "7");
        }
        else if (newGameArray[1] == "8") {
            $('[name="imgTwo"]').attr("src", "Numbers/eight.png");
            $('[name="imgTwo"]').attr("alt", "8");
        }
        else if (newGameArray[1] == "9") {
            $('[name="imgTwo"]').attr("src", "Numbers/nine.png");
            $('[name="imgTwo"]').attr("alt", "9");
        }
        else if (newGameArray[1] == "10") {
            $('[name="imgTwo"]').attr("src", "Numbers/ten.png");
            $('[name="imgTwo"]').attr("alt", "10");
        }
        else if (newGameArray[1] == "11") {
            $('[name="imgTwo"]').attr("src", "Numbers/eleven.png");
            $('[name="imgTwo"]').attr("alt", "11");
        }
        else if (newGameArray[1] == "12") {
            $('[name="imgTwo"]').attr("src", "Numbers/twelve.png");
            $('[name="imgTwo"]').attr("alt", "12");
        }
        else if (newGameArray[1] == "13") {
            $('[name="imgTwo"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgTwo"]').attr("alt", "13");
        }
        else if (newGameArray[1] == "14") {
            $('[name="imgTwo"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgTwo"]').attr("alt", "14");
        }
        else if (newGameArray[1] == "15") {
            $('[name="imgTwo"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgTwo"]').attr("alt", "15");
        }
        //element 3
        if (newGameArray[2] == "1") {
            $('[name="imgThree"]').attr("src", "Numbers/one.png");
            $('[name="imgThree"]').attr("alt", "1");
        }
        else if (newGameArray[2] == "2") {
            $('[name="imgThree"]').attr("src", "Numbers/two.png");
            $('[name="imgThree"]').attr("alt", "2");
        }
        else if (newGameArray[2] == "3") {
            $('[name="imgThree"]').attr("src", "Numbers/three.png");
            $('[name="imgThree"]').attr("alt", "3");
        }
        else if (newGameArray[2] == "4") {
            $('[name="imgThree"]').attr("src", "Numbers/four.png");
            $('[name="imgThree"]').attr("alt", "4");
        }
        else if (newGameArray[2] == "5") {
            $('[name="imgThree"]').attr("src", "Numbers/five.png");
            $('[name="imgThree"]').attr("alt", "5");
        }
        else if (newGameArray[2] == "6") {
            $('[name="imgThree"]').attr("src", "Numbers/six.png");
            $('[name="imgThree"]').attr("alt", "6");
        }
        else if (newGameArray[2] == "7") {
            $('[name="imgThree"]').attr("src", "Numbers/seven.png");
            $('[name="imgThree"]').attr("alt", "7");
        }
        else if (newGameArray[2] == "8") {
            $('[name="imgThree"]').attr("src", "Numbers/eight.png");
            $('[name="imgThree"]').attr("alt", "8");
        }
        else if (newGameArray[2] == "9") {
            $('[name="imgThree"]').attr("src", "Numbers/nine.png");
            $('[name="imgThree"]').attr("alt", "9");
        }
        else if (newGameArray[2] == "10") {
            $('[name="imgThree"]').attr("src", "Numbers/ten.png");
            $('[name="imgThree"]').attr("alt", "10");
        }
        else if (newGameArray[2] == "11") {
            $('[name="imgThree"]').attr("src", "Numbers/eleven.png");
            $('[name="imgThree"]').attr("alt", "11");
        }
        else if (newGameArray[2] == "12") {
            $('[name="imgThree"]').attr("src", "Numbers/twelve.png");
            $('[name="imgThree"]').attr("alt", "12");
        }
        else if (newGameArray[2] == "13") {
            $('[name="imgThree"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgThree"]').attr("alt", "13");
        }
        else if (newGameArray[2] == "14") {
            $('[name="imgThree"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgThree"]').attr("alt", "14");
        }
        else if (newGameArray[2] == "15") {
            $('[name="imgThree"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgThree"]').attr("alt", "15");
        }
        //element 4
        if (newGameArray[3] == "1") {
            $('[name="imgFour"]').attr("src", "Numbers/one.png");
            $('[name="imgFour"]').attr("alt", "1");
        }
        else if (newGameArray[3] == "2") {
            $('[name="imgFour"]').attr("src", "Numbers/two.png");
            $('[name="imgFour"]').attr("alt", "2");
        }
        else if (newGameArray[3] == "3") {
            $('[name="imgFour"]').attr("src", "Numbers/three.png");
            $('[name="imgFour"]').attr("alt", "3");
        }
        else if (newGameArray[3] == "4") {
            $('[name="imgFour"]').attr("src", "Numbers/four.png");
            $('[name="imgFour"]').attr("alt", "4");
        }
        else if (newGameArray[3] == "5") {
            $('[name="imgFour"]').attr("src", "Numbers/five.png");
            $('[name="imgFour"]').attr("alt", "5");
        }
        else if (newGameArray[3] == "6") {
            $('[name="imgFour"]').attr("src", "Numbers/six.png");
            $('[name="imgFour"]').attr("alt", "6");
        }
        else if (newGameArray[3] == "7") {
            $('[name="imgFour"]').attr("src", "Numbers/seven.png");
            $('[name="imgFour"]').attr("alt", "7");
        }
        else if (newGameArray[3] == "8") {
            $('[name="imgFour"]').attr("src", "Numbers/eight.png");
            $('[name="imgFour"]').attr("alt", "8");
        }
        else if (newGameArray[3] == "9") {
            $('[name="imgFour"]').attr("src", "Numbers/nine.png");
            $('[name="imgFour"]').attr("alt", "9");
        }
        else if (newGameArray[3] == "10") {
            $('[name="imgFour"]').attr("src", "Numbers/ten.png");
            $('[name="imgFour"]').attr("alt", "10");
        }
        else if (newGameArray[3] == "11") {
            $('[name="imgFour"]').attr("src", "Numbers/eleven.png");
            $('[name="imgFour"]').attr("alt", "11");
        }
        else if (newGameArray[3] == "12") {
            $('[name="imgFour"]').attr("src", "Numbers/twelve.png");
            $('[name="imgFour"]').attr("alt", "12");
        }
        else if (newGameArray[3] == "13") {
            $('[name="imgFour"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgFour"]').attr("alt", "13");
        }
        else if (newGameArray[3] == "14") {
            $('[name="imgFour"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgFour"]').attr("alt", "14");
        }
        else if (newGameArray[3] == "15") {
            $('[name="imgFour"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgFour"]').attr("alt", "15");
        }
        //element 5
        if (newGameArray[4] == "1") {
            $('[name="imgFive"]').attr("src", "Numbers/one.png");
            $('[name="imgFive"]').attr("alt", "1");
        }
        else if (newGameArray[4] == "2") {
            $('[name="imgFive"]').attr("src", "Numbers/two.png");
            $('[name="imgFive"]').attr("alt", "2");
        }
        else if (newGameArray[4] == "3") {
            $('[name="imgFive"]').attr("src", "Numbers/three.png");
            $('[name="imgFive"]').attr("alt", "3");
        }
        else if (newGameArray[4] == "4") {
            $('[name="imgFive"]').attr("src", "Numbers/four.png");
            $('[name="imgFive"]').attr("alt", "4");
        }
        else if (newGameArray[4] == "5") {
            $('[name="imgFive"]').attr("src", "Numbers/five.png");
            $('[name="imgFive"]').attr("alt", "5");
        }
        else if (newGameArray[4] == "6") {
            $('[name="imgFive"]').attr("src", "Numbers/six.png");
            $('[name="imgFive"]').attr("alt", "6");
        }
        else if (newGameArray[4] == "7") {
            $('[name="imgFive"]').attr("src", "Numbers/seven.png");
            $('[name="imgFive"]').attr("alt", "7");
        }
        else if (newGameArray[4] == "8") {
            $('[name="imgFive"]').attr("src", "Numbers/eight.png");
            $('[name="imgFive"]').attr("alt", "8");
        }
        else if (newGameArray[4] == "9") {
            $('[name="imgFive"]').attr("src", "Numbers/nine.png");
            $('[name="imgFive"]').attr("alt", "9");
        }
        else if (newGameArray[4] == "10") {
            $('[name="imgFive"]').attr("src", "Numbers/ten.png");
            $('[name="imgFive"]').attr("alt", "10");
        }
        else if (newGameArray[4] == "11") {
            $('[name="imgFive"]').attr("src", "Numbers/eleven.png");
            $('[name="imgFive"]').attr("alt", "11");
        }
        else if (newGameArray[4] == "12") {
            $('[name="imgFive"]').attr("src", "Numbers/twelve.png");
            $('[name="imgFive"]').attr("alt", "12");
        }
        else if (newGameArray[4] == "13") {
            $('[name="imgFive"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgFive"]').attr("alt", "13");
        }
        else if (newGameArray[4] == "14") {
            $('[name="imgFive"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgFive"]').attr("alt", "14");
        }
        else if (newGameArray[4] == "15") {
            $('[name="imgFive"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgFive"]').attr("alt", "15");
        }
        //element 6
        if (newGameArray[5] == "1") {
            $('[name="imgSix"]').attr("src", "Numbers/one.png");
            $('[name="imgSix"]').attr("alt", "1");
        }
        else if (newGameArray[5] == "2") {
            $('[name="imgSix"]').attr("src", "Numbers/two.png");
            $('[name="imgSix"]').attr("alt", "2");
        }
        else if (newGameArray[5] == "3") {
            $('[name="imgSix"]').attr("src", "Numbers/three.png");
            $('[name="imgSix"]').attr("alt", "3");
        }
        else if (newGameArray[5] == "4") {
            $('[name="imgSix"]').attr("src", "Numbers/four.png");
            $('[name="imgSix"]').attr("alt", "4");
        }
        else if (newGameArray[5] == "5") {
            $('[name="imgSix"]').attr("src", "Numbers/five.png");
            $('[name="imgSix"]').attr("alt", "5");
        }
        else if (newGameArray[5] == "6") {
            $('[name="imgSix"]').attr("src", "Numbers/six.png");
            $('[name="imgSix"]').attr("alt", "6");
        }
        else if (newGameArray[5] == "7") {
            $('[name="imgSix"]').attr("src", "Numbers/seven.png");
            $('[name="imgSix"]').attr("alt", "7");
        }
        else if (newGameArray[5] == "8") {
            $('[name="imgSix"]').attr("src", "Numbers/eight.png");
            $('[name="imgSix"]').attr("alt", "8");
        }
        else if (newGameArray[5] == "9") {
            $('[name="imgSix"]').attr("src", "Numbers/nine.png");
            $('[name="imgSix"]').attr("alt", "9");
        }
        else if (newGameArray[5] == "10") {
            $('[name="imgSix"]').attr("src", "Numbers/ten.png");
            $('[name="imgSix"]').attr("alt", "10");
        }
        else if (newGameArray[5] == "11") {
            $('[name="imgSix"]').attr("src", "Numbers/eleven.png");
            $('[name="imgSix"]').attr("alt", "11");
        }
        else if (newGameArray[5] == "12") {
            $('[name="imgSix"]').attr("src", "Numbers/twelve.png");
            $('[name="imgSix"]').attr("alt", "12");
        }
        else if (newGameArray[5] == "13") {
            $('[name="imgSix"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgSix"]').attr("alt", "13");
        }
        else if (newGameArray[5] == "14") {
            $('[name="imgSix"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgSix"]').attr("alt", "14");
        }
        else if (newGameArray[5] == "15") {
            $('[name="imgSix"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgSix"]').attr("alt", "15");
        }
        //element 7
        if (newGameArray[6] == "1") {
            $('[name="imgSeven"]').attr("src", "Numbers/one.png");
            $('[name="imgSeven"]').attr("alt", "1");
        }
        else if (newGameArray[6] == "2") {
            $('[name="imgSeven"]').attr("src", "Numbers/two.png");
            $('[name="imgSeven"]').attr("alt", "2");
        }
        else if (newGameArray[6] == "3") {
            $('[name="imgSeven"]').attr("src", "Numbers/three.png");
            $('[name="imgSeven"]').attr("alt", "3");
        }
        else if (newGameArray[6] == "4") {
            $('[name="imgSeven"]').attr("src", "Numbers/four.png");
            $('[name="imgSeven"]').attr("alt", "4");
        }
        else if (newGameArray[6] == "5") {
            $('[name="imgSeven"]').attr("src", "Numbers/five.png");
            $('[name="imgSeven"]').attr("alt", "5");
        }
        else if (newGameArray[6] == "6") {
            $('[name="imgSeven"]').attr("src", "Numbers/six.png");
            $('[name="imgSeven"]').attr("alt", "6");
        }
        else if (newGameArray[6] == "7") {
            $('[name="imgSeven"]').attr("src", "Numbers/seven.png");
            $('[name="imgSeven"]').attr("alt", "7");
        }
        else if (newGameArray[6] == "8") {
            $('[name="imgSeven"]').attr("src", "Numbers/eight.png");
            $('[name="imgSeven"]').attr("alt", "8");
        }
        else if (newGameArray[6] == "9") {
            $('[name="imgSeven"]').attr("src", "Numbers/nine.png");
            $('[name="imgSeven"]').attr("alt", "9");
        }
        else if (newGameArray[6] == "10") {
            $('[name="imgSeven"]').attr("src", "Numbers/ten.png");
            $('[name="imgSeven"]').attr("alt", "10");
        }
        else if (newGameArray[6] == "11") {
            $('[name="imgSeven"]').attr("src", "Numbers/eleven.png");
            $('[name="imgSeven"]').attr("alt", "11");
        }
        else if (newGameArray[6] == "12") {
            $('[name="imgSeven"]').attr("src", "Numbers/twelve.png");
            $('[name="imgSeven"]').attr("alt", "12");
        }
        else if (newGameArray[6] == "13") {
            $('[name="imgSeven"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgSeven"]').attr("alt", "13");
        }
        else if (newGameArray[6] == "14") {
            $('[name="imgSeven"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgSeven"]').attr("alt", "14");
        }
        else if (newGameArray[6] == "15") {
            $('[name="imgSeven"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgSeven"]').attr("alt", "15");
        }
        //element 8
        if (newGameArray[7] == "1") {
            $('[name="imgEight"]').attr("src", "Numbers/one.png");
            $('[name="imgEight"]').attr("alt", "1");
        }
        else if (newGameArray[7] == "2") {
            $('[name="imgEight"]').attr("src", "Numbers/two.png");
            $('[name="imgEight"]').attr("alt", "2");
        }
        else if (newGameArray[7] == "3") {
            $('[name="imgEight"]').attr("src", "Numbers/three.png");
            $('[name="imgEight"]').attr("alt", "3");
        }
        else if (newGameArray[7] == "4") {
            $('[name="imgEight"]').attr("src", "Numbers/four.png");
            $('[name="imgEight"]').attr("alt", "4");
        }
        else if (newGameArray[7] == "5") {
            $('[name="imgEight"]').attr("src", "Numbers/five.png");
            $('[name="imgEight"]').attr("alt", "5");
        }
        else if (newGameArray[7] == "6") {
            $('[name="imgEight"]').attr("src", "Numbers/six.png");
            $('[name="imgEight"]').attr("alt", "6");
        }
        else if (newGameArray[7] == "7") {
            $('[name="imgEight"]').attr("src", "Numbers/seven.png");
            $('[name="imgEight"]').attr("alt", "7");
        }
        else if (newGameArray[7] == "8") {
            $('[name="imgEight"]').attr("src", "Numbers/eight.png");
            $('[name="imgEight"]').attr("alt", "8");
        }
        else if (newGameArray[7] == "9") {
            $('[name="imgEight"]').attr("src", "Numbers/nine.png");
            $('[name="imgEight"]').attr("alt", "9");
        }
        else if (newGameArray[7] == "10") {
            $('[name="imgEight"]').attr("src", "Numbers/ten.png");
            $('[name="imgEight"]').attr("alt", "10");
        }
        else if (newGameArray[7] == "11") {
            $('[name="imgEight"]').attr("src", "Numbers/eleven.png");
            $('[name="imgEight"]').attr("alt", "11");
        }
        else if (newGameArray[7] == "12") {
            $('[name="imgEight"]').attr("src", "Numbers/twelve.png");
            $('[name="imgEight"]').attr("alt", "12");
        }
        else if (newGameArray[7] == "13") {
            $('[name="imgEight"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgEight"]').attr("alt", "13");
        }
        else if (newGameArray[7] == "14") {
            $('[name="imgEight"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgEight"]').attr("alt", "14");
        }
        else if (newGameArray[7] == "15") {
            $('[name="imgEight"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgEight"]').attr("alt", "15");
        }
        //element 9
        if (newGameArray[8] == "1") {
            $('[name="imgNine"]').attr("src", "Numbers/one.png");
            $('[name="imgNine"]').attr("alt", "1");
        }
        else if (newGameArray[8] == "2") {
            $('[name="imgNine"]').attr("src", "Numbers/two.png");
            $('[name="imgNine"]').attr("alt", "2");
        }
        else if (newGameArray[8] == "3") {
            $('[name="imgNine"]').attr("src", "Numbers/three.png");
            $('[name="imgNine"]').attr("alt", "3");
        }
        else if (newGameArray[8] == "4") {
            $('[name="imgNine"]').attr("src", "Numbers/four.png");
            $('[name="imgNine"]').attr("alt", "4");
        }
        else if (newGameArray[8] == "5") {
            $('[name="imgNine"]').attr("src", "Numbers/five.png");
            $('[name="imgNine"]').attr("alt", "5");
        }
        else if (newGameArray[8] == "6") {
            $('[name="imgNine"]').attr("src", "Numbers/six.png");
            $('[name="imgNine"]').attr("alt", "6");
        }
        else if (newGameArray[8] == "7") {
            $('[name="imgNine"]').attr("src", "Numbers/seven.png");
            $('[name="imgNine"]').attr("alt", "7");
        }
        else if (newGameArray[8] == "8") {
            $('[name="imgNine"]').attr("src", "Numbers/eight.png");
            $('[name="imgNine"]').attr("alt", "8");
        }
        else if (newGameArray[8] == "9") {
            $('[name="imgNine"]').attr("src", "Numbers/nine.png");
            $('[name="imgNine"]').attr("alt", "9");
        }
        else if (newGameArray[8] == "10") {
            $('[name="imgNine"]').attr("src", "Numbers/ten.png");
            $('[name="imgNine"]').attr("alt", "10");
        }
        else if (newGameArray[8] == "11") {
            $('[name="imgNine"]').attr("src", "Numbers/eleven.png");
            $('[name="imgNine"]').attr("alt", "11");
        }
        else if (newGameArray[8] == "12") {
            $('[name="imgNine"]').attr("src", "Numbers/twelve.png");
            $('[name="imgNine"]').attr("alt", "12");
        }
        else if (newGameArray[8] == "13") {
            $('[name="imgNine"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgNine"]').attr("alt", "13");
        }
        else if (newGameArray[8] == "14") {
            $('[name="imgNine"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgNine"]').attr("alt", "14");
        }
        else if (newGameArray[8] == "15") {
            $('[name="imgNine"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgNine"]').attr("alt", "15");
        }
        //element 10
        if (newGameArray[9] == "1") {
            $('[name="imgTen"]').attr("src", "Numbers/one.png");
            $('[name="imgTen"]').attr("alt", "1");
        }
        else if (newGameArray[9] == "2") {
            $('[name="imgTen"]').attr("src", "Numbers/two.png");
            $('[name="imgTen"]').attr("alt", "2");
        }
        else if (newGameArray[9] == "3") {
            $('[name="imgTen"]').attr("src", "Numbers/three.png");
            $('[name="imgTen"]').attr("alt", "3");
        }
        else if (newGameArray[9] == "4") {
            $('[name="imgTen"]').attr("src", "Numbers/four.png");
            $('[name="imgTen"]').attr("alt", "4");
        }
        else if (newGameArray[9] == "5") {
            $('[name="imgTen"]').attr("src", "Numbers/five.png");
            $('[name="imgTen"]').attr("alt", "5");
        }
        else if (newGameArray[9] == "6") {
            $('[name="imgTen"]').attr("src", "Numbers/six.png");
            $('[name="imgTen"]').attr("alt", "6");
        }
        else if (newGameArray[9] == "7") {
            $('[name="imgTen"]').attr("src", "Numbers/seven.png");
            $('[name="imgTen"]').attr("alt", "7");
        }
        else if (newGameArray[9] == "8") {
            $('[name="imgTen"]').attr("src", "Numbers/eight.png");
            $('[name="imgTen"]').attr("alt", "8");
        }
        else if (newGameArray[9] == "9") {
            $('[name="imgTen"]').attr("src", "Numbers/nine.png");
            $('[name="imgTen"]').attr("alt", "9");
        }
        else if (newGameArray[9] == "10") {
            $('[name="imgTen"]').attr("src", "Numbers/ten.png");
            $('[name="imgTen"]').attr("alt", "10");
        }
        else if (newGameArray[9] == "11") {
            $('[name="imgTen"]').attr("src", "Numbers/eleven.png");
            $('[name="imgTen"]').attr("alt", "11");
        }
        else if (newGameArray[9] == "12") {
            $('[name="imgTen"]').attr("src", "Numbers/twelve.png");
            $('[name="imgTen"]').attr("alt", "12");
        }
        else if (newGameArray[9] == "13") {
            $('[name="imgTen"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgTen"]').attr("alt", "13");
        }
        else if (newGameArray[9] == "14") {
            $('[name="imgTen"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgTen"]').attr("alt", "14");
        }
        else if (newGameArray[9] == "15") {
            $('[name="imgTen"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgTen"]').attr("alt", "15");
        }
        //element 11
        if (newGameArray[10] == "1") {
            $('[name="imgEleven"]').attr("src", "Numbers/one.png");
            $('[name="imgEleven"]').attr("alt", "1");
        }
        else if (newGameArray[10] == "2") {
            $('[name="imgEleven"]').attr("src", "Numbers/two.png");
            $('[name="imgEleven"]').attr("alt", "2");
        }
        else if (newGameArray[10] == "3") {
            $('[name="imgEleven"]').attr("src", "Numbers/three.png");
            $('[name="imgEleven"]').attr("alt", "3");
        }
        else if (newGameArray[10] == "4") {
            $('[name="imgEleven"]').attr("src", "Numbers/four.png");
            $('[name="imgEleven"]').attr("alt", "4");
        }
        else if (newGameArray[10] == "5") {
            $('[name="imgEleven"]').attr("src", "Numbers/five.png");
            $('[name="imgEleven"]').attr("alt", "5");
        }
        else if (newGameArray[10] == "6") {
            $('[name="imgEleven"]').attr("src", "Numbers/six.png");
            $('[name="imgEleven"]').attr("alt", "6");
        }
        else if (newGameArray[10] == "7") {
            $('[name="imgEleven"]').attr("src", "Numbers/seven.png");
            $('[name="imgEleven"]').attr("alt", "7");
        }
        else if (newGameArray[10] == "8") {
            $('[name="imgEleven"]').attr("src", "Numbers/eight.png");
            $('[name="imgEleven"]').attr("alt", "8");
        }
        else if (newGameArray[10] == "9") {
            $('[name="imgEleven"]').attr("src", "Numbers/nine.png");
            $('[name="imgEleven"]').attr("alt", "9");
        }
        else if (newGameArray[10] == "10") {
            $('[name="imgEleven"]').attr("src", "Numbers/ten.png");
            $('[name="imgEleven"]').attr("alt", "10");
        }
        else if (newGameArray[10] == "11") {
            $('[name="imgEleven"]').attr("src", "Numbers/eleven.png");
            $('[name="imgEleven"]').attr("alt", "11");
        }
        else if (newGameArray[10] == "12") {
            $('[name="imgEleven"]').attr("src", "Numbers/twelve.png");
            $('[name="imgEleven"]').attr("alt", "12");
        }
        else if (newGameArray[10] == "13") {
            $('[name="imgEleven"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgEleven"]').attr("alt", "13");
        }
        else if (newGameArray[10] == "14") {
            $('[name="imgEleven"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgEleven"]').attr("alt", "14");
        }
        else if (newGameArray[10] == "15") {
            $('[name="imgEleven"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgEleven"]').attr("alt", "15");
        }
        //element 12
        if (newGameArray[11] == "1") {
            $('[name="imgTwelve"]').attr("src", "Numbers/one.png");
            $('[name="imgTwelve"]').attr("alt", "1");
        }
        else if (newGameArray[11] == "2") {
            $('[name="imgTwelve"]').attr("src", "Numbers/two.png");
            $('[name="imgTwelve"]').attr("alt", "2");
        }
        else if (newGameArray[11] == "3") {
            $('[name="imgTwelve"]').attr("src", "Numbers/three.png");
            $('[name="imgTwelve"]').attr("alt", "3");
        }
        else if (newGameArray[11] == "4") {
            $('[name="imgTwelve"]').attr("src", "Numbers/four.png");
            $('[name="imgTwelve"]').attr("alt", "4");
        }
        else if (newGameArray[11] == "5") {
            $('[name="imgTwelve"]').attr("src", "Numbers/five.png");
            $('[name="imgTwelve"]').attr("alt", "5");
        }
        else if (newGameArray[11] == "6") {
            $('[name="imgTwelve"]').attr("src", "Numbers/six.png");
            $('[name="imgTwelve"]').attr("alt", "6");
        }
        else if (newGameArray[11] == "7") {
            $('[name="imgTwelve"]').attr("src", "Numbers/seven.png");
            $('[name="imgTwelve"]').attr("alt", "7");
        }
        else if (newGameArray[11] == "8") {
            $('[name="imgTwelve"]').attr("src", "Numbers/eight.png");
            $('[name="imgTwelve"]').attr("alt", "8");
        }
        else if (newGameArray[11] == "9") {
            $('[name="imgTwelve"]').attr("src", "Numbers/nine.png");
            $('[name="imgTwelve"]').attr("alt", "9");
        }
        else if (newGameArray[11] == "10") {
            $('[name="imgTwelve"]').attr("src", "Numbers/ten.png");
            $('[name="imgTwelve"]').attr("alt", "10");
        }
        else if (newGameArray[11] == "11") {
            $('[name="imgTwelve"]').attr("src", "Numbers/eleven.png");
            $('[name="imgTwelve"]').attr("alt", "11");
        }
        else if (newGameArray[11] == "12") {
            $('[name="imgTwelve"]').attr("src", "Numbers/twelve.png");
            $('[name="imgTwelve"]').attr("alt", "12");
        }
        else if (newGameArray[11] == "13") {
            $('[name="imgTwelve"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgTwelve"]').attr("alt", "13");
        }
        else if (newGameArray[11] == "14") {
            $('[name="imgTwelve"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgTwelve"]').attr("alt", "14");
        }
        else if (newGameArray[11] == "15") {
            $('[name="imgTwelve"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgTwelve"]').attr("alt", "15");
        }
        //element 13
        if (newGameArray[12] == "1") {
            $('[name="imgThirteen"]').attr("src", "Numbers/one.png");
            $('[name="imgThirteen"]').attr("alt", "1");
        }
        else if (newGameArray[12] == "2") {
            $('[name="imgThirteen"]').attr("src", "Numbers/two.png");
            $('[name="imgThirteen"]').attr("alt", "2");
        }
        else if (newGameArray[12] == "3") {
            $('[name="imgThirteen"]').attr("src", "Numbers/three.png");
            $('[name="imgThirteen"]').attr("alt", "3");
        }
        else if (newGameArray[12] == "4") {
            $('[name="imgThirteen"]').attr("src", "Numbers/four.png");
            $('[name="imgThirteen"]').attr("alt", "4");
        }
        else if (newGameArray[12] == "5") {
            $('[name="imgThirteen"]').attr("src", "Numbers/five.png");
            $('[name="imgThirteen"]').attr("alt", "5");
        }
        else if (newGameArray[12] == "6") {
            $('[name="imgThirteen"]').attr("src", "Numbers/six.png");
            $('[name="imgThirteen"]').attr("alt", "6");
        }
        else if (newGameArray[12] == "7") {
            $('[name="imgThirteen"]').attr("src", "Numbers/seven.png");
            $('[name="imgThirteen"]').attr("alt", "7");
        }
        else if (newGameArray[12] == "8") {
            $('[name="imgThirteen"]').attr("src", "Numbers/eight.png");
            $('[name="imgThirteen"]').attr("alt", "8");
        }
        else if (newGameArray[12] == "9") {
            $('[name="imgThirteen"]').attr("src", "Numbers/nine.png");
            $('[name="imgThirteen"]').attr("alt", "9");
        }
        else if (newGameArray[12] == "10") {
            $('[name="imgThirteen"]').attr("src", "Numbers/ten.png");
            $('[name="imgThirteen"]').attr("alt", "10");
        }
        else if (newGameArray[12] == "11") {
            $('[name="imgThirteen"]').attr("src", "Numbers/eleven.png");
            $('[name="imgThirteen"]').attr("alt", "11");
        }
        else if (newGameArray[12] == "12") {
            $('[name="imgThirteen"]').attr("src", "Numbers/twelve.png");
            $('[name="imgThirteen"]').attr("alt", "12");
        }
        else if (newGameArray[12] == "13") {
            $('[name="imgThirteen"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgThirteen"]').attr("alt", "13");
        }
        else if (newGameArray[12] == "14") {
            $('[name="imgThirteen"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgThirteen"]').attr("alt", "14");
        }
        else if (newGameArray[12] == "15") {
            $('[name="imgThirteen"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgThirteen"]').attr("alt", "15");
        }
        //element 14
        if (newGameArray[13] == "1") {
            $('[name="imgFourteen"]').attr("src", "Numbers/one.png");
            $('[name="imgFourteen"]').attr("alt", "1");
        }
        else if (newGameArray[13] == "2") {
            $('[name="imgFourteen"]').attr("src", "Numbers/two.png");
            $('[name="imgFourteen"]').attr("alt", "2");
        }
        else if (newGameArray[13] == "3") {
            $('[name="imgFourteen"]').attr("src", "Numbers/three.png");
            $('[name="imgFourteen"]').attr("alt", "3");
        }
        else if (newGameArray[13] == "4") {
            $('[name="imgFourteen"]').attr("src", "Numbers/four.png");
            $('[name="imgFourteen"]').attr("alt", "4");
        }
        else if (newGameArray[13] == "5") {
            $('[name="imgFourteen"]').attr("src", "Numbers/five.png");
            $('[name="imgFourteen"]').attr("alt", "5");
        }
        else if (newGameArray[13] == "6") {
            $('[name="imgFourteen"]').attr("src", "Numbers/six.png");
            $('[name="imgFourteen"]').attr("alt", "6");
        }
        else if (newGameArray[13] == "7") {
            $('[name="imgFourteen"]').attr("src", "Numbers/seven.png");
            $('[name="imgFourteen"]').attr("alt", "7");
        }
        else if (newGameArray[13] == "8") {
            $('[name="imgFourteen"]').attr("src", "Numbers/eight.png");
            $('[name="imgFourteen"]').attr("alt", "8");
        }
        else if (newGameArray[13] == "9") {
            $('[name="imgFourteen"]').attr("src", "Numbers/nine.png");
            $('[name="imgFourteen"]').attr("alt", "9");
        }
        else if (newGameArray[13] == "10") {
            $('[name="imgFourteen"]').attr("src", "Numbers/ten.png");
            $('[name="imgFourteen"]').attr("alt", "10");
        }
        else if (newGameArray[13] == "11") {
            $('[name="imgFourteen"]').attr("src", "Numbers/eleven.png");
            $('[name="imgFourteen"]').attr("alt", "11");
        }
        else if (newGameArray[13] == "12") {
            $('[name="imgFourteen"]').attr("src", "Numbers/twelve.png");
            $('[name="imgFourteen"]').attr("alt", "12");
        }
        else if (newGameArray[13] == "13") {
            $('[name="imgFourteen"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgFourteen"]').attr("alt", "13");
        }
        else if (newGameArray[13] == "14") {
            $('[name="imgFourteen"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgFourteen"]').attr("alt", "14");
        }
        else if (newGameArray[13] == "15") {
            $('[name="imgFourteen"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgFourteen"]').attr("alt", "15");
        }
        // element  15
        if (newGameArray[14] == "1") {
            $('[name="imgFifteen"]').attr("src", "Numbers/one.png");
            $('[name="imgFifteen"]').attr("alt", "1");
        }
        else if (newGameArray[14] == "2") {
            $('[name="imgFifteen"]').attr("src", "Numbers/two.png");
            $('[name="imgFifteen"]').attr("alt", "2");
        }
        else if (newGameArray[14] == "3") {
            $('[name="imgFifteen"]').attr("src", "Numbers/three.png");
            $('[name="imgFifteen"]').attr("alt", "3");
        }
        else if (newGameArray[14] == "4") {
            $('[name="imgFifteen"]').attr("src", "Numbers/four.png");
            $('[name="imgFifteen"]').attr("alt", "4");
        }
        else if (newGameArray[14] == "5") {
            $('[name="imgFifteen"]').attr("src", "Numbers/five.png");
            $('[name="imgFifteen"]').attr("alt", "5");
        }
        else if (newGameArray[14] == "6") {
            $('[name="imgFifteen"]').attr("src", "Numbers/six.png");
            $('[name="imgFifteen"]').attr("alt", "6");
        }
        else if (newGameArray[14] == "7") {
            $('[name="imgFifteen"]').attr("src", "Numbers/seven.png");
            $('[name="imgFifteen"]').attr("alt", "7");
        }
        else if (newGameArray[14] == "8") {
            $('[name="imgFifteen"]').attr("src", "Numbers/eight.png");
            $('[name="imgFifteen"]').attr("alt", "8");
        }
        else if (newGameArray[14] == "9") {
            $('[name="imgFifteen"]').attr("src", "Numbers/nine.png");
            $('[name="imgFifteen"]').attr("alt", "9");
        }
        else if (newGameArray[14] == "10") {
            $('[name="imgFifteen"]').attr("src", "Numbers/ten.png");
            $('[name="imgFifteen"]').attr("alt", "10");
        }
        else if (newGameArray[14] == "11") {
            $('[name="imgFifteen"]').attr("src", "Numbers/eleven.png");
            $('[name="imgFifteen"]').attr("alt", "11");
        }
        else if (newGameArray[14] == "12") {
            $('[name="imgFifteen"]').attr("src", "Numbers/twelve.png");
            $('[name="imgFifteen"]').attr("alt", "12");
        }
        else if (newGameArray[14] == "13") {
            $('[name="imgFifteen"]').attr("src", "Numbers/thirteen.png");
            $('[name="imgFifteen"]').attr("alt", "13");
        }
        else if (newGameArray[14] == "14") {
            $('[name="imgFifteen"]').attr("src", "Numbers/fourteen.png");
            $('[name="imgFifteen"]').attr("alt", "14");
        }
        else if (newGameArray[14] == "15") {
            $('[name="imgFifteen"]').attr("src", "Numbers/fifteen.png");
            $('[name="imgFifteen"]').attr("alt", "15");
        }

        $('[name="imgSixteen"]').attr("src", "Numbers/none.png");
        $('[name="imgSixteen"]').attr("alt", "16");

        $('[name="imgOne"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgTwo"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgThree"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgFour"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgFive"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgSix"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgSeven"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgEight"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgNine"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgTen"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgEleven"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgTwelve"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgThirteen"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgFourteen"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgFifteen"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");
        $('[name="imgSixteen"]').parent().attr("onclick", "move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));");





    }

    function stopGame() {
        endg = new Date();

        $('[name="btnStopGame"]').prop('disabled', true);
        $('[name="btnStartGame"]').prop('disabled', false);

        $('[name="statisticspanel"]').css("display", "block");

        var nofm;
        if (sessionStorage.getItem("movenum") != null)
            nofm = sessionStorage.getItem("movenum");
        else
            nofm = "0";

        var millisecondsg = endg - startg;

        var secondsg = (millisecondsg / 1000) % 60;
        var minutesg = ((millisecondsg / (1000 * 60)) % 60);
        var hoursg = ((millisecondsg / (1000 * 60 * 60)) % 24);

        if (gameWon == "False") {
            $('[name="statdetails"]').html("<div class=\"panel\"><div class=\"panel-header\">NUMBER OF MOVES:</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\">" + nofm + "</font><input type=\"hidden\" name=\"fnumberofmoves\" value=\"" + nofm + "\"><input type=\"hidden\" name=\"fseconds\" value=\"" + secondsg + "\"><input type=\"hidden\" name=\"fminutes\" value=\"" + minutesg + "\"><input type=\"hidden\" name=\"fhours\" value=\"" + hoursg + "\"></div></div>       <div class=\"panel\"><div class=\"panel-header\">TIME TAKEN:</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\">" + Math.floor(hoursg) + "</font> HOURS <font style=\"color:red; font-size:30px\">" + Math.floor(minutesg) + "</font> MINUTES <font style=\"color:red; font-size:30px\">" + Math.floor(secondsg) + "</font> SECONDS </div></div>    <div class=\"panel\"><div class=\"panel-header\">SAVE STATS FOR LATER</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\"><div class=\"input-control text\" data-role=\"input-control\"><input type=\"text\" name=\"gameName\" id=\"gameName\" placeholder=\"type game name\" style=\"color:blue\"></div><input type=\"submit\" name=\"submitButtonM\" id=\"submitButtonM\" value=\"SAVE STATS\" class=\"m-btn red fg-white\" style =\"width:150px; height:46px\"></font></div></div>       ");
        }
        else if (gameWon == "True") {
            $('[name="statdetails"]').html("<div class=\"panel\"><div class=\"panel-header\">GAME WON !!  NUMBER OF MOVES:</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\">" + nofm + "</font><input type=\"hidden\" name=\"fnumberofmoves\" value=\"" + nofm + "\"><input type=\"hidden\" name=\"fseconds\" value=\"" + secondsg + "\"><input type=\"hidden\" name=\"fminutes\" value=\"" + minutesg + "\"><input type=\"hidden\" name=\"fhours\" value=\"" + hoursg + "\"></div></div>       <div class=\"panel\"><div class=\"panel-header\">GAME WON !!!!!!!!!!!!!!!!!!!! TIME TOOK:</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\">" + Math.floor(hoursg) + "</font> HOURS <font style=\"color:red; font-size:30px\">" + Math.floor(minutesg) + "</font> MINUTES <font style=\"color:red; font-size:30px\">" + Math.floor(secondsg) + "</font> SECONDS </div></div>    <div class=\"panel\"><div class=\"panel-header\">SAVE STATS FOR LATER</div><div class=\"panel-content\"><font style=\"color:red; font-size:30px\"><div class=\"input-control text\" data-role=\"input-control\"><input type=\"text\" name=\"gameName\" id=\"gameName\" placeholder=\"type game name\" style=\"color:blue\"></div><input type=\"submit\" name=\"submitButtonM\" id=\"submitButtonM\" value=\"SAVE STATS\" class=\"m-btn red fg-white\" style =\"width:150px; height:46px\"></font></div></div>       ");
        }




        $('[name="one"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"  style=\"width: 120px; height: 120px;\" name=\"imgOne\" ></a>")
        $('[name="two"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"  style=\"width: 120px; height: 120px;\" name=\"imgTwo\"></a>");
        $('[name="three"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   style=\"width: 120px; height: 120px;\" name=\"imgThree\" ></a>");
        $('[name="four"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   style=\"width: 120px; height: 120px;\" name=\"imgFour\" ></a>");
        $('[name="five"]').html("<a href=\"#\"><img src=\"Numbers/none.png\"  class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgFive\" ></a>");
        $('[name="six"]').html("<a href=\"#\"><img  src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgSix\" ></a>");
        $('[name="seven"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgSeven\" ></a>");
        $('[name="eight"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgEight\" ></a>");
        $('[name="nine"]').html("<a href=\"#\"><img src=\"Numbers/none.png\"  class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgNine\"></a>");
        $('[name="ten"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgTen\" ></a>");
        $('[name="eleven"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgEleven\"></a>");
        $('[name="twelve"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgTwelve\" ></a>");
        $('[name="thirteen"]').html("<a href=\"#\" ><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   style=\"width: 120px; height: 120px;\" name=\"imgThirteen\" ></a>");
        $('[name="fourteen"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgFourteen\" ></a>");
        $('[name="fifteen"]').html("<a href=\"#\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgFifteen\" ></a>");
        $('[name="sixteen"]').html("<a href=\"#\"><img src=\"Numbers/none.png\"  class=\"rounded polaroid\"    style=\"width: 120px; height: 120px;\" name=\"imgSixteen\"></a>");





        sessionStorage.clear();


    }

    function generateRandomNumbers() {

        var myrandomarray = [];

        var numbers = [];
        numbers.push(1);
        numbers.push(2);
        numbers.push(3);
        numbers.push(4);
        numbers.push(5);
        numbers.push(6);
        numbers.push(7);
        numbers.push(8);
        numbers.push(9);
        numbers.push(10);
        numbers.push(11);
        numbers.push(12);
        numbers.push(13);
        numbers.push(14);
        numbers.push(15);

        for (var i = 0; i < 15; i++) {

            var randomnumber = Math.floor((Math.random() * (15 - i)) + 0);
            myrandomarray.push(numbers[randomnumber].toString());
            numbers.splice(randomnumber, 1);
        }

        return myrandomarray;
    }

    function move(parentnumber, altpressed) {



        var emptycelltomoveto = "0";

        var oneHTML = $('[name="one"]').html();
        var twoHTML = $('[name="two"]').html();
        var threeHTML = $('[name="three"]').html();
        var fourHTML = $('[name="four"]').html();
        var fiveHTML = $('[name="five"]').html();
        var sixHTML = $('[name="six"]').html();
        var sevenHTML = $('[name="seven"]').html();
        var eightHTML = $('[name="eight"]').html();
        var nineHTML = $('[name="nine"]').html();
        var tenHTML = $('[name="ten"]').html();
        var elevenHTML = $('[name="eleven"]').html();
        var twelveHTML = $('[name="twelve"]').html();
        var thirteenHTML = $('[name="thirteen"]').html();
        var fourteenHTML = $('[name="fourteen"]').html();
        var fifteenHTML = $('[name="fifteen"]').html();
        var sixteenHTML = $('[name="sixteen"]').html();

        //alert(twoHTML);


        switch (parentnumber) {
            case "one":
                {
                    if (twoHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "two";
                    else if (fiveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "five";

                    oneHTML = "&nbsp;";
                }
                break;

            case "two":
                {
                    if (oneHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "one";
                    else if (threeHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "three";
                    else if (sixHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "six";

                    twoHTML = "&nbsp;";
                }
                break;

            case "three":
                {
                    if (twoHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "two";
                    else if (fourHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "four";
                    else if (sevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "seven";

                    threeHTML = "&nbsp;";
                }
                break;

            case "four":
                {
                    if (threeHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "three";
                    else if (eightHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eight";

                    fourHTML = "&nbsp;";
                }
                break;

            case "five":
                {
                    if (oneHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "one";
                    else if (sixHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "six";
                    else if (nineHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "nine";

                    fiveHTML = "&nbsp;";
                }
                break;

            case "six":
                {
                    if (twoHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "two";
                    else if (fiveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "five";
                    else if (sevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "seven";
                    else if (tenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "ten";

                    sixHTML = "&nbsp;";
                }
                break;

            case "seven":
                {
                    if (threeHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "three";
                    else if (sixHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "six";
                    else if (eightHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eight";
                    else if (elevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eleven";

                    sevenHTML = "&nbsp;";
                }
                break;

            case "eight":
                {
                    if (fourHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "four";
                    else if (sevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "seven";
                    else if (twelveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "twelve";

                    eightHTML = "&nbsp;";
                }
                break;

            case "nine":
                {
                    if (fiveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "five";
                    else if (tenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "ten";
                    else if (thirteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "thirteen";

                    nineHTML = "&nbsp;";
                }
                break;

            case "ten":
                {
                    if (sixHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "six";
                    else if (nineHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "nine";
                    else if (elevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eleven";
                    else if (fourteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fourteen";

                    tenHTML = "&nbsp;";
                }
                break;

            case "eleven":
                {
                    if (sevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "seven";
                    else if (tenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "ten";
                    else if (twelveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "twelve";
                    else if (fifteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fifteen";

                    elevenHTML = "&nbsp;";
                }
                break;

            case "twelve":
                {
                    if (eightHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eight";
                    else if (elevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eleven";
                    else if (sixteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "sixteen";

                    twelveHTML = "&nbsp;";
                }
                break;

            case "thirteen":
                {
                    if (nineHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "nine";
                    else if (fourteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fourteen";

                    thirteenHTML = "&nbsp;";
                }
                break;

            case "fourteen":
                {
                    if (tenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "ten";
                    else if (thirteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "thirteen";
                    else if (fifteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fifteen";

                    fourteenHTML = "&nbsp;";
                }
                break;

            case "fifteen":
                {
                    if (elevenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "eleven";
                    else if (fourteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fourteen";
                    else if (sixteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "sixteen";

                    fifteenHTML = "&nbsp;";
                }
                break;

            case "sixteen":
                {
                    if (twelveHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "twelve";
                    else if (fifteenHTML.indexOf("none.png") >= 0)
                        emptycelltomoveto = "fifteen";

                    sixteenHTML = "&nbsp;";
                }
                break;
        }

        //alert(emptycelltomoveto);
        //alert("altpressed:" + altpressed);

        var imageSrc = "";
        var imagealt = "";
        var imagename = "";

        switch (altpressed) {

            case "1":
                {
                    imageSrc = "src=\"Numbers/one.png\"";
                    imagealt = "1";
                    imagename = "imgOne";
                }
                break;
            case "2":
                {
                    imageSrc = "src=\"Numbers/two.png\"";
                    imagealt = "2";
                    imagename = "imgTwo";
                }
                break;
            case "3":
                {
                    imageSrc = "src=\"Numbers/three.png\"";
                    imagealt = "3";
                    imagename = "imgThree";
                }
                break;
            case "4":
                {
                    imageSrc = "src=\"Numbers/four.png\"";
                    imagealt = "4";
                    imagename = "imgFour";
                }
                break;
            case "5":
                {
                    imageSrc = "src=\"Numbers/five.png\"";
                    imagealt = "5";
                    imagename = "imgFive";
                }
                break;
            case "6":
                {
                    imageSrc = "src=\"Numbers/six.png\"";
                    imagealt = "6";
                    imagename = "imgSix";
                }
                break;
            case "7":
                {
                    imageSrc = "src=\"Numbers/seven.png\"";
                    imagealt = "7";
                    imagename = "imgSeven";
                }
                break;
            case "8":
                {
                    imageSrc = "src=\"Numbers/eight.png\"";
                    imagealt = "8";
                    imagename = "imgEight";
                }
                break;
            case "9":
                {
                    imageSrc = "src=\"Numbers/nine.png\"";
                    imagealt = "9";
                    imagename = "imgNine";
                }
                break;
            case "10":
                {
                    imageSrc = "src=\"Numbers/ten.png\"";
                    imagealt = "10";
                    imagename = "imgTen";
                }
                break;
            case "11":
                {
                    imageSrc = "src=\"Numbers/eleven.png\"";
                    imagealt = "11";
                    imagename = "imgEleven";
                }
                break;
            case "12":
                {
                    imageSrc = "src=\"Numbers/twelve.png\"";
                    imagealt = "12";
                    imagename = "imgTwelve";
                }
                break;
            case "13":
                {
                    imageSrc = "src=\"Numbers/thirteen.png\"";
                    imagealt = "13";
                    imagename = "imgThirteen";
                }
                break;
            case "14":
                {
                    imageSrc = "src=\"Numbers/fourteen.png\"";
                    imagealt = "14";
                    imagename = "imgFourteen";
                }
                break;
            case "15":
                {
                    imageSrc = "src=\"Numbers/fifteen.png\"";
                    imagealt = "15";
                    imagename = "imgFifteen";
                }
                break;

        }

        //render movement
        var movehappened = "false";

        switch (emptycelltomoveto) {
            case "one":
                {
                    $('[name="one"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }

                }
                break;
            case "two":
                {
                    $('[name="two"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "three":
                {
                    $('[name="three"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "four":
                {
                    $('[name="four"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "five":
                {
                    $('[name="five"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "six":
                {
                    $('[name="six"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\"></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "seven":
                {
                    $('[name="seven"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "eight":
                {
                    $('[name="eight"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "nine":
                {
                    $('[name="nine"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "ten":
                {
                    $('[name="ten"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "eleven":
                {
                    $('[name="eleven"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "twelve":
                {
                    $('[name="twelve"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "thirteen":
                {
                    $('[name="thirteen"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\"></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "fourteen":
                {
                    $('[name="fourteen"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "fifteen":
                {
                    $('[name="fifteen"]').html("<a href=\"#\"  onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\" ></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
            case "sixteen":
                {
                    $('[name="sixteen"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img " + imageSrc + " class=\"rounded polaroid\" alt=\"" + imagealt + "\" style=\"width: 120px; height: 120px;\" name=\"" + imagename + "\"></a>");
                    movehappened = "true";

                    if (sessionStorage.getItem("movenum") != null) {
                        movenumber++;
                        sessionStorage.setItem("movenum", movenumber);
                    }
                }
                break;
        }

        if (movehappened == "true") {
            switch (parentnumber) {
                case "one":
                    {
                        $('[name="one"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");

                        break;
                    }
                case "two":
                    {
                        $('[name="two"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "three":
                    {
                        $('[name="three"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "four":
                    {
                        $('[name="four"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "five":
                    {
                        $('[name="five"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "six":
                    {
                        $('[name="six"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "seven":
                    {
                        $('[name="seven"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "eight":
                    {
                        $('[name="eight"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "nine":
                    {
                        $('[name="nine"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\" ></a>");
                        break;
                    }
                case "ten":
                    {
                        $('[name="ten"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "eleven":
                    {
                        $('[name="eleven"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "twelve":
                    {
                        $('[name="twelve"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "thirteen":
                    {
                        $('[name="thirteen"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "fourteen":
                    {
                        $('[name="fourteen"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\" ></a>");
                        break;
                    }
                case "fifteen":
                    {
                        $('[name="fifteen"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
                case "sixteen":
                    {
                        $('[name="sixteen"]').html("<a href=\"#\" onclick=\"move($(this).parent().attr('name'),$(this).parent().find('img').attr('alt'));\"><img src=\"Numbers/none.png\" class=\"rounded polaroid\"   alt=\"120x120\" style=\"width: 120px; height: 120px;\"  ></a>");
                        break;
                    }
            }
        }
        checkwinner();
    }

    function checkwinner() {

        var oneHTML = $('[name="one"]').html();
        var twoHTML = $('[name="two"]').html();
        var threeHTML = $('[name="three"]').html();
        var fourHTML = $('[name="four"]').html();
        var fiveHTML = $('[name="five"]').html();
        var sixHTML = $('[name="six"]').html();
        var sevenHTML = $('[name="seven"]').html();
        var eightHTML = $('[name="eight"]').html();
        var nineHTML = $('[name="nine"]').html();
        var tenHTML = $('[name="ten"]').html();
        var elevenHTML = $('[name="eleven"]').html();
        var twelveHTML = $('[name="twelve"]').html();
        var thirteenHTML = $('[name="thirteen"]').html();
        var fourteenHTML = $('[name="fourteen"]').html();
        var fifteenHTML = $('[name="fifteen"]').html();
        var sixteenHTML = $('[name="sixteen"]').html();


        if (oneHTML.indexOf("one.png") >= 0 && twoHTML.indexOf("two.png") >= 0 && threeHTML.indexOf("three.png") >= 0 && fourHTML.indexOf("four.png") >= 0 && fiveHTML.indexOf("five.png") >= 0 && sixHTML.indexOf("six.png") >= 0 && sevenHTML.indexOf("seven.png") >= 0 && eightHTML.indexOf("eight.png") >= 0 && nineHTML.indexOf("nine.png") >= 0 && tenHTML.indexOf("ten.png") >= 0 && elevenHTML.indexOf("eleven.png") >= 0 && twelveHTML.indexOf("twelve.png") >= 0 && thirteenHTML.indexOf("thirteen.png") >= 0 && fourteenHTML.indexOf("fourteen.png") >= 0 && fifteenHTML.indexOf("fifteen.png") >= 0 && sixteenHTML.indexOf("none.png") >= 0) {
            gameWon = "True";
            stopGame();
        }
    }

    $(document).ready(function () {

        $("form").submit(function (e) {

            var txt = $('input:text[name=gameName]').val();

            if (txt == '') {
                e.preventDefault(e);
            }
        });
    });






    </script>

</head>
<body class="metro">
<table style="width:100%">
<tr>
<td style="width:20%">
</td>
<td style="width:60%;text-align:center">
    <div>
    <table class="table striped bordered hovered" style="width:100%;">
                <tr class="">
                    <td name="one" runat="server"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"  style="width: 120px; height: 120px;" name="imgOne" runat="server"></a></td>
                    <td name="two" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"  style="width: 120px; height: 120px;" name="imgTwo" runat="server"></a></td>
                    <td name="three" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"   style="width: 120px; height: 120px;" name="imgThree" runat="server"></a></td>
                    <td name="four" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"   style="width: 120px; height: 120px;" name="imgFour" runat="server"></a></td>
                  
                </tr>
                <tr class="">
                    <td name="five" runat="server"><a href="javascript:return false;"><img src="Numbers/none.png"  class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgFive" runat ="server"></a></td>
                    <td name="six" runat="server" class="right"><a href="javascript:return false;"><img  src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgSix" runat ="server"></a></td>
                    <td name="seven" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgSeven" runat ="server"></a></td>
                    <td name="eight" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgEight" runat ="server"></a></td>
                </tr>
                <tr class="">
                    <td name="nine" runat="server"><a href="javascript:return false;"><img src="Numbers/none.png"  class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgNine" runat ="server"></a></td>
                    <td name="ten" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgTen" runat ="server"></a></td>
                    <td name="eleven" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgEleven" runat ="server"></a></td>
                    <td name="twelve" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgTwelve" runat ="server"></a></td>
                </tr>
                <tr class="">
                    <td name="thirteen" runat="server"><a href="javascript:return false;" ><img src="Numbers/none.png" class="rounded polaroid"   style="width: 120px; height: 120px;" name="imgThirteen" runat ="server"></a></td>
                    <td name="fourteen" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgFourteen" runat ="server"></a></td>
                    <td name="fifteen" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png" class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgFifteen" runat ="server"></a></td>
                    <td name="sixteen" runat="server" class="right"><a href="javascript:return false;"><img src="Numbers/none.png"  class="rounded polaroid"    style="width: 120px; height: 120px;" name="imgSixteen" runat ="server"></a></td>

                </tr>
            </table>
    <div class="accordion with-marker  place-left margin10" style ="width:100%" data-role="accordion" data-closeany="false">
                <div class="accordion-frame">
                    <a class="heading bg-violet fg-white collapsed" href="javascript:return false;">Fifteen Puzzle Statistics</a>
                    <div class="content" style="display: none;" name="statisticspanel">
                        <p><div name="statdetails"></div></p>
                    </div>
                </div>
            </div>
    <div class="accordion with-marker  place-left margin10" style ="width:100%" data-role="accordion" data-closeany="false">
                <div class="accordion-frame">
                    <a class="heading bg-violet fg-white collapsed" href="javascript:return false;">All Games</a>
                    <div class="content" style="display: none;" name="statspanelallgames">
                       
                    </div>
                </div>
            </div>
    <div class="accordion with-marker  place-left margin10" style ="width:100%" data-role="accordion" data-closeany="false">
                <div class="accordion-frame">
                    <a class="heading bg-violet fg-white collapsed" href="javascript:return false;">Control Panel</a>
                    <div class="content" style="display: none;">
                        <p><button class="m-btn red fg-white"  onclick ="startNewGame()" name="btnStartGame" style ="width:150px; height:46px">START</button></p>
                        <p><button class="m-btn red fg-white" onclick ="stopGame()" name="btnStopGame" style ="width:150px; height:46px">STOP</button></p>
                    </div>
                </div>
            </div>
    </div>
</td>
<td style="width:20%;vertical-align:top;padding:15px">
</td>
</tr>
</table> 
</body>