<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <title>Cat List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
</nav>

<div class="container" style="margin-top: 30px;">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>Cat List</h1>
        <a href="/cats/create" class="btn btn-primary">Add New Cat</a>
    </div>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">
        <#if cats?? && cats?size gt 0>
            <#list cats as cat>
                <div class="col">
                    <div class="card shadow-sm h-100">
                        <img src="${cat.imageUrl!('default-cat.jpg')}" class="card-img-top" alt="${cat.name!}" style="object-fit:cover; height:225px;">
                        <div class="card-body">
                            <h5 class="card-title">${cat.name}</h5>
                            <p class="card-text">
                                <b>Age:</b> ${cat.age}<br>
                                <b>Color:</b> ${cat.color}<br>
                                <b>Description:</b> ${cat.description}
                            </p>
                        </div>
                        <div class="card-footer bg-transparent border-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <a href="/cats/${cat.id}" class="btn btn-sm btn-outline-primary">View</a>
                                    <a href="/cats/update/${cat.id}" class="btn btn-sm btn-outline-warning">Edit</a>
                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        <#else>
            <div class="col-12">
                <div class="alert alert-info text-center">No cats found.</div>
            </div>
        </#if>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>