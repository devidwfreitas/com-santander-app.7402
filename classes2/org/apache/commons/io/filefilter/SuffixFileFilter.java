package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;

public class SuffixFileFilter extends AbstractFileFilter implements Serializable {
  private final IOCase caseSensitivity;
  
  private final String[] suffixes;
  
  public SuffixFileFilter(String paramString) {
    this(paramString, IOCase.SENSITIVE);
  }
  
  public SuffixFileFilter(String paramString, IOCase paramIOCase) {
    if (paramString == null)
      throw new IllegalArgumentException("The suffix must not be null"); 
    this.suffixes = new String[] { paramString };
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public SuffixFileFilter(List<String> paramList) {
    this(paramList, IOCase.SENSITIVE);
  }
  
  public SuffixFileFilter(List<String> paramList, IOCase paramIOCase) {
    if (paramList == null)
      throw new IllegalArgumentException("The list of suffixes must not be null"); 
    this.suffixes = paramList.<String>toArray(new String[paramList.size()]);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public SuffixFileFilter(String[] paramArrayOfString) {
    this(paramArrayOfString, IOCase.SENSITIVE);
  }
  
  public SuffixFileFilter(String[] paramArrayOfString, IOCase paramIOCase) {
    if (paramArrayOfString == null)
      throw new IllegalArgumentException("The array of suffixes must not be null"); 
    this.suffixes = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, this.suffixes, 0, paramArrayOfString.length);
    IOCase iOCase = paramIOCase;
    if (paramIOCase == null)
      iOCase = IOCase.SENSITIVE; 
    this.caseSensitivity = iOCase;
  }
  
  public boolean accept(File paramFile) {
    boolean bool = false;
    String str = paramFile.getName();
    String[] arrayOfString = this.suffixes;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str1 = arrayOfString[i];
        if (this.caseSensitivity.checkEndsWith(str, str1))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public boolean accept(File paramFile, String paramString) {
    boolean bool = false;
    String[] arrayOfString = this.suffixes;
    int j = arrayOfString.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        String str = arrayOfString[i];
        if (this.caseSensitivity.checkEndsWith(paramString, str))
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
    if (this.suffixes != null)
      for (int i = 0; i < this.suffixes.length; i++) {
        if (i > 0)
          stringBuilder.append(","); 
        stringBuilder.append(this.suffixes[i]);
      }  
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\filefilter\SuffixFileFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */