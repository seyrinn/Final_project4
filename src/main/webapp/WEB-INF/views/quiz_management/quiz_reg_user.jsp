<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>should be</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container {
            width: 1200px;
            display: flex;
        }

        #side_menu {
            padding: 98px 0 0 0;
            width: 150px;
            height: 1000px;

        }

        #side_menu {
            list-style-type: none;
        }

        #side_menu li a {
            text-decoration: none;
            color: black;
            display: block;
            padding: 10px;
        }

        #side_menu li a:hover {
            background-color: #ddd;
        }

        #member_management {
            width: 100%;
            height: 1000px;
            margin: 50px auto;

        }

        #quiz_list_title {
            text-align: center;
            border-bottom: 1px solid #000;

        }

        /*#quiz_grade{
            display: flex;
            flex-direction: column;
              justify-content: space-around;
              margin: 10px auto;
        }*/

        #quiz_list_title {
            text-align: center;
            border-bottom: 4px solid #000;

        }

        #user_input_list {
            width: 100%;
            height: 1000px;
        }

        /*#quiz_grade{
            display: flex;
            flex-direction: column;
              justify-content: space-around;
              margin: 10px auto;
        }*/
        #user_input_list {
            height: 800px;

        }

        .user_input {
            text-align: center;
            width: 100%;
            height: 150px;
            display: flex;
            border-bottom: 1px solid #ddd;
        }

        #user_quiz_grade {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            width: 19%;
            margin: 3px 5px;
        }

        #user_quiz_grade > button {
            width: 100%;
            height: 40px;
        }

        #do_reg {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            width: 19%;
            margin: 3px 5px;
        }

        #do_reg > button {
            width: 100%;
            height: 60px;
        }

        #user_quiz {
            width: 30%;
            line-height: 150px;
            font-size: 1.5em;
        }

        #user_answer {
            width: 30%;
            line-height: 150px;
            font-size: 1.5em;
        }

        h1 {
            padding-bottom: 20px;
        }

        #side_menu > li:nth-child(7) {
            font-weight: bold;
            font-size: 18px;
        }


    </style>
</head>
<body>
<div class="container">
    <div id="side_bar">
        <ul id="side_menu">
            <li><a href="${pageContext.servletContext.contextPath}/admin">대시보드</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/member/management">현재회원관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/suspended/management">정지회원관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/withdrawn/management">탈퇴회원관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/board">게시글관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/reply">댓글관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/quiz/list">퀴즈관리</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin/chat/management">채팅관리</a></li>

        </ul>
    </div>
    <div id="member_management">
        <h1 id="quiz_list_title">유저 퀴즈 등록</h1>

        <div id="user_input_list">
            <div class="user_input">
                <div id="user_quiz">단어</div>
                <div id="user_answer">사용자가 입력한 정답</div>
                <div id="user_quiz_grade">
                    <button class="btn btn-secondary">쉬움</button>
                    <button class="btn btn-secondary">중간</button>
                    <button class="btn btn-secondary">어려움</button>
                </div>
                <div id="do_reg">
                    <button class="btn btn-dark">등록</button>
                    <button class="btn btn-dark">삭제</button>
                </div>
            </div>

            <div class="user_input">
                <div id="user_quiz">단어</div>
                <div id="user_answer">사용자가 입력한 정답</div>
                <div id="user_quiz_grade">
                    <button class="btn btn-secondary">쉬움</button>
                    <button class="btn btn-secondary">중간</button>
                    <button class="btn btn-secondary">어려움</button>
                </div>
                <div id="do_reg">
                    <button class="btn btn-dark">등록</button>
                    <button class="btn btn-dark">삭제</button>
                </div>
            </div>

            <div class="user_input">
                <div id="user_quiz">단어</div>
                <div id="user_answer">사용자가 입력한 정답</div>
                <div id="user_quiz_grade">
                    <button class="btn btn-secondary">쉬움</button>
                    <button class="btn btn-secondary">중간</button>
                    <button class="btn btn-secondary">어려움</button>
                </div>
                <div id="do_reg">
                    <button class="btn btn-dark">등록</button>
                    <button class="btn btn-dark">삭제</button>
                </div>
            </div>
        </div>


    </div>
</div>
</body>
</html>