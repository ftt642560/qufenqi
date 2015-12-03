package com.qufenqi.entity;

/**
 * 图片类
 * @author zlin
 *
 */
public class SellerGoodsImages {
	private Long id;//主键自增
	private String imageName;//图片名字
	private String imageUrl;//图片路径
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	
}
