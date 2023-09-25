<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Instert Datas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container ">
            <h1>Insert Datas!</h1>
            <form action="MostrarRegistrosSV" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Enter Name......">
                </div>
                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name:</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" aria-describedby="emailHelp" placeholder="Enter Last Name......">
                </div>
                <div class="mb-3">
                    <label for="average" class="form-label">Average:</label>
                    <input type="text" class="form-control" id="average" name="average" aria-describedby="emailHelp" placeholder="Enter Average......">
                </div>
                <button type="submit" class="btn btn-primary">Send!</button>
                <button type="reset" class="btn btn-danger">Reset!</button>
            </form>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>