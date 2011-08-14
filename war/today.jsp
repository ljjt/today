<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.TimeZone" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
TimeZone tz = TimeZone.getTimeZone("Europe/Stockholm");
Locale sweden = new Locale("sv", "SE");
GregorianCalendar calendar = new GregorianCalendar(tz, sweden);
SimpleDateFormat sweFormat = new SimpleDateFormat("d MMMM yyyy", sweden);
sweFormat.setTimeZone(tz);
SimpleDateFormat sweWeekFormat = new SimpleDateFormat("EEEE 'vecka' w", sweden);
sweWeekFormat.setTimeZone(tz);

Date now = new Date();
calendar.setTime(now);

%>
<html>
 <head>
 	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
   	<title>Datum nu</title>
   	<style type="text/css">p{font-family:Arial;font-size:100pt;line-height:100pt;font-weight:bold;}</style>
   	<meta property="fb:page_id" content="189427604429571" />
 </head>
 <body bgcolor="#90C0DE" text="#066EB0">
   <table width="100%" height="100%"><tr><td align=center><b><p><span title="<%= sweWeekFormat.format(calendar.getTime()) %>"><%= sweFormat.format(calendar.getTime()) %></b></td></tr></table>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-8793015-1");
pageTracker._trackPageview();
} catch(err) {}</script>
   </body>
</html>