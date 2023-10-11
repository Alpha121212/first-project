<!DOCTYPE html>
<html>
<head>
    <title>Open Web Page</title>
</head>
<body>
    <button id="openPageButton">Open Web Page</button>

    <script>
        // Function to open the web page when the button is clicked.
        document.getElementById('openPageButton').addEventListener('click', function() {
            // Replace 'https://example.com' with the URL of the web page you want to open.
            var url = 'https://example.com';
            
            // Open the web page in a new browser window or tab.
            window.open(url);
        });
    </script>
</body>
</html>
