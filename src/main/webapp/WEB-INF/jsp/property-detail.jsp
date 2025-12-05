<%@ include file="layout.jsp" %>
<jsp:body>
    <h2>${property.title}</h2>
    <p>${property.address}, ${property.city}, ${property.state}, ${property.country}</p>
    <p>₹ ${property.price}</p>
    <p>${property.bedrooms} BHK · ${property.bathrooms} Bath · ${property.area} sq.ft</p>
    <p>${property.description}</p>

    <h4>Location</h4>
    <div id="map" style="height: 300px;"
         data-lat="${property.latitude}"
         data-lng="${property.longitude}"></div>
</jsp:body>
