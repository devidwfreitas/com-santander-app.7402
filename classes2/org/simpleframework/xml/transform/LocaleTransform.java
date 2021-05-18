package org.simpleframework.xml.transform;

import java.util.Locale;
import java.util.regex.Pattern;

class LocaleTransform implements Transform<Locale> {
  private final Pattern pattern = Pattern.compile("_");
  
  private Locale read(String[] paramArrayOfString) {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    arrayOfString[2] = "";
    for (int i = 0; i < arrayOfString.length; i++) {
      if (i < paramArrayOfString.length)
        arrayOfString[i] = paramArrayOfString[i]; 
    } 
    return new Locale(arrayOfString[0], arrayOfString[1], arrayOfString[2]);
  }
  
  public Locale read(String paramString) {
    String[] arrayOfString = this.pattern.split(paramString);
    if (arrayOfString.length < 1)
      throw new InvalidFormatException("Invalid locale %s", new Object[] { paramString }); 
    return read(arrayOfString);
  }
  
  public String write(Locale paramLocale) {
    return paramLocale.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\LocaleTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */