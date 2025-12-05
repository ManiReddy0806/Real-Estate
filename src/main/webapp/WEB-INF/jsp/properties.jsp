<%@ include file="layout.jsp" %>
<jsp:body>
    <h2>Search Properties</h2>
    <form method="get" action="${pageContext.request.contextPath}/properties" class="row g-3 mb-3">
        <div class="col-md-3">
            <label>City</label>
            <input name="city" class="form-control" value="${param.city}"/>
        </div>
        <div class="col-md-2">
            <label>Min Price</label>
            <input name="minPrice" type="number" step="1" class="form-control" value="${param.minPrice}"/>
        </div>
        <div class="col-md-2">
            <label>Max Price</label>
            <input name="maxPrice" type="number" step="1" class="form-control" value="${param.maxPrice}"/>
        </div>
        <div class="col-md-2">
            <label>Bedrooms (min)</label>
            <input name="bedrooms" type="number" class="form-control" value="${param.bedrooms}"/>
        </div>
        <div class="col-md-3 d-flex align-items-end">
            <button class="btn btn-primary w-100">Search</button>
        </div>
    </form>

    <div class="row">
        <c:forEach items="${properties}" var="p">
            <div class="col-md-4 mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="${pageContext.request.contextPath}/property/${p.id}">
                                ${p.title}
                            </a>
                        </h5>
                        <p class="card-text">${p.city}, ${p.country}</p>
                        <p class="card-text">₹ ${p.price}</p>
                        <p class="card-text">
                            ${p.bedrooms} BHK · ${p.bathrooms} Bath · ${p.area} sq.ft
                        </p>
                    </div>
                </div>
            </div>
        </c:forEach>

        <c:if test="${empty properties}">
            <p>No properties found.</p>
        </c:if>
    </div>
</jsp:body>
