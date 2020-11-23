<jsp:include page="header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedback</title>
    <style>
        .styled-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width:  1050px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }
        .styled-table thead tr {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
        }
        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }
        .styled-table tbody tr.active-row {
            font-weight: bold;
            color: #009879;
        }
        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }

        .c-margin {
            margin-top: 10px;
        }
    </style>
</head>
<body class="background">
<input value="${user.id}" id="userId" hidden>
<div class="container" id="all" style="margin-top: 100px;">
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow-lg p-3">
                <div class="card-title">
                    <h6 class="text-center">User Detail</h6>
                </div>
                <div class="card-body">
                    <table class="styled-table">
                        <thead>
                        <tr></tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><strong>Full Name</strong></td>
                            <td>${user.fullName}</td>
                        </tr>
                        <tr>
                            <td><strong>User Name</strong></td>
                            <td>${user.userName}</td>
                        </tr>
                        <tr>
                            <td><strong>Email</strong></td>
                            <td>${user.email}</td>
                        </tr>
                        <tr>
                            <td><strong>Contact</strong></td>
                            <td>${user.phoneNumber}</td>
                        </tr>
                        <tr>
                            <td><strong>Gender</strong></td>
                            <td>${user.gender}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <c:if test="${user.questionAnswer ne null}">
                <div class="card-footer">
                    <strong>Overall Status</strong>
                    <span class="float-right">${user.questionAnswer.totalPercentage > 40 ? 'pass' : 'fail'}</span>
                </div>
                </c:if>
            </div>
        </div>
<c:if test="${user.questionAnswer ne null}">
        <div class="col-md-12" style="margin-top: 100px;">
            <div class="card shadow  p-3">
                <div class="card-title">
                    <h6 class="text-center">User Answers</h6>
                </div>
                <div class="body">

                    <table class="styled-table">
                        <tr>
                            <td>#</td>
                            <td>Question</td>
                            <td>Given Answer</td>
                            <td>Correct Answer</td>
                            <td>Status</td>
                        </tr>
                        <tr>
                            <td>Qno.1</td>
                            <td><p class="c-margin">When was Spice Nepal was rebranded as Mero Mobile?</p></td>
                            <td>${correctAnswers.spiceNepal}</td>
                            <td>C) 2005 A.D</td>
                            <td>
                             <c:if test="${correctAnswers.spiceNepal eq 'a.2004 A.D'}">
                                 <i class="fa fa-check-circle" aria-hidden="true"></i>
                             </c:if>
                                <c:if test="${correctAnswers.spiceNepal ne 'a.2004 A.D'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                             </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.2</td>
                            <td><p class="c-margin">What is the call rate per min?</p></td>
                            <td>${correctAnswers.callRate}</td>
                            <td> A) 2.54Rs</td>
                            <td>
                                <c:if test="${correctAnswers.callRate eq 'a. 2.54Rs'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.callRate ne 'a. 2.54Rs'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.3</td>
                            <td><p class="c-margin">How many time you can transfer the balance?</p></td>
                            <td>${correctAnswers.balanceTranasferTimes}</td>
                            <td> B) 3</td>
                            <td>
                                <c:if test="${correctAnswers.balanceTranasferTimes eq 'b. 3'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.balanceTranasferTimes ne 'b. 3'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.4</td>
                            <td><p class="c-margin">Postpaid user can take the loan.</p></td>
                            <td>${correctAnswers.postoaidUserLoan}</td>
                            <td>B) False</td>
                            <td>
                                <c:if test="${correctAnswers.postoaidUserLoan eq 'b. False'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.postoaidUserLoan ne 'b. False'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.5</td>
                            <td><p class="c-margin">How many time customer can freely call 9005?</p></td>
                            <td>${correctAnswers.customerFreeCall}</td>
                            <td> C) 30</td>
                           <td>
                               <c:if test="${correctAnswers.customerFreeCall eq 'c. 30'}">
                                   <i class="fa fa-check-circle" aria-hidden="true"></i>
                               </c:if>
                               <c:if test="${correctAnswers.customerFreeCall ne 'c. 30'}">
                                   <i class="fa fa-close" aria-hidden="true"></i>
                               </c:if>
                           </td>
                        </tr>
                        <tr>
                            <td>Qno.6</td>
                            <td><p class="c-margin">Where customer can complain their problem?</p></td>
                            <td>${correctAnswers.customerComplain}</td>
                            <td> A) 9005</td>
                            <td>
                                <c:if test="${correctAnswers.customerComplain eq 'a. 9005'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.customerComplain ne 'a. 9005'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.7</td>
                            <td><p class="c-margin">Do you need Pin no to transfer the balance?</p></td>
                            <td>${correctAnswers.pin}</td>
                            <td> B) No</td>
                            <td>
                                <c:if test="${correctAnswers.pin eq 'b. No'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.pin ne 'b. No'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.8</td>
                            <td><p class="c-margin">
                                Can I recharge with serial.no after the recharge pin being damaged?</p></td>
                            <td>${correctAnswers.recharge}</td>
                            <td>A) Yes</td>
                            <td>
                                <c:if test="${correctAnswers.recharge eq 'a. Yes'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.recharge ne 'a. Yes'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.9</td>
                            <td><p class="c-margin">4g is available in urban areas only?</p></td>
                            <td>${correctAnswers.fourG}</td>
                            <td>B) False</td>
                            <td>
                                <c:if test="${correctAnswers.fourG eq 'b. False'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.fourG ne 'b. False'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.10</td>
                            <td><p class="c-margin">How can you check if your name has been registered or not?</p></td>
                            <td>${correctAnswers.nameRegister}</td>
                            <td>C)*903#</td>
                            <td>
                                <c:if test="${correctAnswers.nameRegister eq 'c. *903#'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.nameRegister ne 'c. *903#'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.11</td>
                            <td><p class="c-margin">What are the requirements to upgrade sim to 4g?</p></td>
                            <td>${correctAnswers.requirements}</td>
                            <td> C) Original Document only</td>
                            <td>
                                <c:if test="${correctAnswers.requirements eq 'c. Original Document only'}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.requirements ne 'c. Original Document only'}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>Qno.12</td>
                            <td><p class="c-margin">How can you check your balance?</p></td>
                            <td>${correctAnswers.balance}</td>
                            <td> D) All of the above</td>
                            <td>
                                <c:if test="${correctAnswers.balance eq 'd. None of the above '}">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                </c:if>
                                <c:if test="${correctAnswers.balance ne 'd. None of the above '}">
                                    <i class="fa fa-close" aria-hidden="true"></i>
                                </c:if>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
