function register() {
    const username = $('#reg_username').val();
    const password = $('#reg_password').val();
    const confirmPassword = $('#confirm_password').val();

    // Clear previous error messages
    $('#register_message').removeClass('d-none');

    // Validate inputs
    if (!username || !password || !confirmPassword) {
        $('#register_message').text('Please fill in all fields');
        return;
    }

    if (password !== confirmPassword) {
        $('#register_message').text('Passwords do not match');
        return;
    }

    $.ajax({
        url: '/register',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ username, password }),
        success: function(response) {
            if (response.success) {
                // Show success modal
                $('#successModal').modal('show');
                
                // Redirect after 3 seconds
                setTimeout(() => {
                    window.location.href = '/';
                }, 3000);
            } else {
                $('#register_message').text(response.message);
            }
        },
        error: function(xhr, status, error) {
            $('#register_message').text('Error during registration: ' + error);
        }
    });
}

// Add event listeners for Enter key
$(document).ready(function() {
    $('.inp').keypress(function(e) {
        if (e.which === 13) { // Enter key
            register();
        }
    });
});