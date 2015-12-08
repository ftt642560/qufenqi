package com.qufenqi.action;

import java.awt.Color;
import java.awt.Font;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DatasetUtilities;
import org.jfree.ui.TextAnchor;

import com.opensymphony.xwork2.ActionSupport;
import com.qufenqi.service.CountService;
;
public class JfreechartAction  extends ActionSupport implements ServletRequestAware{
	HttpServletRequest request;
	private String url;
	private CountService countService;
	public void setCountService(CountService countService) {
		this.countService = countService;
	}
	
	
	public String ShowChart() throws IOException{
		List<List<Integer>> saleNumbeList = countService.countSaleNumber();
		List<String> areaList = countService.countAddress();
		List<String> goodsList = countService.countGoodsName();
		Object[] columnKey =  areaList.toArray();

		String columnKeys = Arrays.toString(columnKey);
		System.out.println("111=="+columnKeys);
		
		Object[] rowKey = goodsList.toArray();
		String rowKeys = Arrays.toString(rowKey);
		System.out.println(rowKeys);
		
		double[][] data = new double[][]{{0, 0, 0, 0, 0, 10, 0, 0, 0}, {20, 10, 60, 200, 10, 0, 40, 30, 20}};
		CategoryDataset dataset=DatasetUtilities.createCategoryDataset(rowKeys, columnKeys, data); 
		//创建主题样式  
	    StandardChartTheme standardChartTheme=new StandardChartTheme("CN");  
	    //设置标题字体  
	    standardChartTheme.setExtraLargeFont(new Font("隶书",Font.BOLD,20));  
	    //设置图例的字体  
	    standardChartTheme.setRegularFont(new Font("宋书",Font.PLAIN,15));  
	    //设置轴向的字体  
	    standardChartTheme.setLargeFont(new Font("宋书",Font.PLAIN,15));  
	    //应用主题样式  
	    ChartFactory.setChartTheme(standardChartTheme); 
	    JFreeChart chart = ChartFactory.createBarChart3D("商品销量统计图", 
                "商品",//目录轴的显示标签
                "销量",//数据轴的显示标签
                dataset, //数据源
                PlotOrientation.VERTICAL,//图表方向：水平，垂直
                true,//是否显示图例
                true,//是否生成工具
                false);//是否生成URL链接
	    CategoryPlot plot = chart.getCategoryPlot();  
		  //设置网格背景颜色
		  plot.setBackgroundPaint(Color.white);
		  //设置网格竖线颜色
		  plot.setDomainGridlinePaint(Color.pink);
		  //设置网格横线颜色
		  plot.setRangeGridlinePaint(Color.pink);

		  //显示每个柱的数值，并修改该数值的字体属性
		  BarRenderer3D renderer = new BarRenderer3D();
		  renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
		  renderer.setBaseItemLabelsVisible(true);

		  //默认的数字显示在柱子中，通过如下两句可调整数字的显示
		  //注意：此句很关键，若无此句，那数字的显示会被覆盖，给人数字没有显示出来的问题
		  renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_LEFT));
		  renderer.setItemLabelAnchorOffset(10D);

		  //设置每个地区所包含的平行柱的之间距离
		  renderer.setItemMargin(0.4);
		  plot.setRenderer(renderer);

		  HttpServletRequest request = ServletActionContext.getRequest();
		  HttpSession session=request.getSession();
		  String filename = ServletUtilities.saveChartAsPNG(chart, 500, 300, null,session);
		  String graphURL = request.getContextPath() + "/DisplayChart?filename=" + filename;
		  url=graphURL;
		  System.out.println(url);
		  return "success";
	}


	public String DisplayChart() throws Exception{
		return SUCCESS;
	}
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setServletRequest(HttpServletRequest arg0) {
	}
}
