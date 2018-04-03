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
    <div class="page-header">
        <center><h1></h1></center>
    </div>
    <div class="col-lg-12 well">
        <div class="row">
            <form action="/saveNews" method="post" modelAttribute="news">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label>News Category</label>
                            <select name="category">
                                <c:forEach items="${categoryList}" var="category">
                                    <option value="${category.categoryId}">${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label>News Title</label>
                            <input type="text" name="title" placeholder="Description plz.."
                                   class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label>Description</label>
                            <input type="text" name="newsDetails" placeholder="Description plz.."
                                   class="form-control">
                        </div>
                    </div>
                    <button type="submit" id="" class="btn btn-lg btn-info">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>