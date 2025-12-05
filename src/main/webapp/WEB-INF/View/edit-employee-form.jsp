<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>

    <style>
        /* ---- BEAUTIFUL GRADIENT BACKGROUND ---- */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
             background-color: #2575fc ;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* ---- GLASSMORPHISM CARD ---- */
        .container {
        background: #ffffff;
        padding: 35px;
        width: 450px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: slideDown 0.6s ease;
    }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ---- HEADER ---- */
        h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
        font-size: 26px;
    }

        /* ---- INPUT BOXES ---- */
        label {
        font-size: 15px;
        font-weight: bold;
        color: #444;
    }

    input[type="text"] {
        width: 90%;
        padding: 12px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 2px solid #ddd;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
    }

    input[type="text"]:focus {
        border-color: #6a11cb;
        outline: none;
        box-shadow: 0 0 8px rgba(106,17,203,0.3);
    }

        /* ---- SUBMIT BUTTON ---- */
        .btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 8px;
        background: #6a11cb;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        color: white;
        font-size: 17px;
        cursor: pointer;
        transition: 0.3s;
        font-weight: bold;
    }

    .btn:hover {
        transform: scale(1.05);
        box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    }
    </style>
</head>

<body>

    <div class="container">
        <h1>Edit Employee</h1>

        <form action="/editEmployee" method="post">

            <input type="hidden" name="id" value="${employee.id}">

            <div class="input-box">
                <label>Name</label>
                <input type="text" name="name" value="${employee.name}">
            </div>

            <div class="input-box">
                <label>Salary</label>
                <input type="text" name="salary" value="${employee.salary}">
            </div>

            <div class="input-box">
                <label>Designation</label>
                <input type="text" name="designation" value="${employee.designation}">
            </div>

            <button type="submit" class="btn">Save Changes</button>

        </form>
    </div>

</body>
</html>