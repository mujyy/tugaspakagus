<?php

@include 'config.jsp';

session_start();
session_unset();
session_destroy();

header('location:login_form.jsp');

?>