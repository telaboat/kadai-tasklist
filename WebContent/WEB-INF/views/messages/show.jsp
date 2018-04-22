<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<c:choose>
			<c:when test="${message != null}">

				<h2>id : ${message.id} の詳細ページ</h2>

				<p>
					タスク：
					<c:out value="${message.content}" />
				</p>

				<p>
					<a href="${pageContext.request.contextPath}/index">一覧に戻る</a>
				</p>
				<p>
					<a href="${pageContext.request.contextPath}/edit?id=${message.id}">このタスクを編集する</a>
				</p>
			</c:when>
			<c:otherwise>
				<h2>お探しのデータは見つかりませんでした。</h2>
			</c:otherwise>
		</c:choose>

	</c:param>
</c:import>