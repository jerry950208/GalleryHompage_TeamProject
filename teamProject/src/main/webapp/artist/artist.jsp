<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/artist_Frame.css"/>
    <script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(document).ready(function () {
                $("#Artists").css("color", "lightgray").on("click", function (event) {
                    event.preventDefault();
                });
                // id가 artist_info_image인 태그 전체 선택 -> 숨기기
                $("img[class^='artist_info_image']").hide();
            });

            // 첫번째 인덱스는 gt에 적용이 안되므로 따로
            $(".artist_info:eq(0)").hover(function () {
                $(this).children().fadeIn(400);
            }, function () {
                $(this).children(".artist_info_image").fadeOut(400);
            });
            $(".artist_info:gt(0)").hover(function () {
                $(this).children().fadeIn(400);
            }, function () {
                $(this).children(".artist_info_image").fadeOut(400);
            });
        });
    </script>
</head>
<body>
<div id="artist_main">
    <div id="artist_header">

    </div>

    <div id="artist_section">
        <div>
            <c:forEach var="dto" items="${list }">
                <a href="#" id="artist_1">
                    <div id="artist_info" class="artist_info">
                        <img src="${dto.image }" width="200px" height="217px" class="artist_info_image"/>
                        <div>
                            <div id="artist_info_name">
                                <div id="artist_info_name_title">${dto.titleName}</div>
                                <div id="artist_info_name_description">${dto.name}</div>
                            </div>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>

    <div id="artist_footer">

    </div>
</div>
</body>
</html>
