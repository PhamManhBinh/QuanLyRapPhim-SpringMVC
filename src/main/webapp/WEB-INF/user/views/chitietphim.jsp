<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<section class="best-of-the-week">
    <div class="container">
        <div class="row">
            <div class="line">
                <div>TraiLers</div>
            </div>
            <div class="col-md-6 col-xs-6 col-sm-6">
                <iframe width="560" height="315" src="${fn:replace(phim.trailer,'watch?v=','embed/')}?autoplay=1" 
                frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            <div class="col-md-6 col-xs-6 col-sm-6">
                <span class="tt">${phim.ten}</span>
                <hr>
                <span class="tt">Đạo diễn:&nbsp;&nbsp;&nbsp;&nbsp;${phim.daodien}</span>
                <span class="tt">Diễn viên:&nbsp;&nbsp;&nbsp;&nbsp;${phim.dienvien}</span>
                <span class="tt">Thể loại:&nbsp;&nbsp;&nbsp;&nbsp;${phim.theloai}</span>
                <span class="tt">Khởi chiếu:&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${phim.ngaycongchieu}" pattern="dd/MM/yyyy"/></span>
                <span class="tt">Thời Lượng:&nbsp;&nbsp;&nbsp;&nbsp;${phim.thoiluong}&nbsp;&nbsp;Phút</span>
                <footer>
                    <a href="#" class="love">
                        <i class="ion-android-favorite-outline ok"></i>
                        <div>10</div>
                    </a>
                    <a class="btn btn-primary more ok1" href="<c:url value="/phim/lichchieu?id=${phim.id }"/>">
                        <div>Mua vé</div>
                        <div><i class="ion-ios-arrow-thin-right"></i></div>
                    </a>
                </footer>
            </div>
        </div>
        <span class="tt">Nội Dung Phim: ${phim.noidungphim}</span>
    </div>
</section>