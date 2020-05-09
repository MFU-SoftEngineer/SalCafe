
<%@ page import="Model.*"%>
<%@ page import="Service.Impl.*"%>
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
int userGender = Integer.parseInt(request.getParameter("userGender"));
int userType = Integer.parseInt(request.getParameter("userType"));

User user = new User(userId,userName,userPassWord,userPhoneNumber,userEmail,userDefaultAddress,userState,null,userGender,userType);
UserServiceImpl userServiceImpl = new UserServiceImpl();
userServiceImpl.createUser(user);

%>