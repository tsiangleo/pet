
package com.common;
import java.io.*;

public class charsetConvert {
  final static public String m_GBCharCode = "GB2312";
  final static public String m_ISOCharCode = "iso-8859-1";

  public charsetConvert() {

  }

  public static String convertCharCode(String m_string, String CharCodeOld,
                                       String CharCodeNew) {
    String result = m_string;
    if (result != null && !result.trim().equals("")) {
      try {
        if ( (!CharCodeOld.trim().equals("")) && (!CharCodeNew.trim().equals(""))) {
          byte bytes[] = result.getBytes();
          result = new String(bytes, CharCodeNew);
        }
      }
      catch (Exception ex) {
        ex.printStackTrace();
      }
    }
    return result;
  }

  public static String convert(String message) {
    return convertCharCode(message, m_GBCharCode, m_ISOCharCode);
  }

  public static String parseChinese(String in) {
    String s = null;
    byte[] temp;
    if (in == null) {
      return "";
    }
    try {
      temp = in.getBytes(m_ISOCharCode);
      s = new String(temp);
    }
    catch (UnsupportedEncodingException e) {
      e.printStackTrace();
    }
    return s;
  }

}