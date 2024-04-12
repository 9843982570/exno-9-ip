<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%-- Dummy list of Country objects --%>
<c:set var="countries">
    <c:forEach items="${countryList}" var="country">
        <c:if test="${country.population > 0}">
            <c:out value="${country}" />,
        </c:if>
    </c:forEach>
</c:set>

<table border="1">
    <thead>
        <tr>
            <th>Name</th>
            <th>Capital</th>
            <th>Currency</th>
            <th>Population</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${countryList}" var="country" varStatus="loop">
            <tr>
                <td><c:out value="${country.name}" /></td>
                <td><c:out value="${country.capital}" /></td>
                <td><c:out value="${country.currency}" /></td>
                <td style="color:<c:choose><c:when test="${loop.index < 3}">red</c:when><c:otherwise>black</c:otherwise></c:choose>;">
                    <fmt:formatNumber value="${country.population}" type="number" />
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
