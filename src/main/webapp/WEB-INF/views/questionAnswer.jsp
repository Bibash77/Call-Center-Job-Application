<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"/>
<html>
<head>
    <title>FeedBack</title>
</head>
<style>
    /*label:before {*/
    /*    content: '☆';*/
    /*    color: white;*/
    /*    font-size: 2em;*/
    /*}*/
    /*label.on:before {*/
    /*    content: '★';*/
    /*    color: #eaea05;*/
    /*    !* uncomment for iOS *!*/
    /*    !*   font-size: 2.4em;*/
    /*      top: -0.1em;*/
    /*      left: -0.1em; *!*/
    /*}*/
    /*input:checked + label:before {*/
    /*    content: '★';*/
    /*    color: #eaea05;*/
    /*    !* uncomment for iOS *!*/
    /*    !*   font-size: 2.4em;*/
    /*      top: -0.1em;*/
    /*      left: -0.1em; *!*/
    /*}*/
    /*label {*/
    /*    display: inline-block;*/
    /*    cursor: pointer;*/
    /*    position: relative;*/
    /*    padding-left: 25px;*/
    /*    margin-right: 15px;*/
    /*    font-size: 20px;*/
    /*}*/
    /*label:before {*/
    /*    display: inline-block;*/
    /*    width: 20px;*/
    /*    height: 20px;*/
    /*    margin-right: 11px;*/
    /*    position: absolute;*/
    /*    left: 0;*/
    /*    border-radius: 11px;*/
    /*}*/
    input[type=radio] {
        display: none;
        -webkit-appearance: none;
    }

    /* Non-essential */
    body {
        margin: 2em;
        padding-left: 5px;
        text-align: left;
        /* remove gray highlight on tap in iOS */
        -webkit-tap-highlight-color:transparent;
    }
    .question {
        margin-bottom: 8em;
    }
    #q1 {
        margin-top: 6em;
    }
    p {
        color: white;
        font-family: Bitter, sans-serif;
        font-size: 1em;
    }
    #submit {
        font-size: 24px;
        font-family: Bitter, sans-serif;
        color: #448AC1;
        background-color: white;
        width: 80px;
        height: 80px;
        border: none;
        border-radius: 40px;
    }


