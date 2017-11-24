<?php
// It is important for any file that includes this file, to have
// check_login_status.php.
$envelope = '<img src=# width="22" height="12" alt="Notes" title="This envelope is for logged in members">';





if($user_ok == true) {
	$sql = "SELECT notescheck FROM users WHERE username='$log_username' LIMIT 1";
	$query = mysqli_query($connection, $sql);
	$row = mysqli_fetch_row($query);
	$notescheck = $row[0];
	$sql = "SELECT id FROM notifications WHERE username='$log_username' AND date_time > '$notescheck' LIMIT 1";
	$query = mysqli_query($connection, $sql);
	$numrows = mysqli_num_rows($query);
    if ($numrows == 0) {
		$envelope = '';
    } else {
		$envelope = '<a href="notifications.php" title="You have new notifications"><img src="images/notification.png" width="22" height="12" alt="Notes"></a>';
	}
   $loginLink = '<a href="user.php?u='.$log_username.'">'.'Welcome '.$log_username.'</a> ';
}
?>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php">MeetHub</a>
    </div>
    <ul class="nav navbar-nav">


      <li><a href="members.php">Our Members</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
			<?php if(!isset($loginLink)) :?>

				<li class="dropdown">
  				<a class="dropdown-toggle" href="" data-toggle="dropdown">Login<span class="caret"></span></a>
  				<ul class="dropdown-menu">
    					<?php include_once("login.php");?>
  				</ul>
				</li>
				<li><a href="forgot_pass.php"><span class="glyphicon glyphicon-user"></span> Forgot password?</a></li>
			<?php else:?>
				<?php echo '<li>'.$loginLink.'<li>';?>
				<li class="dropdown">
					<a class="dropdown-toggle" href="" data-toggle="dropdown">Friend Requests<span class="caret"></span></a>
					<ul class="dropdown-menu">
							<?php include_once("friend_requests.php");?>
					</ul>
				</li>
				<li class="dropdown">
					<a class="dropdown-toggle" href="" data-toggle="dropdown"  title="Your notifications and friend requests"><span class="glyphicon glyphicon-envelope">&nbsp;</span>Notification</a>
					<ul class="dropdown-menu">
							<?php include_once("notifications.php");?>
					</ul>
				</li>

				<li> <a href="logout.php">Log Out</a></li>


			<?php endif;?>
    </ul>
  </div>
</nav>
