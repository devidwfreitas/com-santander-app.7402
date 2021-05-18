package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

@Deprecated
public class WildcardFilter extends AbstractFileFilter implements Serializable {
  private final String[] wildcards;
  
  public WildcardFilter(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("The wildcard must not be null"); 
    this.wildcards = new String[] { paramString };
  }
  
  public WildcardFilter(List<String> paramList) {
    if (paramList == null)
      throw new IllegalArgumentException("The wildcard list must not be null"); 
    this.wildcards = paramList.<String>toArray(new String[paramList.size()]);
  }
  
  public WildcardFilter(String[] paramArrayOfString) {
    if (paramArrayOfString == null)
      throw new IllegalArgumentException("The wildcard array must not be null"); 
    this.wildcards = new String[paramArrayOfString.length];
    System.arraycopy(paramArrayOfString, 0, this.wildcards, 0, paramArrayOfString.length);
  }
  
  public boolean accept(File paramFile) {
    if (!paramFile.isDirectory()) {
      String[] arrayOfString = this.wildcards;
      int j = arrayOfString.length;
      int i = 0;
      while (true) {
        if (i < j) {
          String str = arrayOfString[i];
          if (FilenameUtils.wildcardMatch(paramFile.getName(), str))
            return true; 
          i++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  public boolean accept(File paramFile, String paramString) {
    if (paramFile == null || !(new File(paramFile, paramString)).isDirectory()) {
      String[] arrayOfString = this.wildcards;
      int j = arrayOfString.length;
      int i = 0;
      while (true) {
        if (i < j) {
          if (FilenameUtils.wildcardMatch(paramString, arrayOfString[i]))
            return true; 
          i++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\apache\commons\io\filefilter\WildcardFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */