<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Server</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style32 {font-size: 12px}
.style34 {color: #FFFF00}
.style35 {font-size: 12px; color: #FFFF00; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style2">SAFE HEALTH DATA SHARING: A METHOD FOR PROTECTING YOUR MEDICAL RECORDS</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="HS_Main.jsp"><span>Home</span></a></li>
          <li><a href="HS_Login.jsp"><span>Logout</span></a></li>		 
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="mainbar">
          <div class="article">
            <h2><span>View Patient Details </span></h2>
            <p class="infopost">&nbsp;</p>
            <div class="clr"></div>
            <div>
              <p align="justify"><a href="D_Main.jsp">
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="",s18="",s19="";
	int i=0,j=0,k=0;
String fname=request.getParameter("fname");	

try 
	{
      		String query="Select *from patient_details where patient_name='"+fname+"'"; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(4);
					s5=rs.getString(5);
					s6=rs.getString(6);
					s7=rs.getString(7);
					s8=rs.getString(8);
					s9=rs.getString(9);
					s10=rs.getString(10);
					s11=rs.getString(11);
					s12=rs.getString(12);
					s13=rs.getString(13);
					s14=rs.getString(14);
					s15=rs.getString(15);
					s16=rs.getString(16);
					s17=rs.getString(17);
					s18=rs.getString(18);
				String	keys=rs.getString(19);				
					
					
					
					
					
				
		
						%>
              </a></p>
              <table width="535" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
                <tr>
                  <td width="159" height="36" bgcolor="#FF0000"><div align="center" class="style29 style32 style34">
                      <div align="left"><strong> ID :</strong></div>
                  </div></td>
                  <td width="393"><label>
                    <input readonly="readonly"  name="textfield" type="text" value="<%=i%>" size="49" />
                    </label>                  </td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Patient Name : </strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="pname" type="text" size="49" value="<%=s2%>" />                  </td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>BloodGroup : </strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield2" type="text" size="49" value="<%=s3%>" />                  </td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Disease :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s4%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Age :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s5%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>DOB :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s6%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Gender :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s7%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Email :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s8%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Mobile :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s9%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Address :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s10%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="176" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Contents :</strong></div>
                  </div></td>
                  <td><textarea readonly="readonly" rows="10"  cols="50"  name="textarea"><%=s11%></textarea></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Trapdoor :</strong></div>
                  </div></td>
                  <td><label>
                    <input readonly="readonly"  name="textfield33" type="text" value="<%=s12%>" size="49" />
                    </label>                  </td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Secret Key  :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s13%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Date &amp; Time :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield32" type="text" value="<%=s14%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Provider :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s15%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Rank :</strong></div>
                  </div></td>
                  <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s16%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Hospital : </strong></div>
                  </div></td>
                  <td ><input readonly="readonly"  name="textfield34" type="text" value="<%=s17%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Doctor : </strong></div>
                  </div></td>
                  <td ><input readonly="readonly"  name="textfield34" type="text" value="<%=s18%>" size="49" /></td>
                </tr>
                <tr>
                  <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                      <div align="left"><strong>Encryption Public Key  : </strong></div>
                  </div></td>
                  <td ><input readonly="readonly"  name="textfield34" type="text" value="<%=keys%>" size="49" /></td>
                </tr>
                <%
				}	
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
              </table>
              <p align="right"><a href="HS_Main.jsp">Back</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="HS_Main.jsp">&raquo; Home </a></li>
            <li><a href="HS_Login.jsp">&raquo; Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
