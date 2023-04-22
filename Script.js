function LoginUser() {
    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;

    if (username == "admin" && password == "123") {
        alert("Login Successful!");
        window.location.replace("Web Page.html");
    }
    else if (username == "" && password == "") {
        alert("Empty Username & Password!");
    }
    // empty username
    else if (username == "") {
        alert("Empty Username");
    }
    // empty password
    else if (password == "") {
        alert("Empty Password!");
    }
    else {
        window.location.replace("Error Page.html");
    }
}

function ReLogin() {
    window.location.replace("Login Page.html");
}

function ValidationData(fullname, address, phoneno) {
    if (fullname == "") {
        alert("Full name must not be empty!");
    }
    else if (address == "") {
        alert("Address must not be empty!");
    }
    else if (phoneno == "") {
        alert("Phone Number must not be empty!");
    }
    else if (document.getElementById('license').value != 'A' && document.getElementById('license').value != 'B' && document.getElementById('license').value != 'C' && document.getElementById('license').value != 'D') {
        alert("License must not be empty!");
    }
    else if (document.getElementById('jobtype').value != 'Driver' && document.getElementById('jobtype').value != 'Helper') {
        alert("Job Type must not be empty!");
    }
    else {
        return true;
    }
}

function addData() {
    let fullname = document.getElementById('fullname').value;
    let address = document.getElementById('address').value;
    let phoneno = document.getElementById('phoneno').value;
    let license = document.getElementById('license').value;
    let jobtype = document.getElementById('jobtype').value;

    if (ValidationData(fullname, address, phoneno)) {
        var table = document.getElementById('resultsTable');
        var table_len = (table.rows.length) - 1;

        var row = table.insertRow(table_len).outerHTML = "<tr id='row" + table_len + "'><td id='name_row" + table_len + "'>" + fullname + "</td><td id='address_row" + table_len + "'>" + address + "</td><td id='phoneno_row" + table_len + "'>" + phoneno + "</td><td id='license_row" + table_len + "'>" + license + "</td><td id='jobtype_row" + table_len + "'>" + jobtype + "</td>"

        document.getElementById("fullname").value = "";
        document.getElementById("address").value = "";
        document.getElementById("phoneno").value = "";
        document.getElementById("license").value = "";
        document.getElementById("jobtype").value = "";

    }
    else {
        return;
    }
}