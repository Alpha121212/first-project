// Function to open a new window or tab and fill out a form
function fillAndSubmitForm() {
  // Specify the URL of the web page containing the form
  const targetUrl = 'https://example.com/form-page.html';

  // Define values for the form fields
  const name = 'John Doe';
  const age = 30;
  const address = '123 Main St, City';

  // Open a new window or tab
  const newWindow = window.open(targetUrl, '_blank');

  // Wait for the new window to load (you may need to adjust the time)
  setTimeout(() => {
    if (newWindow) {
      // Access the document of the new window
      const newDocument = newWindow.document;

      // Locate the form elements and fill them with data
      const nameField = newDocument.getElementById('name'); // Replace 'name' with the actual ID of the name input field
      const ageField = newDocument.getElementById('age');   // Replace 'age' with the actual ID of the age input field
      const addressField = newDocument.getElementById('address'); // Replace 'address' with the actual ID of the address input field

      if (nameField && ageField && addressField) {
        nameField.value = name;
        ageField.value = age;
        addressField.value = address;

        // Submit the form (assuming you have a submit button with an ID 'submitBtn')
        const submitButton = newDocument.getElementById('submitBtn'); // Replace 'submitBtn' with the actual ID of the submit button
        if (submitButton) {
          submitButton.click();
        } else {
          // If there's no submit button, you can also submit the form directly
          nameField.form.submit();
        }
      } else {
        alert('Form fields not found on the page.');
      }
    } else {
      alert('New window or tab could not be opened. Please check your browser settings.');
    }
  }, 2000); // Adjust the waiting time as needed (in milliseconds)
}

// Call the function to open the web page and fill the form
fillAndSubmitForm();
