package com.itbaizhan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB
{
	private Connection con;

	private PreparedStatement pstm;//PreparedStatement����pstm 

	private String user = "root";

	private String password = "root";

	private String className = "com.mysql.jdbc.Driver";//�����������

	private String url = "jdbc:mysql://localhost:3306/db_dingcan?useUnicode=true&amp;amp;amp;amp;amp;amp;characterEncoding=utf-8";
// &amp��ʾ&,ampΪ'',xmlת���
	public DB()
	{
		try
		{
			Class.forName(className);//����JDBC��������
		} catch (ClassNotFoundException e)
		{
			System.out.println("�������ݿ�����ʧ�ܣ�");
			e.printStackTrace();
		}
	}

	/** �������ݿ����� */
	public Connection getCon()
	{
		try
		{
			con = DriverManager.getConnection(url, user, password);//�������ݿ�
		} catch (SQLException e)
		{
			System.out.println("�������ݿ�����ʧ�ܣ�");
			con = null;
			e.printStackTrace();
		}
		return con;
	}
//�����ݿ���ɾ�ĵĲ������룬�������
	public void doPstm(String sql, Object[] params)//params�ǲ�������
	{
		if (sql != null && !sql.equals(""))//Ҫִ�е�sql��䲻Ϊ��
		{
			if (params == null)//�������ϲ�Ϊ��
				params = new Object[0];//����params

			getCon();//����getCon()������ȡ���ݿ�����
			if (con != null)
			{
				try
				{
					System.out.println(sql); //���SQL���
					pstm = con.prepareStatement(sql,
							ResultSet.TYPE_SCROLL_INSENSITIVE,//��������Թ����������ݸı䲻����
							ResultSet.CONCUR_READ_ONLY);//�����ֻ��
					for (int i = 0; i < params.length; i++)
					{
						pstm.setObject(i + 1, params[i]);
					}
					pstm.execute(); //�õ������
				} catch (SQLException e)
				{
					System.out.println("doPstm()��������");
					e.printStackTrace();
				}
			}
		}
	}
//��ȡ��ѯ������������װ
	public ResultSet getRs() throws SQLException
	{
		return pstm.getResultSet();
	}
//��ȡ���¼�¼�Ĵ���������֪�������˶��ټ�¼
	public int getCount() throws SQLException
	{
		return pstm.getUpdateCount();
	}
//�ر����ݿ⣬�ͷ�ռ�õ���Դ
	public void closed()
	{
		try
		{
			if (pstm != null)
				pstm.close();
		} catch (SQLException e)
		{
			System.out.println("�ر�pstm����ʧ�ܣ�");
			e.printStackTrace();
		}
		try
		{
			if (con != null)
			{
				con.close();
			}
		} catch (SQLException e)
		{
			System.out.println("�ر�con����ʧ�ܣ�");
			e.printStackTrace();
		}
	}
}
