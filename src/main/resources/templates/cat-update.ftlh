<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <title>Edit Cat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Edit Cat</h1>
                <p class="lead text-body-secondary">Update the information for this cat.</p>
            </div>
        </div>
    </section>
    <div class="album py-5 bg-body-tertiary">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <form action="/cats/update/${cat.id}" method="post" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label class="form-label">Name:</label>
                                    <input type="text" name="name" class="form-control" value="${cat.name}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Age:</label>
                                    <input type="text" name="age" class="form-control" value="${cat.age}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Color:</label>
                                    <input type="text" name="color" class="form-control" value="${cat.color}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Description:</label>
                                    <input type="text" name="description" class="form-control" value="${cat.description}">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Current Picture:</label><br>
                                    <img src="${cat.imageUrl!('default-cat.jpg')}" alt="${cat.name!}" class="img-thumbnail mb-2" style="max-height:150px;">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Change Picture:</label>
                                    <input type="file" name="image" class="form-control">
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary">Update Cat</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>