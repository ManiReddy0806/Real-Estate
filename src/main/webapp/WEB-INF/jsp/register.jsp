<%@ include file="layout.jsp" %>
<jsp:body>
    <h2>Register (Buyer)</h2>
    <form id="registerForm">
        <div class="mb-3">
            <label>Username</label>
            <input name="username" class="form-control"/>
        </div>
        <div class="mb-3">
            <label>Full Name</label>
            <input name="fullName" class="form-control"/>
        </div>
        <div class="mb-3">
            <label>Email</label>
            <input name="email" type="email" class="form-control"/>
        </div>
        <div class="mb-3">
            <label>Password</label>
            <input name="password" type="password" class="form-control"/>
        </div>
        <button type="button" class="btn btn-primary" onclick="registerBuyer()">Register</button>
    </form>

    <script>
        function registerBuyer() {
            const formData = {
                username: document.querySelector('[name=username]').value,
                fullName: document.querySelector('[name=fullName]').value,
                email: document.querySelector('[name=email]').value,
                password: document.querySelector('[name=password]').value
            };

            fetch('${pageContext.request.contextPath}/api/auth/register/buyer', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(formData)
            })
                .then(r => {
                    if (r.ok) {
                        alert("Registered successfully. Please login.");
                        window.location = '${pageContext.request.contextPath}/login';
                    } else {
                        alert("Registration failed");
                    }
                });
        }
    </script>
</jsp:body>
