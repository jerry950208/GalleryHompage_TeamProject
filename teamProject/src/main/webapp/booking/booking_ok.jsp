<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        #booking_ok_header {
            width: 600px;
            height: 200px;
            border-bottom: 4px solid;
            margin-left: 680px;
        }

        #booking_ok_header div {
            float: right;
            margin-top: 150px;
            font-size: 25px;
            font-family: barlow-medium, barlow, sans-serif;
        }

        #booking_ok_section {
            width: 1400px;
            margin: auto;
            padding-top: 100px;
        }

        #booking_ok_section_info {
            margin: auto;
            width: 500px;
            font-family: barlow-medium, barlow, sans-serif;
        }

        #booking_ok_section_info > div:nth-child(1) {
            font-size: 20px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 15px;
        }

        #booking_ok_section_info > div:nth-child(2) > div:nth-child(1) {
            font-size: 17px;
            margin-top: 20px;
        }

        #booking_ok_section_info > div:nth-child(2) > div:nth-child(2) > table {
            border-collapse: collapse;
            border: none;
            margin-top: 20px;
        }

        #booking_ok_section_info > div:nth-child(2) > div:nth-child(2) > table, td {
            padding: 5px;
        }

        #booking_ok_section_info > div:nth-child(2) > div:nth-child(2) > table > tbody > tr > td:nth-child(1) {
            color: #767676;
        }

        #booking_ok_section_info > div:nth-child(2) > div:nth-child(2) > div {
            margin-top: 50px;
        }

        #booking_share_btn {
            padding: 12px 127.5px;
            border-radius: 10px;
            background-color: black;
            color: white;
            box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.8);
            cursor: pointer;
            border: none;
            text-decoration: none;
            font-size: 13px;
        }

        #booking_share_btn:active {
            box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.7);
            position: relative;
            top: 2px;
            left: 2px;
        }

        #booking_cancel_btn {
            width: 300px;
            height: 40px;
            border-radius: 10px;
            background-color: black;
            color: white;
            box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.8);
            cursor: pointer;
            border: none;
            margin-top: 20px;
        }

        #booking_cancel_btn:active {
            box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.7);
            position: relative;
            top: 2px;
            left: 2px;
        }

        #booking_ok_footer {
            height: 150px;
            clear: both;
        }
    </style>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script>
        document.title = "????????????";

        $(function () {
            $("#booking_cancel_btn").click(function () {
                location.href = "booking_cancel.do?name=${name}";
            });
        });

        function fn_sendFB() {
            var thisUrl = document.URL;
            // ????????? ?????? JavaScript ??? ??????
            Kakao.init('43cbdd46b82e96899e708321a8a46547');

            // ??????????????? ?????? ??????
            Kakao.Link.createDefaultButton({
                container: '#booking_share_btn', // HTML?????? ????????? ID???
                objectType: 'feed',
                content: {
                    title: "Restoration of Relationships", // ????????? ??????
                    description: "Restoration of Relationships", // ????????? ??????
                    imageUrl: thisUrl, // ????????? URL
                    link: {
                        mobileWebUrl: thisUrl,
                        webUrl: thisUrl
                    }
                },
                buttons: [
                    {
                        title: '????????? ??????',
                        link: {
                            mobileWebUrl: thisUrl,
                        },
                    },
                    {
                        title: '????????? ??????',
                        link: {
                            mobileWebUrl: thisUrl,
                        },
                    },
                ]
            });
        }
    </script>
</head>
<body>
<div id="booking_ok_wrap">
    <div id="booking_ok_header">
        <div>????????????</div>
    </div>

    <div id="booking_ok_section">
        <div id="booking_ok_section_info">
            <div>
                ?????? ??????
            </div>
            <div>
                <div>
                    Restoration of Relationships
                </div>
                <div>
                    <table>
                        <tr>
                            <td>??????</td>
                            <td>${date}</td>
                        </tr>
                        <tr>
                            <td>??????</td>
                            <td>
                                ??????(${tot}) &nbsp;
                                <c:if test="${adult eq null}">

                                </c:if>
                                <c:if test="${adult ne null}">
                                    ??????(${adult}) &nbsp;
                                </c:if>

                                <c:if test="${teen eq null}">

                                </c:if>
                                <c:if test="${teen ne null}">
                                    ???????????????(${teen})
                                </c:if>
                            </td>
                        <tr>
                            <td>?????????</td>
                            <td>${name}</td>
                        </tr>
                        <input type="hidden" name="name" value="${name}">
                        <input type="hidden" name="exhibition" value="${exhibition}">
                        <tr>
                            <td>?????????</td>
                            <td>0${tel}</td>
                        </tr>
                        <tr>
                            <td>?????????</td>
                            <td>${email}</td>
                        </tr>
                        </tr>
                    </table>
                    <div>
                        <a href="#" id="booking_share_btn" onclick="fn_sendFB();return false;"
                           class="kakaotalk" target="_self" title="???????????? ????????????">????????????</a><br>
                        <input type="button" value="????????????" id="booking_cancel_btn">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="booking_ok_footer">

    </div>
</div>
</body>
</html>
