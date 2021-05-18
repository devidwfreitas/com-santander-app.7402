package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOCase;

public class WildcardFileFilter extends AbstractFileFilter implements Serializable {
  private final IOCase caseSensitivity;
  
  private final String[] wildcards;
  
  public WildcardFileFilter(String paramString) {
    this(paramString, (IOCase)null);
  }
  
  public WildcardFileFilter(String paramString, IOCase paramIOCase) {
    if (paramString == null)
      throw new IllegalArgumentException("The wildcard must not be null"); 
    this.wildcards = new String[] { paramString };
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public WildcardFileFilter(List<String> paramList) {
    this(paramList, (IOCase)null);
  }
  
  public WildcardFileFilter(List<String> paramList, IOCase paramIOCase) {
    if (paramList == null)
      throw new IllegalArgumentException("The wildcard list must not be null"); 
    this.wildcards = paramList.<String>toArray(new String[paramList.size()]);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public WildcardFileFilter(String[] paramArrayOfString) {
    this(paramArrayOfString, (IOCase)null);
  }
  
  public WildcardFileFilter(String[] paramArrayOfString, IOCase paramIOCase) {
    if (paramArrayOfString == null)
      throw new IllegalArgumentException("The wildcard array must not be null"); 
    this.wildcards = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, this.wildcards, 0, paramArrayOfString.length);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public boolean accept(File paramFile) {
    boolean bool = false;
    String str = paramFile.getName();
    String[] arrayOfString = this.wildcards;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (FilenameUtils.wildcardMatch(str, arrayOfString[i], this.caseSensitivity))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean accept(File paramFile, String paramString) {
    boolean bool = false;
    String[] arrayOfString = this.wildcards;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (FilenameUtils.wildcardMatch(paramString, arrayOfString[i], this.caseSensitivity))
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
    if (this.wildcards != null)
      for (int i = 0; i < this.wildcards.length; i++) {
        if (i > 0)
          stringBuilder.append(","); 
        stringBuilder.append(this.wildcards[i]);
      }  
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\WildcardFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */