<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>회원정보수정</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        #wrapper {
            max-width: 1200px;
            margin: auto;
            display: flex;
        }

        #sidebar {
            padding: 20px;
            width: 20%;
            height: 100vh;
            border-right: 1px solid #ccc;
        }

        #content {
            padding: 20px;
            margin-top: 20px;
            width: 80%;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .row {
            display: flex;
            justify-content: center;
        }

        .sidebar-menu {
            list-style-type: none;
            padding: 0;
        }

        .sidebar-menu li a {
            text-decoration: none;
            color: black;
            display: block;
            padding: 10px;
            transition: all 0.3s;
        }

        .sidebar-menu li a:hover {
            background-color: #ddd;
        }

        .active {
            background-color: #ffe3a0;
            color: white;
        }

        #userEditForm {
            width: 700px;
        }

        .btn-outline-secondary{
            width: 130px;
            margin-right: 10px;
        }

        .btn-outline-secondary{
            margin-bottom: 10px;
        }
    </style>
    <script>
        function change_image(){
            window.open("${pageContext.request.contextPath}/mypage/proflieimgChange", "w", "left= -1100px, top=390px,width=400px, height=300px");
        }
        $(function () {
            $("#userEditForm").submit(function(){
                if($("#pwd").val() == ""){
                    alert("비밀번호를 입력해주세요.");
                    return false;
                }
                if($("#pwd").val() != $("#pwd-confirm").val()){
                    alert("비밀번호가 일치하지 않습니다.");
                    return false;
                }
            });
            var user_id = $("#userid").val();
            $(document).on('click', '#basicimg',function () {
                event.preventDefault();
                $.ajax({
                    url: "${pageContext.servletContext.contextPath}/mypage/basicimg",
                    type: "post",
                    data: {
                        user_id: user_id
                    },
                    async: false,
                    processData: false,
                    contentType: false,
                    success: function(result){
                        document.location.reload();
                    },
                    error : function(error){
                        console.log(error.responseText);
                    }
                });
            });
        });

        document.addEventListener('DOMContentLoaded', function() {
            var selectedLanguages = '${myvo.lang}'.split('/');
            selectedLanguages.forEach(function(lang) {
                var checkbox = document.getElementById('lang-' + lang);
                if (checkbox) {
                    checkbox.checked = true;
                }
            });
        });
    </script>
</head>

<body>
<div id="wrapper" class="container-fluid">
    <div id="sidebar">
        <br/>
        <ul class="sidebar-menu">
            <li><a href="${pageContext.servletContext.contextPath}/mypage/change_user">회원정보 수정</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/mypage/post_user">작성한글</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/mypage/friend_user">친구관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/mypage/save_chat">저장소</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/mypage/withdraw_user">탈퇴하기</a></li>
        </ul>
    </div>
    <div id="content" class="col-10">

        <div class="text-center mb-3">
            <img src="${pageContext.servletContext.contextPath}/image/profile/${myvo.profile_img}" id="profile_img" name="profile_img"
                 class="rounded-circle" alt="Profile Image" style="width: 150px; height: 150px; object-fit: cover; border: gray 1px solid">
        </div>

        <form method="post" action="${pageContext.servletContext.contextPath}/mypage/editProfileOk" id="userEditForm">
            <div class="row mb-3 mt-3">
                <label for="userid" class="col-sm-2 col-form-label">아이디</label>
                <div class="col-sm-10">
                    <span class="form-control" id="userid" name="user_id">${myvo.user_id}</span>
                </div>
            </div>
            <div class="row mb-3">
                <label for="username" class="col-sm-2 col-form-label">이름</label>
                <div class="col-sm-10">
                    <span class="form-control" id="username" name="username">${myvo.user_name}</span>
                </div>
            </div>
            <div class="row mb-3">
                <label for="email" class="col-sm-2 col-form-label">이메일</label>
                <div class="col-sm-10">
                    <span class="form-control" id="email" name="email">${myvo.email}</span>
                </div>
            </div>
            <div class="row mb-3">
                <label for="nation" class="col-sm-2 col-form-label">국적</label>
                <div class="col-sm-10">
                    <span class="form-control" id="nation" name="nation">${myvo.nation}</span>
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-form-label">사용가능언어</label>
                <div class="col-sm-10">
                    <input type="checkbox" class="btn-check" name="lang" id="lang-ko" value="ko" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-ko">한국어</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-en" value="en" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-en">English</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-ja" value="ja" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-ja">日本語</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-zn-CN" value="zn-CN" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-zn-CN">中國語-简体</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-zn-TW" value="zn-TW" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-zn-TW">中國語-繁体</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-vi" value="vi" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-vi">Tiếng Việt</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-th" value="th" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-th">แบบไทย</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-id" value="id" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-id">Indonésia</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-fr" value="fr" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-fr">Français</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-es" value="es" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-es">Español</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-ru" value="ru" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-ru">Русский</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-de" value="de" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-de">Deutsch</label>

                    <input type="checkbox" class="btn-check" name="lang" id="lang-it" value="it" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="lang-it">Italiano</label>
                </div>


            </div>
            <div class="row mb-3">
                <label for="intro" class="col-sm-2 col-form-label">자기소개</label>
                <div class="col-sm-10">
                    <span class="form-control" id="intro" name="profile_content">${myvo.profile_content}</span>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>