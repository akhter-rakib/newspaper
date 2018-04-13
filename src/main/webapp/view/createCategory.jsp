<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <head>
        <link href="<c:url value="/css/common/custom.css" />" rel="stylesheet"/>

        <link href="<c:url value="/css/lib/bootstrap.min.css" />" rel="stylesheet"/>
        <script src="<c:url value="/javascript/lib/bootstrap.min.js" />"></script>

    </head>
</head>
<body>
<div class="container">
    <h1 class="well">Create Category</h1>
    <div class="col-lg-12 well">
        <form action="/createCategory" method="post" modelAttribute="category" class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-3">Category Name</label>
                <div class="col-sm-9">
                    <input type="text" name="name" autofocus="autofocus" placeholder="Enter Category Name Here.."
                           class="form-control required">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3">Description</label>
                <div class="col-sm-9">
                    <input type="text" name="description" autofocus="autofocus" placeholder="Enter Description Here.."
                           class="form-control required">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-3 col-sm-offset-9">
                    <button type="submit" class="btn btn-primary btn-block">Save</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>