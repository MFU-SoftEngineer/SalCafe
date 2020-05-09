<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page import="Model.*"%>
<%@ page import="Service.Impl.*"%>
<%@ page import="Dao.Impl.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat.*"%>

<%

int userId = Integer.parseInt(request.getParameter("userId"));
String userName = request.getParameter("userName");
String userPassWord = request.getParameter("userPassWord");
int userPhoneNumber = Integer.parseInt(request.getParameter("userPhoneNumber"));
String userEmail = request.getParameter("userEmail");
String userDefaultAddress = request.getParameter("userDefaultAddress");
String userState = request.getParameter("userState") ;
String createTimes = null;
int userGender = Integer.parseInt((request.getParameter("userGender") == null ? "0" : request.getParameter("userGender")));


int userType = Integer.parseInt((request.getParameter("userType") == null ? "3" : request.getParameter("userType")));

User user = new User(userId,userName,userPassWord,userPhoneNumber,userEmail,userDefaultAddress,userState,null,userGender,userType);
UserServiceImpl userServiceImpl = new UserServiceImpl();
userServiceImpl.createUser(user);

User us = new User();
us.setUserId(userId);
us.setUserName(userName);
us.setUserPassWord(userPassWord);
us.setUserPhoneNumber(userPhoneNumber);
us.setUserEmail(userEmail);
us.setUserGender(userGender);
UserDaoImpl impl = new UserDaoImpl();
if(impl.createUser(us)==true){
	response.sendRedirect("login.jsp");
}else{
	response.sendRedirect("register.jsp");
}

%>