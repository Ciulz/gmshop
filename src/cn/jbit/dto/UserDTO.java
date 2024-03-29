package cn.jbit.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 用户DTO
 * 
 * @author william
 * 
 */
public class UserDTO implements Serializable {

	/**
	 * 用户编号
	 */
	private Long id;
	/**
	 * 真实姓名
	 */
	private String myName;
	/**
	 * 登录名
	 */
	private String loginName;
	/**
	 * 登录密码
	 */
	private String pass;
	/**
	 * email
	 */
	private String email;
	/**
	 * 性别
	 */
	private String sex;
	/**
	 * 头像地址
	 */
	private String image;
	/**
	 * 出生日期
	 */
	private Date bornDay;

	/**
	 * 所下订单
	 */
	private Set<OrderDTO> ordersDTO = new HashSet<OrderDTO>();

	public Set<OrderDTO> getOrdersDTO() {
		return ordersDTO;
	}

	public void setOrdersDTO(Set<OrderDTO> ordersDTO) {
		this.ordersDTO = ordersDTO;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMyName() {
		return myName;
	}

	public void setMyName(String myName) {
		this.myName = myName;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getBornDay() {
		return bornDay;
	}

	public void setBornDay(Date bornDay) {
		this.bornDay = bornDay;
	}

	public UserDTO(Long id, String myName, String loginName, String pass,
			String email, String sex, String image, Date bornDay,
			Set<OrderDTO> ordersDTO) {
		super();
		this.id = id;
		this.myName = myName;
		this.loginName = loginName;
		this.pass = pass;
		this.email = email;
		this.sex = sex;
		this.image = image;
		this.bornDay = bornDay;
		this.ordersDTO = ordersDTO;
	}

	public UserDTO() {
		super();
	}

}
