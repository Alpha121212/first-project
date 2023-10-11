<!DOCTYPE html>
<html>
<head>
    <title>Personal Details Form</title>
</head>
<body>
    <h1>Personal Details Form</h1>
    <form id="personalDetailsForm">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required><br><br>
        
        <input type="submit" value="Submit">
    </form>

    <div id="result"></div>

    <script>
        // Get the form element
        const form = document.getElementById('personalDetailsForm');

        // Listen for the form submission
        form.addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent the default form submission

            // Get the values from the form
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const dob = document.getElementById('dob').value;

            // Display the results
            const result = document.getElementById('result');
            result.innerHTML = `
                <h2>Submitted Details:</h2>
                <p>Name: ${name}</p>
                <p>Email: ${email}</p>
                <p>Date of Birth: ${dob}</p>
            `;
        });
    </script>
</body>
</html>
