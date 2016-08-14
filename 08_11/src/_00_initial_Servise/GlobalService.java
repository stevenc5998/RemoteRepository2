package _00_initial_Servise;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

public class GlobalService
{
	public static final int RECORDS_PER_PAGE = 3;
	public static final String HOST = "127.0.0.1";
	public static final String USERID = "sa";
	public static final String PASSWORD = "sa123456";
	public static final String SYSTEM_NAME = "PaCueMo";
	public static final String JNDI_DB_NAME = "java:comp/env/jdbc/DB_Jack";
	public static final int IMAGE_FILENAME_LENGTH = 20;
	public static final String DB_URL = "jdbc:sqlserver://" + GlobalService.HOST + ":1433;databaseName=MagicJack";
	public static final String KEY = "KittySnoopyMicky";  //decryptString()�Ϊ�Key :  16, 24, 32 �Ӧr����Key(�w�]�u���16�줸�A�Y�n��24�B32�A�n�hOracle�o�})
	public static final String DRIVER_NAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

	public String getSystemName()
	{   //  systemName 

		return SYSTEM_NAME;
	}

	public static String getMD5Endocing(String message)
	{
		final StringBuffer buffer = new StringBuffer();
		try
		{
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(message.getBytes());
			byte[] digest = md.digest();

			for (int i = 0 ; i < digest.length ; ++i)
			{
				final byte b = digest[i];
				final int value = (b & 0x7F) + (b < 0 ? 128 : 0);
				buffer.append(value < 16 ? "0" : "");
				buffer.append(Integer.toHexString(value));
			}
		}
		catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
			return null;
		}
		return buffer.toString();
	}

	public static String getMD5Endocing(File file)
			throws NoSuchAlgorithmException, IOException
	{
		MessageDigest md = MessageDigest.getInstance("MD5");
		FileInputStream fis = new FileInputStream(file);
		byte[] ba = new byte[1024];
		int len = 0;
		while ((len = fis.read(ba)) != -1)
		{
			md.update(ba, 0, len);
		}
		byte[] digest = md.digest();
		final StringBuffer buffer = new StringBuffer();
		for (int i = 0 ; i < digest.length ; ++i)
		{
			byte b = digest[i];
			int value = (b & 0x7F) + (b < 0 ? 128 : 0);
			buffer.append(value < 16 ? "0" : "");
			buffer.append(Integer.toHexString(value));
		}
		return buffer.toString();
	}

	public static String encryptString(String message)
	{
		
		String encryptedString = "";
		try
		{
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			SecretKeySpec secretKey = new SecretKeySpec(KEY.getBytes(), "AES");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey);
			encryptedString = DatatypeConverter.printBase64Binary(cipher.doFinal(message.getBytes()));
		}
		catch (InvalidKeyException e)
		{
			e.printStackTrace();
		}
		catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
		}
		catch (NoSuchPaddingException e)
		{
			e.printStackTrace();
		}
		catch (IllegalBlockSizeException e)
		{
			e.printStackTrace();
		}
		catch (BadPaddingException e)
		{
			e.printStackTrace();
		}
		return encryptedString;
	}

	
	public static String decryptString(String key, String stringToDecrypt)
	{
		String decryptedString = "";
		try
		{
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(), "AES");
			cipher.init(Cipher.DECRYPT_MODE, secretKey);
			byte[] b = DatatypeConverter.parseBase64Binary(stringToDecrypt);
			decryptedString = new String(cipher.doFinal(b));
		}
		catch (InvalidKeyException e)
		{
			e.printStackTrace();
		}
		catch (NoSuchAlgorithmException e)
		{
			e.printStackTrace();
		}
		catch (NoSuchPaddingException e)
		{
			e.printStackTrace();
		}
		catch (IllegalBlockSizeException e)
		{
			e.printStackTrace();
		}
		catch (BadPaddingException e)
		{
			e.printStackTrace();
		}
		return decryptedString;
	}

	public static int getlist(File f)
	{
		int size = 0;
		File flist[] = f.listFiles();
		size = flist.length;
		for (int i = 0 ; i < flist.length ; i++)
		{
			if (flist[i].isDirectory())
			{
				size = size + getlist(flist[i]);
				size--;
			}
		}
		return size;

	}

	
	public static String adjustFileName(String fileName, int maxLength)
	{
		int length = fileName.length();
		if (length <= maxLength)
		{
			return fileName;
		}
		int n = fileName.lastIndexOf(".");
		int sub = fileName.length() - n - 1;
		fileName = fileName.substring(0, maxLength - 1 - sub) + "."
				+ fileName.substring(n + 1);
		return fileName;
	}
}
