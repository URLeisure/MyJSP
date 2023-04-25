package com.shi.mapper;

/**
 * @author: 扑腾的江鱼
 * @description: TODO 类描述
 * @create: 2023/05/24 17:14
 **/

import java.util.Iterator;
import java.util.LinkedList;
import java.util.NoSuchElementException;
public class ContinueIdioms {
    LinkedList<String> listIdioms ;
    public String nowIdioms;
    public ContinueIdioms(){
        listIdioms = new LinkedList<String>();
    }
    public synchronized void setNowIdioms(String s){
        nowIdioms = s;
        try{
            String previous = listIdioms.getLast();
            char endChar = previous.charAt(previous.length()-1);
            char startChar = nowIdioms.charAt(0);//
            if(startChar == endChar)
                listIdioms.add(nowIdioms);
        }
        catch(NoSuchElementException exp){
            listIdioms.add(nowIdioms);
        }
    }
    public String getAllIdioms(){
        StringBuffer buffer = new StringBuffer();
        Iterator<String> iterator =listIdioms.iterator();
        if(iterator.hasNext() == false)
            buffer.append("请开始接龙");
        while(iterator.hasNext()){
            buffer.append(iterator.next()+"->");
        }
        return new String(buffer);
    }
}