</style>
<body class="background">
<div style="border: double #ffffff; margin-top: 110px;">
    <div class="row">
        <div class="offset-4 col-md-4">
            <h4 class="text-white"><u>Submit Your Answers</u></h4>
        </div>
    </div>
    <form id="question-form">
        <div class="row">

        </div>
        <div class="col-md-12 pb-3">
            <label>1.When was Spice Nepal was rebranded as Mero Mobile?</label>

            <div class="custom-control custom-radio">
                <input id="spiceNepal-2004" name="spiceNepal" type="radio"
                       class="custom-control-input" value="a.2004 A.D"
                       required>
                <label class="custom-control-label d-inline-flex" for="spiceNepal-2004">
                    a.2004 A.D
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input  name="spiceNepal" type="radio" value="b.2005 A.D" class="custom-control-input" id="spiceNepal-2005">
                <label class="custom-control-label d-inline-flex" for="spiceNepal-2005">
                    b.2005 A.D
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input  name="spiceNepal" type="radio" class="custom-control-input" value="c.2008 A.D" required id="spiceNepal-2008">
                <label class="custom-control-label d-inline-flex" for="spiceNepal-2008" >
                    c.2008 A.D
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input  name="spiceNepal" type="radio" class="custom-control-input" id="spiceNepal-2010" value="d.2010 A.D">
                <label class="custom-control-label d-inline-flex" for="spiceNepal-2010">
                    d.2010 A.D
                </label>
            </div>
        </div>

        <div class="col-md-12 pb-3">
            <label>2) What is the call rate per min?</label>
            <div class="custom-control custom-radio">
                <input id="callRate-2.54" name="callRate" type="radio" class="custom-control-input" value="a. 2.54Rs" required>
                <label class="custom-control-label d-inline-flex" for="callRate-2.54">
                    a. 2.54Rs
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="callRate-2.52" name="callRate" type="radio" value="b. 2.52Rs" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="callRate-2.52">
                    b. 2.52Rs
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="callRate-2.56" name="callRate" type="radio" value="c. 2.56Rs" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="callRate-2.56">
                    c. 2.56Rs
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="callRate-2.55" name="callRate" type="radio" class="custom-control-input" value="d. 2.55Rs" required>
                <label class="custom-control-label d-inline-flex" for="callRate-2.55">
                    d. 2.55Rs
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>3) How many time you can transfer the balance?</label>
            <div class="custom-control custom-radio">
                <input id="balanceTranasferTimes-2" name="balanceTranasferTimes" type="radio" class="custom-control-input" value="a. 2" required>
                <label class="custom-control-label d-inline-flex" for="balanceTranasferTimes-2">
                    a. 2
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceTranasferTimes-3" name="balanceTranasferTimes" type="radio" value="b. 3" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="balanceTranasferTimes-3">
                    b. 3
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceTranasferTimes-4" name="balanceTranasferTimes" type="radio" value="c. 4" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="balanceTranasferTimes-4">
                    c. 4
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceTranasferTimes-none" name="balanceTranasferTimes" type="radio" class="custom-control-input" value="d. None of the above" required>
                <label class="custom-control-label d-inline-flex" for="balanceTranasferTimes-none">
                    d. None of the above
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>4) Postpaid user can take the loan</label>
            <div class="custom-control custom-radio">
                <input id="postoaidUserLoan-true" name="postoaidUserLoan" type="radio" class="custom-control-input" value="a. True" required>
                <label class="custom-control-label d-inline-flex" for="postoaidUserLoan-true">
                    a. True
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="postoaidUserLoan-false" name="postoaidUserLoan" type="radio" value="b. False" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="postoaidUserLoan-false">
                    b. False
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>5)How many time customer can freely call 9005?</label>
            <div class="custom-control custom-radio">
                <input id="customerFreeCall-10" name="customerFreeCall" type="radio" class="custom-control-input" value="a. 10" required>
                <label class="custom-control-label d-inline-flex" for="customerFreeCall-10">
                    a. 10
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerFreeCall-20" name="customerFreeCall" type="radio" value="b. 20" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="customerFreeCall-20">
                    b. 20
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerFreeCall-30" name="customerFreeCall" type="radio" value="c. 30" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="customerFreeCall-30">
                    c. 30
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerFreeCall-none" name="customerFreeCall" type="radio" class="custom-control-input" value="d. None of the above" required>
                <label class="custom-control-label d-inline-flex" for="customerFreeCall-none">
                    d. None of the above
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>6) Where customer can complain their problem?</label>
            <div class="custom-control custom-radio">
                <input id="customerComplain-9005" name="customerComplain" type="radio" class="custom-control-input" value="a. 9005" required>
                <label class="custom-control-label d-inline-flex" for="customerComplain-9005">
                    a. 9005
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerComplain-9006" name="customerComplain" type="radio" value="b. 9006" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="customerComplain-9006">
                    b. 9006
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerComplain-9004" name="customerComplain" type="radio" value="c. 9004" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="customerComplain-9004">
                    c. 9004
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="customerComplain-9008" name="customerComplain" type="radio" class="custom-control-input" value="d. 9008" required>
                <label class="custom-control-label d-inline-flex" for="customerComplain-9008">
                    d. 9008
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>7) Do you need Pin.no to transfer the balance?</label>
            <div class="custom-control custom-radio">
                <input id="pin-yes" name="pin" type="radio" class="custom-control-input" value="a. Yes" required>
                <label class="custom-control-label d-inline-flex" for="pin-yes">
                    a. Yes
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="pin-No" name="pin" type="radio" value="b. No" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="pin-No">
                    b. No
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>8)  I have damaged the recharge pin.no but I have correct serial.no. Can I recharge it or not?</label>
            <div class="custom-control custom-radio">
                <input id="recharge-yes" name="recharge" type="radio" class="custom-control-input" value="a. Yes" required>
                <label class="custom-control-label d-inline-flex" for="recharge-yes">
                    a. Yes
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="recharge-No" name="recharge" type="radio" value="b. No" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="recharge-No">
                    b. No
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>9) 4g is available in urban areas only?</label>
            <div class="custom-control custom-radio">
                <input id="fourG-yes" name="fourG" type="radio" class="custom-control-input" value="a. True" required>
                <label class="custom-control-label d-inline-flex" for="fourG-yes">
                    a. True
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="fourG-No" name="fourG" type="radio" value="b. False" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="fourG-No">
                    b. False
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>10) How can you check if your name has been registered or not?</label>
            <div class="custom-control custom-radio">
                <input id="nameRegister-901" name="nameRegister" type="radio" class="custom-control-input" value="a. *901#" required>
                <label class="custom-control-label d-inline-flex" for="nameRegister-901">
                    a. *901#
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="nameRegister-902" name="nameRegister" type="radio" value="b. *902#" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="nameRegister-902">
                    b. *902#
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="nameRegister-903" name="nameRegister" type="radio" value="c. *903#" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="nameRegister-903">
                    c. *903#
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="nameRegister-none" name="nameRegister" type="radio" class="custom-control-input" value="d. None of the Above" required>
                <label class="custom-control-label d-inline-flex" for="nameRegister-none">
                    d. None of the Above
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>11) What are the requirements to upgrade sim to 4g?</label>
            <div class="custom-control custom-radio">
                <input id="requirements-100" name="requirements" type="radio" class="custom-control-input" value="a. Original Document/Photo/100Rs" required>
                <label class="custom-control-label d-inline-flex" for="requirements-100">
                    a. Original Document/Photo/100Rs
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="requirements-1" name="requirements" type="radio" value="b. Original Document/Photo/1Rs" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="requirements-1">
                    b. Original Document/Photo/1Rs
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="requirements-doc" name="requirements" type="radio" value="c. Original Document only" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="requirements-doc">
                    c. Original Document only
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="requirements-none" name="requirements" type="radio" class="custom-control-input" value="d. None of the above " required>
                <label class="custom-control-label d-inline-flex" for="requirements-none">
                    d. None of the above
                </label>
            </div>
        </div>
        <div class="col-md-12 pb-3">
            <label>12) How can you check your balance?</label>
            <div class="custom-control custom-radio">
                <input id="balance-100" name="balance" type="radio" class="custom-control-input" value="a. *901#" required>
                <label class="custom-control-label d-inline-flex" for="balance-100">
                    a. *901#
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceSms" name="balance" type="radio" value="b. Type A and Send  90011" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="balanceSms">
                    b. Type A and Send  90011
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceDail" name="balance" type="radio" value="c. Dail 901 and follow the instruction" class="custom-control-input" required>
                <label class="custom-control-label d-inline-flex" for="balanceDail">
                    c. Dail 901 and follow the instruction
                </label>
            </div>
            <div class="custom-control custom-radio">
                <input id="balanceAll" name="balance" type="radio" class="custom-control-input" value="d. None of the above " required>
                <label class="custom-control-label d-inline-flex" for="balanceAll">
                    d. All of the above
                </label>
            </div>
        </div>

        <button type="button" class="btn btn-sucess" value="ok" id="submit" onclick="submitForm()">Submit Answer</button>
    </form>
