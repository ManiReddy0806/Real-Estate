<%@ include file="layout.jsp" %>
<jsp:body>
    <h2>${property.id == null ? 'Add Property' : 'Edit Property'}</h2>
    <form method="post" action="${pageContext.request.contextPath}/seller/property">
        <input type="hidden" name="id" value="${property.id}"/>

        <div class="mb-3">
            <label>Title</label>
            <input name="title" class="form-control" value="${property.title}"/>
        </div>
        <div class="mb-3">
            <label>Description</label>
            <textarea name="description" class="form-control">${property.description}</textarea>
        </div>
        <div class="mb-3">
            <label>Address</label>
            <input name="address" class="form-control" value="${property.address}"/>
        </div>
        <div class="mb-3">
            <label>City</label>
            <input name="city" class="form-control" value="${property.city}"/>
        </div>
        <div class="mb-3">
            <label>State</label>
            <input name="state" class="form-control" value="${property.state}"/>
        </div>
        <div class="mb-3">
            <label>Country</label>
            <input name="country" class="form-control" value="${property.country}"/>
        </div>
        <div class="row">
            <div class="col-md-3 mb-3">
                <label>Price</label>
                <input name="price" type="number" step="1" class="form-control" value="${property.price}"/>
            </div>
            <div class="col-md-3 mb-3">
                <label>Bedrooms</label>
                <input name="bedrooms" type="number" class="form-control" value="${property.bedrooms}"/>
            </div>
            <div class="col-md-3 mb-3">
                <label>Bathrooms</label>
                <input name="bathrooms" type="number" class="form-control" value="${property.bathrooms}"/>
            </div>
            <div class="col-md-3 mb-3">
                <label>Area (sq.ft)</label>
                <input name="area" type="number" step="0.1" class="form-control" value="${property.area}"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label>Latitude</label>
                <input name="latitude" type="number" step="0.000001" class="form-control" value="${property.latitude}"/>
            </div>
            <div class="col-md-6 mb-3">
                <label>Longitude</label>
                <input name="longitude" type="number" step="0.000001" class="form-control" value="${property.longitude}"/>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</jsp:body>
