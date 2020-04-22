<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/app.css">
    <script>
    window.Laravel = <?php echo json_encode(['csrfToken' => csrf_token()]); ?>
    </script>
    <script src="{{ mix('js/app.js') }}" defer></script>

    <link rel="stylesheet" href="https://use.typekit.net/iya2uzn.css">

    <title>
        Vintri Library
    </title>
</head>

<body>
    <div id='app'>
        <mainpage />
    </div>
</body>

</html>