</c:if>
    </div>
        <c:if test="${user.questionAnswer ne null}">
    <div class="col-md-12" style="margin-top: 100px;">
        <div class="card shadow  p-3">
            <div class="card-title">
                <h6 class="text-center">Summary</h6>
            </div>
            <div class="body">
                <table class="styled-table table text-center">
                    <tr>
                        <td><strong>Total Correct Answer</strong></td>
                        <td>${user.questionAnswer.totalPoint/5}</td>
                    </tr>
                    <tr>
                        <td><strong>Obtained Marks</strong></td>
                        <td><strong>${user.questionAnswer.totalPoint}</strong></td>
                    </tr>
                    <tr>
                        <td><strong>Percentage</strong></td>
                        <td><strong>${user.questionAnswer.totalPercentage}%</strong></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
        </c:if>

</div>
</body>
<script>
</script>
<script>
    // select value if exam is already taken
    $(document).ready(function () {
        const userId = document.getElementById("userId").value;
        $.ajax({
            url: "${pageContext.request.contextPath}/feedback/" + userId,
            type: "get",
            contentType: "application/json",
            success: function (data) {
                console.log(data);
                if (data == null) {
                    alert("no previous exam taken !!");

                } else {
                    const answers = JSON.parse(data);
                    Object.keys(answers).forEach(dataKey => {
                        const ele = document.getElementsByName(dataKey);
                        for (let i = 0; i < ele.length; i++) {
                            if (ele[i].value <= answers[dataKey])
                                ele[i].checked = true;
                        }
                    });
                    $("#all :input").attr("disabled", true);
                }
            },

        });


        $('input[type="checkbox"]').click(function () {
            console.log("trigger");
            var theNumber = $(this).attr('id').slice(-1);
            $(this).siblings('label').each(function () {
                var sibNumber = $(this).attr('for').slice(-1);
                if (sibNumber <= theNumber) {
                    $(this).addClass('on');
                } else {
                    $(this).removeClass('on');
                }
            });
        });
    })
</script>
</html>
<jsp:include page="footer.jsp"/>