</div>

<script>
  // $('input[type="radio"]').click(function() {
  //     var theNumber = $(this).attr('id').slice(-1);
  //     $(this).siblings('label').each(function() {
  //         var sibNumber = $(this).attr('for').slice(-1);
  //         if (sibNumber <= theNumber) {
  //             $(this).addClass('on');
  //         } else {
  //             $(this).removeClass('on');
  //         }
  //     });
  // });
  const correctAnswer = {
    spiceNepal: 'b.2005 A.D',
    callRate: 'a. 2.54Rs',
    balanceTranasferTimes: 'b. 3',
    postoaidUserLoan: 'b. False',
    customerFreeCall: 'c. 30',
    customerComplain: 'a. 9005',
    pin: 'b. No',
    recharge: 'a. Yes',
    fourG : 'b. False',
      nameRegister: 'c. *903#',
    requirements: 'c. Original Document only',
    balance: 'c. Dail 901 and follow the instruction',
  };
  function submitForm() {
    let allData = {};
    let questionAnswerData = {};
    const questionAnswer = $('#question-form').serializeArray();
    let totalmarks = 0;
    console.log(questionAnswer);
    if(questionAnswer.length < 11){
      alert("please fill all data");
      return;
    }
    questionAnswer.forEach(data => {
      questionAnswerData[data.name] = data.value;
      if(correctAnswer[data.name] === data.value) {
        totalmarks += 5;
      }
      if(data.value == null || data.value == '') {
        valid = false;
      }
    });
    allData['totalPoint'] = totalmarks;
    allData['ratingData'] = JSON.stringify(questionAnswerData);
    $.ajax({
      url:"${pageContext.request.contextPath}/questionAnswer/save/"+ sessionStorage.getItem("userId"),
      type:"post",
      contentType:"application/json",
      data: JSON.stringify(allData),
      success:function(data){
        console.log(data);
        window.location.href = '${pageContext.request.contextPath}/home';
      },

    });

  }
</script>

</body>
</html>
<jsp:include page="footer.jsp"/>
