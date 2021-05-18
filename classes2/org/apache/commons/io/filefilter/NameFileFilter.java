package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class NameFileFilter extends AbstractFileFilter implements Serializable {
  private final IOCase caseSensitivity;
  
  private final String[] names;
  
  public NameFileFilter(String paramString) {
    this(paramString, (IOCase)null);
  }
  
  public NameFileFilter(String paramString, IOCase paramIOCase) {
    if (paramString == null)
      throw new IllegalArgumentException("The wildcard must not be null"); 
    this.names = new String[] { paramString };
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public NameFileFilter(List<String> paramList) {
    this(paramList, (IOCase)null);
  }
  
  public NameFileFilter(List<String> paramList, IOCase paramIOCase) {
    if (paramList == null)
      throw new IllegalArgumentException("The list of names must not be null"); 
    this.names = paramList.<String>toArray(new String[paramList.size()]);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public NameFileFilter(String[] paramArrayOfString) {
    this(paramArrayOfString, (IOCase)null);
  }
  
  public NameFileFilter(String[] paramArrayOfString, IOCase paramIOCase) {
    if (paramArrayOfString == null)
      throw new IllegalArgumentException("The array of names must not be null"); 
    this.names = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, this.names, 0, paramArrayOfString.length);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public boolean accept(File paramFile) {
    boolean bool = false;
    String str = paramFile.getName();
    String[] arrayOfString = this.names;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str1 = arrayOfString[i];
        if (this.caseSensitivity.checkEquals(str, str1))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean accept(File paramFile, String paramString) {
    boolean bool = false;
    String[] arrayOfString = this.names;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str = arrayOfString[i];
        if (this.caseSensitivity.checkEquals(paramString, str))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(super.toString());
    stringBuilder.append("(");
    if (this.names != null)
      for (int i = 0; i < this.names.length; i++) {
        if (i > 0)
          stringBuilder.append(","); 
        stringBuilder.append(this.names[i]);
      }  
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\NameFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */