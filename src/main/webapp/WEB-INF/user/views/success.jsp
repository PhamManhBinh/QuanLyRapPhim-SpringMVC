<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="xemphim.model.*" %>
<%@ page import="java.util.*" %>
<style>
td {
	padding: 8px;
}
</style>
<section class="best-of-the-week">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-xs-12 col-sm-12">
				<div class="block">
					<div id="alert" class="alert alert-success" role="alert"
						style="text-align: center; font-family: Arial; font-weight: bold; font-size: 20px">
						Mua vé online thành công! Cảm ơn bạn đã sử dụng dịch vụ của chúng
						tôi!</div>
					<div class="line top">
						<div>Xác Nhận Thông Tin</div>
					</div>
					<table align="center"
						style="margin-left: auto; margin-right: auto; border: 1px solid black; text-align: left; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: medium; background-color: antiquewhite">
						<tr>
							<td>Người Đặt Vé:</td>
							<td>${nguoidung.name}</td>
						</tr>
						<tr>
							<td>Email:</td>
							<td>${nguoidung.email}</td>
						</tr>
						<tr>
							<td>Số điện thoại:</td>
							<td>${nguoidung.phone}</td>
						</tr>
						<tr>
							<td>Rạp:</td>
							<td>${suatchieu.rap.cumrap.tencum}- ${suatchieu.rap.tenrap}</td>
						</tr>
						<tr>
							<td>Tên Phim:</td>
							<td>${suatchieu.phim.ten}</td>
						</tr>
						<tr>
							<td>Suất Chiếu:</td>
							<td><label><fmt:formatDate
										value="${suatchieu.thoidiembatdau}" pattern="HH:mm" /> - <fmt:formatDate
										value="${suatchieu.ngay}" pattern="dd/MM/yyyy" /></label></td>
						</tr>
						<% 
							List<Ve> listVe = (List<Ve>) request.getAttribute("listVe");
						%>
						<tr>
							<td>Số Ghế: <%= listVe.size() %></td>
							<td>
							<%
								int tongGhe = 0;
								for(Ve ve : listVe){
									tongGhe += ve.getSuatchieu().getGiave();
									out.print("<label>"+ve.getGhe()+"</label>  ");
								}
							%>
							</td>
						</tr>
						<% 
							List<VeFood> listVeFood = listVe.get(0).getVeFoods();
						%>
						<tr>
							<td>Số Lượng Combo: <%= listVeFood == null ? "0" : listVeFood.size() %></td>
							<td>
							<%
								int tongCombo = 0;
								if(listVeFood != null){
									for(VeFood vefood : listVeFood){
										tongCombo += vefood.getSoluong()*vefood.getFastfood().getGia();
									}
									out.print("Tổng Tiền Combo: "+tongCombo+"đ");
								}
							%>
								
							</td>
						</tr>
						<tr>
							<td>Tổng cộng:</td>
							<td><label><%= tongGhe+tongCombo %></label></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>