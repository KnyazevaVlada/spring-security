<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h3> Information from all employees </h3>
<br><br>

<%--сокрытие информации от других ролей--%>
<security:authorize access="hasRole('ROLE_HR')">
<input type="button" value="Salary"
        onclick="window.location.href = 'hr_info'">
Only for HR stuff
</security:authorize>
<br><br>

<security:authorize access="hasRole('ROLE_MANAGER')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for managers
</security:authorize>

</body>
</html>