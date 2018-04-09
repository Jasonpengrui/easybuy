package cn.tarena.fh.tool;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;

import cn.tarena.fh.pojo.User;

public class ExcelUser {
public static void download(List<User> dataList) throws Exception{
		
		Workbook wb=new HSSFWorkbook();
        Sheet sheet = wb.createSheet("用户列表");
        Row nRow=null;
        Cell nCell=null;

        //行号
        int  rowNo=0;
        //列号
        int colNo=1;
        
        //声明样式对象和字体对象
        CellStyle nStyle=wb.createCellStyle();
        Font font = wb.createFont();
       //大标题，合并单元格
        sheet.addMergedRegion(new CellRangeAddress(0,0,1,7));  //开始行，结束行，开始列，结束列
        //合并单元格的内容写在合并前第一个单元格中
        nRow=sheet.createRow(rowNo++);

        nRow.setHeightInPoints(36);

        nCell=nRow.createCell(1);
        nCell.setCellValue("用户表");
        nCell.setCellStyle(ExcelUser.bigTitle(wb, nStyle, font));
        
        String[] title=new  String[]{"用户id","用户名","真实姓名","手机号码","电子邮件","生日","状态" };

        nRow=sheet.createRow(rowNo++);
        nRow.setHeightInPoints(26.25f);

        //初始化
        nStyle=wb.createCellStyle();
        font=wb.createFont();

        for(int  i=0;i<title.length;i++){
            nCell=nRow.createCell(i+1);
            nCell.setCellValue(title[i]);
            nCell.setCellStyle(ExcelUser.Title(wb, nStyle, font));

        }
        //初始化
        nStyle=wb.createCellStyle();
        font=wb.createFont();
		
        //填充数据
        for(int j=0;j<dataList.size();j++){
            User user=dataList.get(j);
            colNo=1;

            nRow=sheet.createRow(rowNo++);
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getUserId());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getUsername());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            
            if(user.getUserInfo()!=null){
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getUserInfo().getRealname());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));

            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getPrivilege());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getUserInfo().getTelephone());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            
            nCell=nRow.createCell(colNo++);
            nCell.setCellValue(user.getUserInfo().getBirthday());
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            }else{
                nCell=nRow.createCell(colNo++);
                nCell.setCellValue("");
                nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
                nCell=nRow.createCell(colNo++);
                nCell.setCellValue("");
                nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
                nCell=nRow.createCell(colNo++);
                nCell.setCellValue("");
                nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
                nCell=nRow.createCell(colNo++);
                nCell.setCellValue("");
                nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));
            }
        
            nCell=nRow.createCell(colNo++);
            
            if(user.getState()==1){
            nCell.setCellValue("启用");
            }else{
                nCell.setCellValue("停用");
            }
            nCell.setCellStyle(ExcelUser.Text(wb, nStyle, font));

        }

        //下载保存
        
        	int m = JOptionPane.showConfirmDialog(null, "确定下载","提示",
        			JOptionPane.YES_NO_OPTION);
        	if(m==JOptionPane.YES_OPTION)
        	{
        		try {
        			OutputStream stream=new FileOutputStream(new File("D:\\用户表.xls")); 
                    wb.write(stream);
                    //关闭
                    stream.close();
                    
                    JOptionPane.showMessageDialog(null, "下载成功，已存在D盘");
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					JOptionPane.showMessageDialog(null, "下载失败");
				}
        		
        	}
        	else
        	{
        		JOptionPane.showMessageDialog(null, "下载取消");
        	}
            
		
        
	}
	
	 //大标题的样式
    public static CellStyle bigTitle(Workbook wb,CellStyle nStyle,Font font){
        font.setFontName("宋体");
        font.setFontHeightInPoints((short) 16); 
        //字体加粗
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        //横向居中
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);
        //纵向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

        nStyle.setFont(font);
        return nStyle;
    }
	
	
    //标题样式
    public static CellStyle Title(Workbook wb,CellStyle nStyle,Font font){
        font.setFontName("黑体");
        font.setFontHeightInPoints((short) 12); 

        //横向居中
        nStyle.setAlignment(CellStyle.ALIGN_CENTER);
        //纵向居中
        nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

        //表格线
        nStyle.setBorderTop(CellStyle.BORDER_THIN);            //实线
        nStyle.setBorderBottom(CellStyle.BORDER_THIN);          //实线
        nStyle.setBorderLeft(CellStyle.BORDER_THIN);            //比较粗实线
        nStyle.setBorderRight(CellStyle.BORDER_THIN);           //实线

        nStyle.setFont(font);
        return nStyle;
    }

	//文字样式
	public static CellStyle Text(Workbook wb,CellStyle nStyle,Font font){
	    font.setFontName("Times New Roman");
	    font.setFontHeightInPoints((short) 11); 

	    //横向居中
	    nStyle.setAlignment(CellStyle.ALIGN_CENTER);
	    //纵向居中
	    nStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);     //单元格垂直居中

	    //表格线

	    nStyle.setBorderBottom(CellStyle.BORDER_THIN);          //实线
	    nStyle.setBorderLeft(CellStyle.BORDER_THIN);            //比较粗实线
	    nStyle.setBorderRight(CellStyle.BORDER_THIN);           //实线

	    nStyle.setFont(font);
	    return nStyle;
	}
}
