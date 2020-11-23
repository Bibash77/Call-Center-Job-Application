<%--
  Created by IntelliJ IDEA.
  User: Amulya
  Date: 11/23/2020
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header background">
                <h5 class="modal-title" id="registerModalLabel">Register</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form name="registerForm" id="registerForm">
                    <div class="form-group">
                        <label for="fullName" class="col-form-label">Full Name:</label>
                        <input type="text" name="fullName" class="form-control" id="fullName">
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-form-label">Username:</label>
                        <input type="text" name="userName" class="form-control" id="username">
                    </div>
                    <div class="form-group">
                        <label for="userType" class="col-form-label">User Type:</label>
                        <select class="form-control" name="userType" id="userType">
                            <option selected hidden>Select UserType</option>
                            <option value="ADMIN">ADMIN</option>
                            <option value="USER">User</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-form-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">Password:</label>
                        <input type="password" class="form-control" id="password" name="pasword">
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber" class="col-form-label">Phone Number:</label>
                        <input type="number" name="phoneNumber" class="form-control" id="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-form-label">Address:</label>
                        <input type="text" name="address" class="form-control" id="address">
                    </div>
                    <div class="form-group">
                        <label for="gender" class="col-form-label">Gender:</label>
                        <select class="form-control" name="gender" id="gender">
                            <option selected hidden>Select Gender</option>
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn background" onclick="registerUser()">Register</button>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        const userType = sessionStorage.getItem('userType');
        console.log(userType);
        if (userType == 'USER') {
            console.log('add');
            document.getElementById("viewExams").hidden = true;
            document.getElementById("adduser").hidden = true;
        } else if (userType == 'ADMIN') {
            document.getElementById("takeExam").hidden = true;
            document.getElementById("myexam").hidden = true;
            console.log('user');
        }
    });

    function registerUser() {
        let user = {};
        let valid = true;
        const userData = $('#registerForm').serializeArray(); // return array of form data
        userData.forEach(data => {
            user[data.name] = data.value;
            if(data.value == null || data.value == '') {
                valid = false;
            }
        });
        if (!valid){
            alert("please fill all data");
            return;
        }
        console.log(user);
        $.ajax({
            url:"${pageContext.request.contextPath}/user/register",
            type:"post",
            contentType:"application/json",
            data: JSON.stringify(user),
            success:function(data){
                alert(data);
                console.log(data);
            },

        });
    }
</script>

</html>
