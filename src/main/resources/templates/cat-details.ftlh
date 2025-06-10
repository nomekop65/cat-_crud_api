<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <title>Cat Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container" style="margin-top: 30px; max-width: 600px;">
    <div class="card shadow">
        <img src="${cat.imageUrl!('default-cat.jpg')}" class="card-img-top" alt="${cat.name!}" style="object-fit:cover; height:300px;">
        <div class="card-body">
            <h2 class="card-title mb-3">${cat.name}</h2>
            <ul class="list-group list-group-flush mb-3">
                <li class="list-group-item"><b>Age:</b> ${cat.age}</li>
                <li class="list-group-item"><b>Color:</b> ${cat.color}</li>
                <li class="list-group-item"><b>Description:</b> ${cat.description}</li>
            </ul>
            <div class="d-flex justify-content-between">
                <a href="/cats/update/${cat.id}" class="btn btn-warning">Edit</a>
                <a href="/cats" class="btn btn-secondary">Back to List</a>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>