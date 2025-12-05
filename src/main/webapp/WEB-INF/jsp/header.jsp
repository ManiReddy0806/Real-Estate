<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Real Estate</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"/>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Google Maps JS API Key -->
    <script async
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBD2rTprWgcSkdV8QoNcO_ViAkAGF4jyuc&callback=initMap">
    </script>

    <script>
        function initMap() {
            const mapContainer = document.getElementById("map");
            if (!mapContainer) return;

            const lat = parseFloat(mapContainer.getAttribute("data-lat"));
            const lng = parseFloat(mapContainer.getAttribute("data-lng"));
            const pos = {lat: lat || 0, lng: lng || 0};

            const map = new google.maps.Map(mapContainer, {
                zoom: 14,
                center: pos
            });

            new google.maps.Marker({
                position: pos,
                map: map
            });
        }
    </script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">RealEstate</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <c:choose>
                    <c:when test="${pageContext.request.userPrincipal != null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/seller/property/new">Add Property</a>
                        </li>
                        <li class="nav-item">
                            <form method="post" action="${pageContext.request.contextPath}/logout">
                                <button class="btn btn-link nav-link" type="submit">Logout</button>
                            </form>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-4">
