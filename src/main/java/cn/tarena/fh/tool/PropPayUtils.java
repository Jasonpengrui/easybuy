package cn.tarena.fh.tool;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class PropPayUtils{
	//����Properties�����
	private static Properties prop = new Properties();
	//�����췽��˽�л�������ģʽ��
	private PropPayUtils(){}
	static{
	
		String path = PropPayUtils.class.getClassLoader().
				getResource("merchantInfo.properties").getPath();
		try {
			prop.load(new FileInputStream(path));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static Properties getProp(){
		return prop;
	}
	public static String getProperty(String key){
		return prop.getProperty(key);
	}
}
