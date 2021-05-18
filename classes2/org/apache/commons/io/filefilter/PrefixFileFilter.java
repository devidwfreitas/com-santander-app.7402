package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class PrefixFileFilter extends AbstractFileFilter implements Serializable {
  private final IOCase caseSensitivity;
  
  private final String[] prefixes;
  
  public PrefixFileFilter(String paramString) {
    this(paramString, IOCase.SENSITIVE);
  }
  
  public PrefixFileFilter(String paramString, IOCase paramIOCase) {
    if (paramString == null)
      throw new IllegalArgumentException("The prefix must not be null"); 
    this.prefixes = new String[] { paramString };
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public PrefixFileFilter(List<String> paramList) {
    this(paramList, IOCase.SENSITIVE);
  }
  
  public PrefixFileFilter(List<String> paramList, IOCase paramIOCase) {
    if (paramList == null)
      throw new IllegalArgumentException("The list of prefixes must not be null"); 
    this.prefixes = paramList.<String>toArray(new String[paramList.size()]);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public PrefixFileFilter(String[] paramArrayOfString) {
    this(paramArrayOfString, IOCase.SENSITIVE);
  }
  
  public PrefixFileFilter(String[] paramArrayOfString, IOCase paramIOCase) {
    if (paramArrayOfString == null)
      throw new IllegalArgumentException("The array of prefixes must not be null"); 
    this.prefixes = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, this.prefixes, 0, paramArrayOfString.length);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public boolean accept(File paramFile) {
    boolean bool = false;
    String str = paramFile.getName();
    String[] arrayOfString = this.prefixes;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str1 = arrayOfString[i];
        if (this.caseSensitivity.checkStartsWith(str, str1))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean accept(File paramFile, String paramString) {
    boolean bool = false;
    String[] arrayOfString = this.prefixes;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str = arrayOfString[i];
        if (this.caseSensitivity.checkStartsWith(paramString, str))
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
    if (this.prefixes != null)
      for (int i = 0; i < this.prefixes.length; i++) {
        if (i > 0)
          stringBuilder.append(","); 
        stringBuilder.append(this.prefixes[i]);
      }  
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\PrefixFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */