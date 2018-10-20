package com.hk.pojo;

import java.io.Serializable;
import java.sql.Date;

public class ItemDesc implements Serializable {

	private static final long serialVersionUID = 1L;
	// 商品id
	private Long itemid;
	// 商品描述
	private String itemDesc;
	// 创建时间
	private Date created;
	// 更新时间
	private Date updated;
	// 商品详情图片
	private String image;

	public ItemDesc() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ItemDesc(Long itemid, String itemDesc, Date created, Date updated, String image) {
		super();
		this.itemid = itemid;
		this.itemDesc = itemDesc;
		this.created = created;
		this.updated = updated;
		this.image = image;
	}

	public Long getItemid() {
		return itemid;
	}

	public void setItemid(Long itemid) {
		this.itemid = itemid;
	}

	public String getItemDesc() {
		return itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ItemDesc [itemid=" + itemid + ", itemDesc=" + itemDesc + ", created=" + created + ", updated=" + updated
				+ ", image=" + image + "]";
	}

}
