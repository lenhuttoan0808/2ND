package m07.shop.controller;

import m07.entity.OrderDetail;
import m07.repository.OrderDetailRepository;
import m07.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/")
public class SearchOrder extends BaseController{
    @Autowired
    OrderDetailRepository orderDetailRepository;

    @Autowired
    OrderRepository orderRepository;




    @RequestMapping(value = "/searchOrder")
    public String showseachr(Model model , HttpServletRequest request) {

        HttpSession httpSession = request.getSession();
        Object s = httpSession.getAttribute("SPRING_SECURITY_CONTEXT");
        if (s != null) {
            SecurityContextImpl context = (SecurityContextImpl) s;
            String loggedInUser = context.getAuthentication().getName();
            model.addAttribute("id", loggedInUser);
        }

        return "searchOrder";
    }

    @RequestMapping(value = "/searchOrder" , method = RequestMethod.POST)
    public String timkiem( @RequestParam("id") int id, Model model) {

        List<OrderDetail> orderDetails =
                (List<OrderDetail>) orderDetailRepository.searchOrder(id);
        model.addAttribute("orderDetails", orderDetails);

        if (null != orderDetails) {
            model.addAttribute("message", "Đơn Hàng Không Tồn tại");
            model.addAttribute("orderDetails",orderDetails);
        } else {
            model.addAttribute("message", "Mã Đơn Hàng Của Bạn Là");
            model.addAttribute("orderDetails", orderDetails);
        }

        return "listOrder";
    }




}
