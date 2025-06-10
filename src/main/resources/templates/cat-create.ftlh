<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <title>Create Cat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="/cats">Animals</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <li class="nav-item"> <a class="nav-link active" aria-current="page" href="/cats">Home</a> </li>
                <li class="nav-item"> <a class="nav-link active" href="#">Details</a> </li>
                <li class="nav-item"> <a class="nav-link active" href="#">About</a> </li>
            </ul>
        </div>
    </div>
</nav>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Add a New Cat</h1>
                <p class="lead text-body-secondary">Fill out the form to add a new wild cat to the album.</p>
            </div>
        </div>
    </section>
    <div class="album py-5 bg-body-tertiary">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <form action="/cats" method="post" enctype="multipart/form-data">
                                <div class="mb-3">
                                    <label class="form-label">Name:</label>
                                    <input type="text" name="name" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Age:</label>
                                    <input type="text" name="age" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Color:</label>
                                    <input type="text" name="color" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Description:</label>
                                    <input type="text" name="description" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Picture:</label>
                                    <input type="file" name="image" class="form-control">
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary">Create Cat</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<footer class="text-body-secondary py-5">
    <div class="container">
        <p class="float-end mb-1"> <a href="#">Back to top</a> </p>
        <p class="mb-0"><a href="/">About page</a></p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>