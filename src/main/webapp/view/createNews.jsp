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
    <h1 class="well">Create News </h1>
    <div class="col-lg-12 well">
        <form action="/saveNews" method="post" modelAttribute="news" class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-3">News Category</label>
                <div class="col-sm-9">
                    <select name="category" class="form-control">
                        <option selected >
                            Select a Category
                        </option>
                        <c:forEach items="${categoryList}" var="category">
                            <option value="${category.categoryId}">${category.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3">News Title</label>
                <div class="col-sm-9">
                    <input type="text" name="title" placeholder="Enter Title here." class="form-control required">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3">News Description</label>
                <div class="col-sm-9">
                    <input type="text" name="newsDetails" placeholder="Enter Description here."
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