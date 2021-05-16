<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="icon" href="favicon.ico" type="image/icon" sizes="16x16">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Question Paper</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>


    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <?php
    if (@$_GET['w']) {
        echo '<script>alert("' . @$_GET['w'] . '");</script>';
    }
    ?>

</head>
<?php
include_once 'dbConnection.php';
?>

<body>
    <div class="header">
        <div class="row">
            <div class="col-lg-6">
                <span class="logo">Question Paper</span>
            </div>
            <div class="col-md-4 col-md-offset-2">
                <?php
                include_once 'dbConnection.php';
                session_start();
                if (!(isset($_SESSION['username']))) {
                    header("location:index.php");
                } else {
                    $name     = $_SESSION['name'];
                    $username = $_SESSION['username'];

                    include_once 'dbConnection.php';
                    echo '<span class="pull-right top title1" ><span style="color:white"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <span class="log log1" style="color:lightyellow">' . $username . '&nbsp;&nbsp;|&nbsp;&nbsp;<a href="logout.php?q=account.php" style="color:lightyellow"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</button></a></span>';
                }
                ?>
            </div>
        </div>
    </div>
    <div class="bg">
        <nav class="navbar navbar-default title1">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li <?php
                            if (@$_GET['q'] == 1)
                                echo 'class="active"';
                            ?>><a href="account.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
                        <li <?php
                            if (@$_GET['q'] == 2)
                                echo 'class="active"';
                            ?>><a href="account.php?q=2"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;My History</a></li>
                        <li <?php
                            if (@$_GET['q'] == 3)
                                echo 'class="active"';
                            ?>><a href="account.php?q=3"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;Leaderboard</a></li>
                        <li <?php
                            if (@$_GET['q'] == 3)
                                echo 'class="active"';
                            ?>><a href="View.php"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;View</a></li>

                    </ul>

                </div>
            </div>
        </nav>
        <!-- <div class="container my-4">
            <form>
                Question Paper
                <select>
                    <option disabled selected>-- Select Question Paper --</option>
                    <?php
                    include "dbConnection.php";  // Using database connection file here
                    $records = mysqli_query($con, "SELECT * FROM `quiz`");  // Use select query here 

                    while ($data = mysqli_fetch_array($records)) {
                        echo "<option value='" . $data['title'] . "'>" . $data['title'] . "</option>";  // displaying data in option menu
                    }
                    ?>
                </select>
            </form> -->
            <table class="table" id="myTable">
                <thead>
                    <tr>
                        <th scope="col">Sr No</th>
                        <th scope="col">Question</th>
                        <th scope="col">choice</th>
                        <th scope="col">Each Question Marks</th>

                        <!-- <th scope="col">Actions</th> -->
                    </tr>
                </thead>
                <tbody>

                    <?php
                    $srno = 0;
                    $sql = "SELECT * FROM `questions`";
                    $result = mysqli_query($con, $sql);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $srno = $srno + 1;
                        $marks = 1;

                        echo "<tr>
            <th scope='row'>" . $srno . "</th>
            <td>" . $row['qns'] . "</td>
            <td>" . $row['choice'] . "</td>
            <td>" . $marks . "</td>
            </tr>";
                    }
                    ?>
                </tbody>
            </table>

        </div>
        <hr>
        <script>
            $(document).ready(function() {
                $('#myTable').DataTable();
            });
        </script>
    <div class="row footer">
        <div class="col-md-1 box"></div>
        <div class="col-md-4 box">
            <a href="#" data-toggle="modal" data-target="#developers" s style="color:lightyellow;" onmouseover="this.style('color:yellow')" target="new">Organized by Narendra Textile Agency</a>
        </div>
        <!-- Modal For Developers-->
        <div class="modal fade title1" id="developers">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">NIRAJ NARENDRA KOTHARI</span></h4>
                    </div>

                    <div class="modal-body">
                        <p>
                        <div class="row">
                            <div class="col-md-4">
                                <img src="image/download.jpg" width=100 height=100 alt="NTA" class="img-rounded">
                            </div>
                            <div class="col-md-5">
                                <a href="" style="color:#202020; font-family:'typo' ; font-size:18px" title="">Niraj Kothari</a>
                                <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+91 9850420423</h4>

                            </div>

                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
                <div class="col-md-2 box">
                    <a href="feedback.php" style="color:lightyellow;text-decoration:underline" onmouseover="this.style('color:yellow')" target="new">Feedback</a>
                </div>

</body>

</html>