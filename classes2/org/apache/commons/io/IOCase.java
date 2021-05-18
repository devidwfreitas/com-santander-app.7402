package org.apache.commons.io;

import java.io.Serializable;

public final class IOCase implements Serializable {
  public static final IOCase INSENSITIVE;
  
  public static final IOCase SENSITIVE = new IOCase("Sensitive", true);
  
  public static final IOCase SYSTEM;
  
  private static final long serialVersionUID = -6343169151696340687L;
  
  private final String name;
  
  private final transient boolean sensitive;
  
  static {
    INSENSITIVE = new IOCase("Insensitive", false);
    if (FilenameUtils.isSystemWindows())
      bool = false; 
    SYSTEM = new IOCase("System", bool);
  }
  
  private IOCase(String paramString, boolean paramBoolean) {
    this.name = paramString;
    this.sensitive = paramBoolean;
  }
  
  public static IOCase forName(String paramString) {
    if (SENSITIVE.name.equals(paramString))
      return SENSITIVE; 
    if (INSENSITIVE.name.equals(paramString))
      return INSENSITIVE; 
    if (SYSTEM.name.equals(paramString))
      return SYSTEM; 
    throw new IllegalArgumentException("Invalid IOCase name: " + paramString);
  }
  
  private Object readResolve() {
    return forName(this.name);
  }
  
  public int checkCompareTo(String paramString1, String paramString2) {
    if (paramString1 == null || paramString2 == null)
      throw new NullPointerException("The strings must not be null"); 
    return this.sensitive ? paramString1.compareTo(paramString2) : paramString1.compareToIgnoreCase(paramString2);
  }
  
  public boolean checkEndsWith(String paramString1, String paramString2) {
    int i = paramString2.length();
    if (!this.sensitive) {
      boolean bool1 = true;
      return paramString1.regionMatches(bool1, paramString1.length() - i, paramString2, 0, i);
    } 
    boolean bool = false;
    return paramString1.regionMatches(bool, paramString1.length() - i, paramString2, 0, i);
  }
  
  public boolean checkEquals(String paramString1, String paramString2) {
    if (paramString1 == null || paramString2 == null)
      throw new NullPointerException("The strings must not be null"); 
    return this.sensitive ? paramString1.equals(paramString2) : paramString1.equalsIgnoreCase(paramString2);
  }
  
  public int checkIndexOf(String paramString1, int paramInt, String paramString2) {
    int i = paramString1.length() - paramString2.length();
    if (i >= paramInt)
      while (paramInt <= i) {
        if (checkRegionMatches(paramString1, paramInt, paramString2))
          return paramInt; 
        paramInt++;
      }  
    return -1;
  }
  
  public boolean checkRegionMatches(String paramString1, int paramInt, String paramString2) {
    if (!this.sensitive) {
      boolean bool1 = true;
      return paramString1.regionMatches(bool1, paramInt, paramString2, 0, paramString2.length());
    } 
    boolean bool = false;
    return paramString1.regionMatches(bool, paramInt, paramString2, 0, paramString2.length());
  }
  
  public boolean checkStartsWith(String paramString1, String paramString2) {
    if (!this.sensitive) {
      boolean bool1 = true;
      return paramString1.regionMatches(bool1, 0, paramString2, 0, paramString2.length());
    } 
    boolean bool = false;
    return paramString1.regionMatches(bool, 0, paramString2, 0, paramString2.length());
  }
  
  public String getName() {
    return this.name;
  }
  
  public boolean isCaseSensitive() {
    return this.sensitive;
  }
  
  public String toString() {
    return this.name;
  }
  
  static {
    boolean bool = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\IOCase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */