<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<%--<jsp:include page="summary.jsp"/>--%>
<%--<html>
<head>
    <title>Dashboard</title>
</head>
<style>
    #boxes {
        content: "";
        display: table;
        clear: both;
        height: 100%;
    }
    /*#container {*/
    /*    float: left;*/
    /*    height: 470px;*/
    /*    width: 100%;*/
    /*    padding: 0 10px;*/
    /*}*/
    #column1 {
        background-color: #a1edcc;
        width: 25%;
        float: left;
    }
    #column2 {
        background-color: #a0e9ed;
        width: 75%;
        float: right;
    }
    #column3 {
        background-color: #000000;
        color: yellow;
        width: 100%;
        align-content: center;

    }
    h2 {
        color: #000000;
        text-align: center;
    }
    img {
        border-radius: 50%;
    }


</style>
<body>
<main id="boxes" class="background">
    <div id="column1">
        <img class="d-block img-fluid"
             src="https://avatoon.net/wp-content/uploads/elementor/thumbs/Order-Your-Own-Cartoon-Profile-Illustration-op5rnza2dgg163s0gbpb2p2rhtqcc8hwq7ftiqjzy0.png"
             width="200" height="200"/>
        &lt;%&ndash;actions button will be shown if user type is administrator&ndash;%&gt;
        <div class="row justify-content-center" id="admin-block" hidden>
            <a href="#" data-toggle="modal" data-target="#registerModal">
                <button type="button" class="btn background" data-toggle="modal" data-target="#exampleModal">
                    Register User
                </button>   </a>
            <a href="${pageContext.request.contextPath}/questionAnswer-list">
                <button type="button" class="btn btn-success ml-4">
                    View All Answer
                </button>
            </a>
        </div><br>
        &lt;%&ndash;action to be shown if user type is normal user&ndash;%&gt;
        <div class="row justify-content-center" id="user-block" hidden>
            <a href="${pageContext.request.contextPath}/questionAnswer">
                <button type="button" class="btn background ml-4">
                    Give Exam
                </button>

            </a>
            <a onclick="window.location.href= '/question-answer/'+ sessionStorage.getItem('userId')">
                <button type="button" class="btn btn-success ml-4">
                    View My Answer
                </button>

            </a>
        </div>
    </div>
    <div id="column2">

        <div class="jumbotron text-center bg-img">
            <h1>Trsitee Call Center</h1>
            <p>Stay Connected Everywhere!</p>
            &lt;%&ndash;  <img src="../static/img/homestay.png">&ndash;%&gt;

        </div>
        <div class="container-fluid home-content1">
            <div class="row">
                <div class="col-md-4 content1-left">
                    <h3 class="text-secondary">Introduction</h3>
                    <!-- <div class="content1-left"></div> -->
                </div>
                <div class="col-md-8 content1-right">
                    <p>
                        A call centre/call center is a centralised office used for the purpose of receiving and transmitting a large volume of requests by telephone. It can also be described as a service centre with sufficient telecom, internet facilities and wide collection of database, which provides voice based or web-based information and support to customers based in the country or aboard through trained personnel. Call centre can be seen in all sectors of business activities. The sectors where call centers can work are unlimited. Most major businesses use call centre to interact with their customers. Examples include utility companies, banking, utilities, manufacturing, security, market research, pharmaceuticals, catalogue sales, order desk, customer service, technical queries (help desk), emergency dispatch, credit collections, food service, airline/hotel reservations etc. Some businesses even service internal functions through call centre. Examples of this include help desks, retail financial support, and sales support..</p>
                </div>
            </div>
        </div>
        <hr>
        <div class="container-fluid home-content1 mt-4">
            <div class="row">
                <div class="col-md-4 content1-left">
                    <h3 class="text-secondary">Our Service</h3>
                    <!-- <div class="content1-left"></div> -->
                </div>
                <div class="col-md-8 content1-right">
                    <h5>Inbound </h5>
                    <p> <img src="https://www.w3.org/WAI/WCAG21/Understanding/img/contrast-phone.png" style="float: right; width: 30%; height: 20%">
                        Inbound services focus on taking the incoming phone calls to your business or organization. Examples of the many inbound services include: telephone answering, order processing, dispatch and help desk services.
                        An inbound call center is responsible for incoming calls. When a customer calls, the call center picks up the phone and takes care of the customer’s request – it’s usually a matter of classic customer service. Inbound examples include telephone services such as a hotline, “first level support” or a help or service desk where customers can report faults, submit complaints or order products.<p>
                    Customer demands are rising continuously. Customers expect flawless communication, immediate answers and even faster solutions – but for many companies this is not always possible. Inbound call centers provide a solution – while you offer your customers excellent support, you gain more time for your core business. With a good call center, you optimize the customer experience and avoid a loss of revenue due to annoyed customers.
                     </p>
                    <p>
                    <h5>Outbound </h5>
                    <p> <img src="https://cdn1.iconfinder.com/data/icons/man-user-human-profile-avatar-business-person/100/09-1User_1-3-512.png" style="float: right; width: 30%; height: 20%">

                        An outbound call center is one in which call center agents make outbound calls to customers on behalf of a business or client. Calls made from the center can include telemarketing, sales or fund-raising calls, as well as calls for contact list updating, surveys or verification services. A call center may handle either outbound or inbound calls exclusively or might deal with a combination of the two. An outbound call center uses distinct metrics to measure agent success, such as cost per call, revenue earned, total calls made and tasks completed. An inbound call center uses different metrics, such as first call resolution (FCR). With the passage of legislation in 2003, the National Do Not Call Registry established a do-not-call list in the United States..</p>

                </div>
            </div>
        </div>
    </div>

