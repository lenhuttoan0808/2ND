package m07.controller;

import m07.entity.Category;
import m07.entity.OrderDetail;
import m07.entity.Product;
import m07.entity.Supplier;
import m07.repository.CategoryRepository;
import m07.repository.OrderDetailRepository;
import m07.repository.ProductRepository;
import m07.repository.SuppliersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/")
public class AdminController {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;


    //Fix soon
    @RequestMapping(value = "/admin/user")
    public String admin(Model model) {

        return "admin/user";
    }




    // Hiển thị kho hàng ở trang admin
    @RequestMapping(value = "/admin/listproduct")
    public String listProduct(Model model) {

        return "admin/listproduct";
    }

    //Hiển thị danh mục và nhà cung ứng ở trang admin
    @RequestMapping(value = "/admin/tablelist")
    public String tables(Model model) {

        return "admin/tablelist";
    }



    //Thêm danh mục sản phẩm mới điều hướng
    @RequestMapping(value = "/admin/addcategory")
    public String checkOut(Model model) {
        Category category = new Category();
        model.addAttribute("category", category);
        return "admin/addcategory";
    }


    //Thêm danh mục sản phẩm mới để làm nó chạy
    @RequestMapping(value = "/admin/addcategory", method = RequestMethod.POST)
    public String addCourse(@Validated @ModelAttribute("category") Category category,
                            ModelMap model,
                            BindingResult bindingResult) {
        Category c = categoryRepository.save(category);
        if (bindingResult.hasErrors()) {

            model.addAttribute("message", "vui lòng");
            return "/admin/addcategory";

        } else {

            model.addAttribute("message", "Chúc mừng");
        }
        return "redirect:/admin/tablelist";
    }


    //Hiện hết danh mục ở trang chính list
    @ModelAttribute("categoryList")
    public List<Category> showCategory(Model model) {
        List<Category> categoryList =
                (List<Category>) categoryRepository.findAll();
        return categoryList;
    }

    //Hiện hết nhà cung ứng ở trang chính list
    @ModelAttribute("supplierList")
    public List<Supplier> supplierList(Model model) {
        List<Supplier> supplierList =
                (List<Supplier>) suppliersRepository.findAll();
        return supplierList;
    }

    //Hiện hết sản phẩm
    @ModelAttribute("productList")
    public List<Product> showproduct(Model model) {
        List<Product> productList =
                (List<Product>) productRepository.listproductdesc();
        return productList;
    }

    //Sửa Danh mục
    @RequestMapping(value = "/admin/editCategory", method = RequestMethod.GET)
    public String editCategory(@RequestParam("id") int id,
                               ModelMap model) {
        model.addAttribute("category1", categoryRepository.findOne(id));
        return "admin/editcategory";
    }

    //Làm đống trên chạy được
    @RequestMapping(value = "/admin/editCategory", method = RequestMethod.POST)
    public String editCategory(@ModelAttribute("category") Category category, Model model, RedirectAttributes rs) {
        Category cs = categoryRepository.save(category);
        if (null != cs) {
            model.addAttribute("message", "Update success");
            model.addAttribute("category", categoryRepository.findOne(cs.getId()));
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("category", category);
        }
        return "redirect:/admin/tablelist";
    }

    //Xóa Danh Mục
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String addCourse(@PathVariable("id") int id, ModelMap model) {
        categoryRepository.delete(id);
        return "redirect:/admin/tablelist";
    }






}
