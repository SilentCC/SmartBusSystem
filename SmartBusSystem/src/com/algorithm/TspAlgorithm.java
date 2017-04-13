package com.algorithm;

import com.action.*;
import entity.*;
import java.util.*;
import java.math.*;

public class TspAlgorithm {
	
	private List<Site> siteList;
	private Site start;
	
	private int len;
	
	private double dp[][];
	
	private double dis[][];
	
	public TspAlgorithm(){}
	public TspAlgorithm(List<Site> siteList,Site start,int len){
		this.siteList=siteList;
		this.start=start;
		this.len=len;
	}
	
	public List<Site> fun(){
		
		int state=(1<<(len))-1;
		int pre[]=new int[100];
		dp=new double[100+1][100];
		dis=new double[100][100];
		for(int i=0;i<len;i++)
			pre[i]=-1;
		dis=new double[100][100];
		for(int i=0;i<len;i++)
			for(int j=0;j<len;j++)
				dis[i][j]=0;
		for(int i=0;i<len;i++)
			for(int j=0;j<len;j++)
				dis[i][j]=Math.sqrt((siteList.get(i).getLongitude()-siteList.get(j).getLongitude())*
						(siteList.get(i).getLongitude()-siteList.get(j).getLongitude())+
						(siteList.get(i).getLatitude()-siteList.get(j).getLongitude())*(siteList.get(i).getLatitude()-siteList.get(j).getLongitude()));
		
		for(int i=0;i<=state;i++)
			for(int j=0;j<len;j++)
				dp[i][j]=100000000;
		for(int i=0;i<len;i++)
			dp[1<<i][i]=Math.sqrt((start.getLatitude()-siteList.get(i).getLatitude())*
					(start.getLatitude()-siteList.get(i).getLatitude())+(start.getLongitude()-siteList.get(i).getLongitude())*
					(start.getLongitude()-siteList.get(i).getLongitude()));
		
		for(int i=1;i<=state;i++)
		{
			for(int j=0;j<len;j++)
			{
				if(((1<<j)&1)==0)
					continue;
				for(int k=0;k<len;k++)
				{
					if(k==j) continue;
					if(((1<<k)&i)==1) continue;
					int ss=i+(1<<k);
					if(dp[ss][k]>dp[i][j]+dis[j][k]){
						dp[ss][k]=dp[i][j]+dis[j][k];
						pre[k]=j;
					}
						
				}
			}
		}
		int end=0;
		double ans=100000000;
		for(int i=0;i<len;i++)
		{
			if(ans>dp[state][i]){
				ans=dp[state][i];
				end=i;
			}
		}
		List<Site> res=new ArrayList<Site>();
		res.add(start);
		int x=end;
		int s[]=new int [100];
		int cot=-1;
		while(x!=-1){
			//res.add(siteList.get(x));
			
			s[++cot]=x;
			x=pre[x];
		}
		while(cot!=-1)
		{
			res.add(siteList.get(s[cot--]));
		}
		
		return res;
		
		
		
		
		
		
	}
	
	
	
	
	
	
	

}
