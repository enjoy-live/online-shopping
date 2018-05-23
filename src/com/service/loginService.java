package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.dao.GoodRankDao;
import com.dao.TAdminDAO;
import com.model.GoodRank;
import com.model.TAdmin;

public class loginService
{
	private TAdminDAO adminDAO;
	private GoodRankDao goodRankDao;
	
	public GoodRankDao getGoodRankDao() {
		return goodRankDao;
	}
	public void setGoodRankDao(GoodRankDao goodRankDao) {
		this.goodRankDao = goodRankDao;
	}
	public TAdminDAO getAdminDAO()
	{
		return adminDAO;
	}
	public void setAdminDAO(TAdminDAO adminDAO)
	{
		this.adminDAO = adminDAO;
	}
	
	
	
	public String login(String userName,String userPw,int userType,String rand)
	{
		
		String result="no";
		
		if(userType==0)//系统管理员登陆
		{
			WebContext ctx = WebContextFactory.get(); 
			HttpSession session=ctx.getSession(); 
			
			String xitongyanzhengma=(String)session.getAttribute("rand");
			if(xitongyanzhengma.equals(rand.trim())==false)
			{
				result="yanzhenmacuowu";
			}
			
			else
			{
				String sql="from TAdmin where userName=? and userPw=?";
				Object[] con={userName,userPw};
				List adminList=adminDAO.getHibernateTemplate().find(sql,con);
				if(adminList.size()==0)
				{
					 result="no";
				}
				else
				{
					 TAdmin admin=(TAdmin)adminList.get(0);
					 session.setAttribute("userType", 0);
		             session.setAttribute("admin", admin);
		             result="yes";
				}
			}
		}
		if(userType==1)
		{
			
		}
		if(userType==2)
		{
			
		}
		return result;
	}
	
	public String saleRank(Integer pageNumber, Integer pageSize) {
		if(pageNumber == null) {
			pageNumber = 1;
		}
		if(pageSize == null) {
			pageSize = 4;
		}
		StringBuffer sql= new StringBuffer("from GoodRank order by saleAmount desc ");
		sql.append(" limit ").append((pageNumber - 1) * pageSize).append("," + String.valueOf(pageSize));
		List<GoodRank> goodRankList = goodRankDao.getHibernateTemplate().find(sql.toString());
		String result="no";
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		if(goodRankList != null && goodRankList.size() > 0) {
			result="yes";
		}
		session.setAttribute("goodRankList", goodRankList);
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
		} 
		catch (InterruptedException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		 
		TAdmin admin=(TAdmin)session.getAttribute("admin");
		admin.setUserPw(userPwNew);
		
		adminDAO.getHibernateTemplate().update(admin);
		session.setAttribute("admin", admin);
		
		return "yes";
    }
    
    
}