</main>
<div id="column3">
    Contact:9841355789,Kathmandu Nepal
</div>
</body>
<img src="img/img.png">
<!-- START THE FEATURETTES -->
<!DOCTYPE html>
<html lang="en">

<body>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/lightbox.js"></script>
<script src="assets/js/custom.js"></script>
<script>
  //according to loftblog tut
  $(".main-menu li:first").addClass("active");

  var showSection = function showSection(section, isAnimate) {
    var direction = section.replace(/#/, ""),
        reqSection = $(".section").filter(
            '[data-section="' + direction + '"]'
        ),
        reqSectionPos = reqSection.offset().top - 0;

    if (isAnimate) {
      $("body, html").animate(
          {
            scrollTop: reqSectionPos
          },
          800
      );
    } else {
      $("body, html").scrollTop(reqSectionPos);
    }
  };

  var checkSection = function checkSection() {
    $(".section").each(function() {
      var $this = $(this),
          topEdge = $this.offset().top - 80,
          bottomEdge = topEdge + $this.height(),
          wScroll = $(window).scrollTop();
      if (topEdge < wScroll && bottomEdge > wScroll) {
        var currentId = $this.data("section"),
            reqLink = $("a").filter("[href*=\\#" + currentId + "]");
        reqLink
        .closest("li")
        .addClass("active")
        .siblings()
        .removeClass("active");
      }
    });
  };

  $(".main-menu").on("click", "a", function(e) {
    e.preventDefault();
    showSection($(this).attr("href"), true);
  });

  $(window).scroll(function() {
    checkSection();
  });
</script>
</body>
</html>


&lt;%&ndash;register modal&ndash;%&gt;
<!-- Modal -->
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
        if (userType == 'ADMIN') {
            console.log('add');
            document.getElementById("admin-block").hidden = false;
        } else if (userType == 'USER') {
            document.getElementById("user-block").hidden = false;
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
</html>--%>

<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    body {font-family: "Times New Roman", Georgia, Serif;}
    h1, h2, h3, h4, h5, h6 {
        font-family: "Playfair Display";
        letter-spacing: 5px;
    }
</style>
<body>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
    <img class="w3-image" src="https://img2.dp.ru/images/article/2020/06/26/EB20E0A5-B7B5-4B8B-8BB5-20447CD7B3B4.jpg" width="1600" height="800">
    <div class="w3-display-bottomleft w3-padding-large w3-opacity">
        <h1 class="w3-xxlarge">Le Catering</h1>
    </div>
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

    <!-- About Section -->
    <div class="w3-row w3-padding-64" id="about">
        <div class="w3-col m6 w3-padding-large w3-hide-small">
            <img src="https://www.gannett-cdn.com/-mm-/8bdbea49ecc308c09cd3412e8a668a82b73fd509/c=252-0-2039-1527/local/-/media/2015/06/19/Phoenix/Phoenix/635703469533935586-ThinkstockPhotos-103802038.jpg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
        </div>

        <div class="w3-col m6 w3-padding-large">
            <h1 class="w3-center">About Catering</h1><br>
            <h5 class="w3-center">Tradition since 1889</h5>
            <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use <span class="w3-tag w3-light-grey">seasonal</span> ingredients.</p>
            <p class="w3-large w3-text-grey w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
    </div>

    <hr>

    <!-- Menu Section -->
    <div class="w3-row w3-padding-64" id="menu">
        <div class="w3-col l6 w3-padding-large">
            <h1 class="w3-center">Our Menu</h1><br>
            <h4>Bread Basket</h4>
            <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>

            <h4>Honey Almond Granola with Fruits</h4>
            <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>

            <h4>Belgian Waffle</h4>
            <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>

            <h4>Scrambled eggs</h4>
            <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>

            <h4>Blueberry Pancakes</h4>
            <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>
        </div>

        <div class="w3-col l6 w3-padding-large">
            <img src="https://www.ncell.axiata.com/Upload/images/merosimmerojim.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
        </div>
    </div>

    <hr>

    <!-- Contact Section -->
    <div class="w3-container w3-padding-64" id="contact">
        <h1>Contact</h1><br>
        <p>We offer full-service catering for any event, large or small. We understand your needs and we will cater the food to satisfy the biggerst criteria of them all, both look and taste. Do not hesitate to contact us.</p>
        <p class="w3-text-blue-grey w3-large"><b>Catering Service, 42nd Living St, 43043 New York, NY</b></p>
        <p>You can also contact us by phone 00553123-2323 or email catering@catering.com, or you can send us a message here:</p>
        <form action="/action_page.php" target="_blank">
            <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
            <p><input class="w3-input w3-padding-16" type="number" placeholder="How many people" required name="People"></p>
            <p><input class="w3-input w3-padding-16" type="datetime-local" placeholder="Date and time" required name="date" value="2020-11-16T20:00"></p>
            <p><input class="w3-input w3-padding-16" type="text" placeholder="Message \ Special requirements" required name="Message"></p>
            <p><button class="w3-button w3-light-grey w3-section" type="submit">SEND MESSAGE</button></p>
        </form>
    </div>

    <!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
    <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>

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
</html>

<jsp:include page="footer.jsp"/>
