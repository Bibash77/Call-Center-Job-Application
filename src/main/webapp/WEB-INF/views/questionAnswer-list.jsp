<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #4CAF50;
            color: white;
        }
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

    </style>
</head>
<body class="background">
<div class="container" style="margin-top: 100px;">
    <div class="card">
        <div class="card-title secondary text-white">
            <h3 class="text-center">Job Applications</h3>
        </div>
        <div class="card-body">
            <%--<div class="row">
                <div class="col-md-12 order-md-2 mb-4">
                    <ul class="list-group mb-3" id="correct-answer">
                      <c:forEach items="${users}" var="user" varStatus="loop">
                          <li class="list-group-item d-flex justify-content-between lh-condensed cursor"
                              onclick="window.location.href = '/questionAnswer/${user.id}'">
                              <div class="col-md-12">
                                  <span class="float-right">
                                     <input type="radio" name="location" id="q121" value="1" ${user.feedBack.rating >= 1? 'checked' : ''}>
            <label for="q121"></label>
            <input type="radio" name="${loop.index}" id="q122" value="2" ${user.feedBack.rating >= 2? 'checked' : ''}>
            <label for="q122"></label>
            <input type="radio" name="${loop.index}" id="q123" value="3" ${user.feedBack.rating >= 3? 'checked' : ''}>
            <label for="q123"></label>
            <input type="radio" name="${loop.index}" id="q124" value="4" ${user.feedBack.rating >= 4? 'checked' : ''}>
            <label for="q124"></label>
            <input type="radio" name="${loop.index}" id="q125" value="5" ${user.feedBack.rating >= 5? 'checked' : ''}>
            <label for="q125"></label>
                                </span>
                                  <strong class="my-0"><u>${user.fullName}</u>

                                  </strong>
                                  <div class="mt-3">
                                      <small class="text-muted">
                                 ${user.feedBack.comments}
                                      </small>
                                      <small class="float-right text-danger mt-3">
                                          Date: <strong>${user.feedBack.commentedAt}</strong>
                                      </small>
                                  </div>
                              </div>
                          </li>
                      </c:forEach>
                    </ul>

                    <li class="list-group-item d-flex justify-content-between" id="no-answer">
                        <span>N/A</span>
                        <strong>Answers aren't available</strong>
                    </li>
                </div>
            </div>--%>
            <table class="table styled-table" id="customers">
                <tr>
                    <td>SN</td>
                    <td>Username</td>
                    <td>Email</td>
                    <td>Gender</td>
                    <td>Score</td>
                    <td>Score %</td>
                    <td>status</td>
                </tr>
                <c:forEach items="${users}" var="user" varStatus="loop">
<tr style="cursor: pointer;" onclick="window.location.href= '/question-answer/${user.id}'">
        <td>${loop.count}</td>
        <td>${user.userName}</td>
        <td>${user.email}</td>
        <td>${user.gender}</td>
        <td>${user.questionAnswer.totalPoint}</td>
        <td>${user.questionAnswer.totalPercentage}%</td>
        <td>${user.questionAnswer.totalPercentage > 40 ? 'pass' : 'fail'}</td>

</tr>  </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
<script>
    $('input[type="radio"]').click(function () {
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
</script>
</html>
<jsp:include page="footer.jsp"/>
