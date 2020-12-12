<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>Market Price</title>
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

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #F1B24A;
            color: white;
        }

        .styled-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            font-family: sans-serif;
            min-width: 1050px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .styled-table thead tr {
            background-color: #F1B24A;
            color: #ffffff;
            text-align: left;
        }

        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }

        .styled-table tbody tr.active-row {
            font-weight: bold;
            color: #F1B24A;
        }

        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .styled-table tbody tr:last-of-type {
            border-bottom: 2px solid #F1B24A;
        }
    </style>
</head>
<body class="background">
<div class="container" style="margin-top: 100px;">
    <div class="card border-primary">
        <div class="card-title">
            <h3 class="text-center">Weather Data</h3>
        </div>
        <div class="card-body">
            <table class="table styled-table" id="customers">
                <tr>
                    <th>Location</th>
                    <td><strong id="country"></strong>/<strong id="name"></strong></td>
                </tr>
                <tr>
                    <th>sunrise</th>
                    <td><strong id="sunrise"></strong></td>
                </tr>  <tr>
                <th>sunset</th>
                <td><strong id="sunset"></strong></td>
            </tr>
                <tr>
                    <th>Temperature</th>
                    <td><strong id="temp"></strong></td>
                </tr>
                <tr>
                    <th>Feels Like</th>
                    <td><strong id="feels_like"></strong></td>
                </tr>
                <tr>
                    <th>Visibility</th>
                    <td><strong id="visibility"></strong></td>
                </tr>
                <tr>
                    <th>Weather Discription</th>
                    <td><strong id="description"></strong></td>
                </tr>

            </table>
        </div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        showData();
    });

    function showData() {
        $.ajax({
            url: "http://api.openweathermap.org/data/2.5/weather?id=1283240&lang=en&units=metric&APPID=845ebe51ff2d4509697271f731091f6c&fbclid=IwAR0iyLnLi6-iQUB106-5uPm6dZDIlwGhrQ6qCX-hLpo1p-z8MCjx4jnwgpo",
            type: "GET",
            success: function (data) {

                if (data == null) {
                    alert("no data found !!");

                } else {
                    console.log(data);
                 document.getElementById("name").innerText = data.name;
                 document.getElementById("humidity").innerText = data.main.humidity + ' g.kg-1';
                 document.getElementById("pressure").innerText = data.main.pressure + ' pascal';
                 document.getElementById("temp_max").innerText = data.main.temp_max + '° celsius';
                 document.getElementById("temp_min").innerText = data.main.temp_min + '° celsius';
                    document.getElementById("feels_like").innerText = data.main.feels_like + '° celsius';
                    document.getElementById("description").innerText = data.weather[0].description;
                }
            },

        });

    }
</script>
</html>
