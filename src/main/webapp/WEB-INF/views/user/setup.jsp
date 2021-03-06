<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<h2><spring:message code="user.header.register" /></h2>

<form:form modelAttribute="member" action="setup">
    <table>
        <tr>
            <td><spring:message code="user.userId" /></td>
            <td><form:input path="userId" /></td>
            <td><font color="red"><form:errors path="userId" /></font></td>
        </tr>
        <tr>
            <td><spring:message code="user.userPw" /></td>
            <td><form:input path="userPw" /></td>
            <td><font color="red"><form:errors path="userPw" /></font></td>
        </tr>
        <tr>
            <td><spring:message code="user.userName" /></td>
            <td><form:input path="userName" /></td>
            <td><font color="red"><form:errors path="userName" /></font></td>
        </tr>
    </table>
</form:form>

<div>
    <button type="submit" id="btnRegister"><spring:message code="action.register" /></button>
    <button type="submit" id="btnList"><spring:message code="action.list" /></button>
</div>

<script type="text/javascript"

        src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>


<script type="text/javascript">
    $(document).ready(function() {

        var formObj = $("#member");

        $("#btnRegister").on("click", function() {
            formObj.submit();
        });

        $("#btnList").on("click", function() {
            self.location = "list";
        });
    });
</script>
