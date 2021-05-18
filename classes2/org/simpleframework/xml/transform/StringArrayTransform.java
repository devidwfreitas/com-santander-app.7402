package org.simpleframework.xml.transform;

import java.util.regex.Pattern;

class StringArrayTransform implements Transform<String[]> {
  private final Pattern pattern;
  
  private final String token;
  
  public StringArrayTransform() {
    this(",");
  }
  
  public StringArrayTransform(String paramString) {
    this.pattern = Pattern.compile(paramString);
    this.token = paramString;
  }
  
  private String[] read(String paramString1, String paramString2) {
    String[] arrayOfString = this.pattern.split(paramString1);
    for (int i = 0; i < arrayOfString.length; i++) {
      paramString2 = arrayOfString[i];
      if (paramString2 != null)
        arrayOfString[i] = paramString2.trim(); 
    } 
    return arrayOfString;
  }
  
  private String write(String[] paramArrayOfString, String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfString.length; i++) {
      String str = paramArrayOfString[i];
      if (str != null) {
        if (stringBuilder.length() > 0) {
          stringBuilder.append(paramString);
          stringBuilder.append(' ');
        } 
        stringBuilder.append(str);
      } 
    } 
    return stringBuilder.toString();
  }
  
  public String[] read(String paramString) {
    return read(paramString, this.token);
  }
  
  public String write(String[] paramArrayOfString) {
    return write(paramArrayOfString, this.token);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\StringArrayTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */