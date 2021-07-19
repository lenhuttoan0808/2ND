package m07.controller;


import m07.entity.Category;
import m07.entity.Product;
import m07.entity.Supplier;
import m07.repository.CategoryRepository;
import m07.repository.ProductRepository;
import m07.repository.SuppliersRepository;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.PostUpdate;
import javax.persistence.PreUpdate;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/")
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;


    //Điều hướng về thêm sản phẩm
    @RequestMapping(value = "/admin/addproduct")
    public String addproduct(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);
        return "admin/addproduct";
    }

    //Code để làm nó chạy
    @RequestMapping(value = "/admin/addproduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product,
                             ModelMap model,
                             @RequestParam("file") MultipartFile file
            , HttpServletRequest httpServletRequest) {
        String path = httpServletRequest.getSession().getServletContext().getRealPath("/") + "resources/uploads/";

        try {
            FileUtils.forceMkdir(new File(path));
            File upload = new File(path + file.getOriginalFilename());
            file.transferTo(upload);
        } catch (IOException e) {
            e.printStackTrace();
        }

        product.setImage(file.getOriginalFilename());
        Product p = productRepository.save(product);
        if (null != p) {
            model.addAttribute("message", "Update success");
            model.addAttribute("product", product);
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("product", product);
        }
        return "redirect:/admin/listproduct";
    }

    //Drop down để add vô danh mục
    @ModelAttribute("categoryList")
    public List<Category> showCaegory(Model model) {
        List<Category> categoryList =
                (List<Category>) categoryRepository.findAll();
        return categoryList;
    }

    //Drop down để add vô nhà cung ứng
    @ModelAttribute("supplierList")
    public List<Supplier> supplierList(Model model) {
        List<Supplier> supplierList =
                (List<Supplier>) suppliersRepository.findAll();
        return supplierList;
    }

    ////////////////////////////////////////////////////////////////



    ////////////////////////////////////////////////////////////////

    //Điều hướng sửa sản phẩm
    @RequestMapping(value = "/admin/editproduct", method = RequestMethod.GET)
    public String editSupper(@RequestParam("id") int id,
                             ModelMap model) {
        model.addAttribute("product1", productRepository.findOne(id));
        return "admin/editproduct";
    }

    //Làm nó chạy

    @RequestMapping(value = "/admin/editproduct", method = RequestMethod.POST)
    public String editSupp(@ModelAttribute("product") Product product, Model model,
                           @RequestParam("file") MultipartFile file
            , HttpServletRequest httpServletRequest) {


        String path = httpServletRequest.getSession().getServletContext().getRealPath("/") + "resources/uploads/";


        try {
            FileUtils.forceMkdir(new File(path));
            File upload = new File(path + file.getOriginalFilename());
            file.transferTo(upload);
        } catch (IOException e) {
            e.printStackTrace();
        }

        product.setImage(file.getOriginalFilename());

        Product cs = productRepository.save(product);
        if (null != cs) {
            model.addAttribute("message", "Update success");
            model.addAttribute("product", productRepository.findOne(cs.getId()));
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("product", product);
        }
        return "redirect:/admin/listproduct";
    }


    //Xóa sản phẩm
    @RequestMapping(value = "deletepro/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") int id, ModelMap model) {
        productRepository.delete(id);
        return "redirect:/admin/listproduct";
    }

    //Cái add ngày tháng đừng
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(sdf, true));
    }



}

