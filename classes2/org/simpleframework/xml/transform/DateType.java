package org.simpleframework.xml.transform;

import java.util.Date;

enum DateType {
  FULL("yyyy-MM-dd HH:mm:ss.S z"),
  LONG("yyyy-MM-dd HH:mm:ss z"),
  NORMAL("yyyy-MM-dd z"),
  SHORT("yyyy-MM-dd");
  
  private DateType$DateFormat format;
  
  static {
    $VALUES = new DateType[] { FULL, LONG, NORMAL, SHORT };
  }
  
  DateType(String paramString1) {
    this.format = new DateType$DateFormat(paramString1);
  }
  
  public static Date getDate(String paramString) {
    return getType(paramString).getFormat().getDate(paramString);
  }
  
  private DateType$DateFormat getFormat() {
    return this.format;
  }
  
  public static String getText(Date paramDate) {
    return FULL.getFormat().getText(paramDate);
  }
  
  public static DateType getType(String paramString) {
    int i = paramString.length();
    return (i > 23) ? FULL : ((i > 20) ? LONG : ((i > 11) ? NORMAL : SHORT));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\DateType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */