package action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import entity.Recipe;
import service.RecipeService;

@WebServlet("/recipe")
public class RecipeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";
 
    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
	
    public RecipeServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String flag = request.getParameter("flag");
		RecipeService recipeService = new RecipeService();
		Recipe recipe;
		
		if("addRecipe".equals(flag)){
			recipe = new Recipe();
			String r_UId = request.getParameter("u_id");
			String r_name = request.getParameter("r_name");
			String r_information = request.getParameter("r_information");
			String r_material = request.getParameter("r_material");
			String r_practice = request.getParameter("r_practice");
			String rbd_parent = request.getParameter("rbd_parent");
			String rbd_child = request.getParameter("rbd_child");
			System.out.println("u_id"+r_UId+"\n名称"+r_name+"\n简介"+r_information+"\n材料"+r_material+"\n做法"+r_practice+"\nrbd_parent"+rbd_parent+"\nrbd_child"+rbd_child);
			int r_click = 0;
			String r_imgName = "";
			String r_imgUrl = "";
			Date date = new Date(new java.util.Date().getTime());
			String r_time = date.toString();
			recipe.setR_name(r_name);
			recipe.setR_information(r_information);
			recipe.setR_imgName(r_imgName);
			recipe.setR_imgUrl(r_imgUrl);
			recipe.setR_material(r_material);
			recipe.setR_practice(r_practice);
			recipe.setR_click(r_click);
			recipe.setR_time(r_time);
			recipe.setR_UId(Integer.valueOf(r_UId));
			if(rbd_child == null || rbd_child== ""){
				recipe.setRBDId(Integer.valueOf(rbd_parent));
			}else{
				recipe.setRBDId(Integer.valueOf(rbd_child));
			}
			if(recipeService.addRecipe(recipe)){
				response.sendRedirect("../user.jsp");
			}
			/*
			// 检测是否为多媒体上传
	        if (!ServletFileUpload.isMultipartContent(request)) {
	            // 如果不是则停止
	            PrintWriter writer = response.getWriter();
	            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
	            writer.flush();
	            return;
	        }
	        // 配置上传参数
	        DiskFileItemFactory factory = new DiskFileItemFactory();
	        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
	        factory.setSizeThreshold(MEMORY_THRESHOLD);
	        // 设置临时存储目录
	        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	        ServletFileUpload upload = new ServletFileUpload(factory);
	        // 设置最大文件上传值
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	        // 设置最大请求值 (包含文件和表单数据)
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	        // 中文处理
	        upload.setHeaderEncoding("UTF-8"); 
	        // 构造临时路径来存储上传的文件
	        // 这个路径相对当前应用的目录
	        String uploadPath1 = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY;
	        String uploadPath = UPLOAD_DIRECTORY;
	        // 如果目录不存在则创建
	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) {
	            uploadDir.mkdir();
	        }
	        try {
	            // 解析请求的内容提取文件数据
	            @SuppressWarnings("unchecked")
	            List<FileItem> formItems = upload.parseRequest(request);
	 
	            if (formItems != null && formItems.size() > 0) {
	                // 迭代表单数据
	                for (FileItem item : formItems) {
	                    // 处理不在表单中的字段
	                    if (!item.isFormField()) {
	                        String fileName = new File(item.getName()).getName();
	                        
	                        String filePath1 = uploadPath1+"\\" + File.separator +"\\"+ fileName;
	                        String filePath = uploadPath+"\\" + File.separator +"\\"+ fileName;
	                        File storeFile = new File(filePath1);
	                        recipe.setR_imgName(fileName);
	                        recipe.setR_imgUrl(uploadPath);
	                        // 保存文件到硬盘
	                        item.write(storeFile);
	                        
	                        if(mService.upload_img(m)){
	                        	out.print("");
	                        }
	                        
	                    }
	                }
	            }
	        } catch (Exception ex) {
	            request.setAttribute("message","错误信息: " + ex.getMessage());
	        }
		*/
		}
	}

}
