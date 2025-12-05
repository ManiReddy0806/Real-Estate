<%@ include file="header.jsp" %>

<h1 class="mb-4">Featured Properties</h1>
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
</div>

<%@ include file="footer.jsp" %>
