package cn.tarena.fh.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.service.ProductService;
import cn.tarena.fh.tool.ExcelProduct;

@Controller
@RequestMapping("/back/product")
public class ProductController extends BackController {

	@Autowired
	private ProductService productService;
	// 将所有的商品列表显示出来
	@RequestMapping("/prodList")
	public String findAllProduct(Model model) {
		List<Product> products = productService.findAllProduct();
	
		model.addAttribute("productList", products);
		return "/back/product/productList";
	}

	@RequestMapping("/stop")
	public String stop( String prodId) {
		productService.changeStation("0", prodId);
		return "redirect:/back/product/prodList";

	}

	@RequestMapping("/start")
	public String start(String prodId) {
		productService.changeStation("1", prodId);
		return "redirect:/back/product/prodList";

	}

	@RequestMapping("/delete")
	public String delete(String prodId) {
		System.out.println(prodId);
		productService.deleteProduct(prodId);
		return "redirect:/back/product/prodList";

	}

	@RequestMapping("/productDetail") // /tocreate
	public String insert(Model model) {
		//查询所有种类种类
		List<String>  descList=productService.selectDescription();
		model.addAttribute("descList",descList);
		return "/back/product/productDetail";

	}

	@RequestMapping("/tosave") // tosave
	public String saveProduct(Product product,@RequestParam(value="myfiles",required=false) MultipartFile[] files,HttpServletRequest request) {
		
		//
		  List<String> list = new ArrayList<String>();
	        if (files != null && files.length > 0) {
	            for (int i = 0; i < files.length; i++) {
	                MultipartFile file = files[i];
	                // 保存文件 保存路径
	                list = saveFile(request, file, list);
	            }
	            
	        }
	        productService.save(product,list);

		return "redirect:/back/product/prodList";
	}
	
	 private List<String> saveFile(HttpServletRequest request,
	            MultipartFile file, List<String> list) {
	        // 判断文件是否为空
	        if (!file.isEmpty()) {
	            try {
	                // 保存的文件路径(如果用的是Tomcat服务器，文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\upload\\文件夹中
	                // )
	            	String str=UUID.randomUUID().toString();
	            	 str=str+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
	            	
	                String filePath = request.getSession().getServletContext()
	                        .getRealPath("/")
	                        + "/staticfile/images/" + str;
	                list.add(str);
	                File saveDir = new File(filePath);
	                if (!saveDir.getParentFile().exists())
	                    saveDir.getParentFile().mkdirs();

	                // 转存文件
	                file.transferTo(saveDir);
	                return list;
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        return list;
	    }
	
	

	@RequestMapping("/productUpdate")
	public String updateProduct(String prodId,Model model) {
		Product product=productService.fingdOne(prodId);
		model.addAttribute("product",product);
		List<String>  descList=productService.selectDescription();
		model.addAttribute("descList",descList);
		return "/back/product/productUpdate";
	}
	@RequestMapping("/toUpdate")
	public String toupdateProduct(Product product) {
		productService.changeProduct(product);
		return "redirect:/back/product/prodList";

	}
	@RequestMapping("/ajaxChangePunm")
	public String changePnum(String id,Integer newPnum,HttpServletResponse response) throws IOException {
		boolean result=productService.updatePnum(id,newPnum);
		return "redirect:/back/product/prodList";

	}

	//下载
	@RequestMapping("/download")
	public String download() throws Exception{
		List<Product> product = productService.findAllProduct();//获取业务数据集
		ExcelProduct.download(product);
		return "redirect:/back/product/prodList";
	}

}
