package org.apache.commons.exec;

import java.util.Locale;

public final class OS {
  private static final String FAMILY_DOS = "dos";
  
  private static final String FAMILY_MAC = "mac";
  
  private static final String FAMILY_NETWARE = "netware";
  
  private static final String FAMILY_OPENVMS = "openvms";
  
  private static final String FAMILY_OS_2 = "os/2";
  
  private static final String FAMILY_OS_400 = "os/400";
  
  private static final String FAMILY_TANDEM = "tandem";
  
  private static final String FAMILY_UNIX = "unix";
  
  private static final String FAMILY_WIN9X = "win9x";
  
  private static final String FAMILY_WINDOWS = "windows";
  
  private static final String FAMILY_Z_OS = "z/os";
  
  private static final String OS_ARCH;
  
  private static final String OS_NAME = System.getProperty("os.name").toLowerCase(Locale.US);
  
  private static final String OS_VERSION;
  
  private static final String PATH_SEP;
  
  static {
    OS_ARCH = System.getProperty("os.arch").toLowerCase(Locale.US);
    OS_VERSION = System.getProperty("os.version").toLowerCase(Locale.US);
    PATH_SEP = System.getProperty("path.separator");
  }
  
  public static boolean isArch(String paramString) {
    return isOs(null, null, paramString, null);
  }
  
  private static boolean isFamily(String paramString) {
    return isOs(paramString, null, null, null);
  }
  
  public static boolean isFamilyDOS() {
    return isFamily("dos");
  }
  
  public static boolean isFamilyMac() {
    return isFamily("mac");
  }
  
  public static boolean isFamilyNetware() {
    return isFamily("netware");
  }
  
  public static boolean isFamilyOS2() {
    return isFamily("os/2");
  }
  
  public static boolean isFamilyOS400() {
    return isFamily("os/400");
  }
  
  public static boolean isFamilyOpenVms() {
    return isFamily("openvms");
  }
  
  public static boolean isFamilyTandem() {
    return isFamily("tandem");
  }
  
  public static boolean isFamilyUnix() {
    return isFamily("unix");
  }
  
  public static boolean isFamilyWin9x() {
    return isFamily("win9x");
  }
  
  public static boolean isFamilyWindows() {
    return isFamily("windows");
  }
  
  public static boolean isFamilyZOS() {
    return isFamily("z/os");
  }
  
  public static boolean isName(String paramString) {
    return isOs(null, paramString, null, null);
  }
  
  public static boolean isOs(String paramString1, String paramString2, String paramString3, String paramString4) {
    null = false;
    boolean bool = true;
    if (paramString1 != null || paramString2 != null || paramString3 != null || paramString4 != null) {
      boolean bool1;
      boolean bool2;
      boolean bool3;
      if (paramString1 != null) {
        if (paramString1.equals("windows")) {
          if (OS_NAME.indexOf("windows") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("os/2")) {
          if (OS_NAME.indexOf("os/2") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("netware")) {
          if (OS_NAME.indexOf("netware") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("dos")) {
          if (PATH_SEP.equals(";") && !isFamily("netware")) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("mac")) {
          if (OS_NAME.indexOf("mac") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("tandem")) {
          if (OS_NAME.indexOf("nonstop_kernel") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("unix")) {
          if (PATH_SEP.equals(":") && !isFamily("openvms") && (!isFamily("mac") || OS_NAME.endsWith("x"))) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("win9x")) {
          if (isFamily("windows") && (OS_NAME.indexOf("95") >= 0 || OS_NAME.indexOf("98") >= 0 || OS_NAME.indexOf("me") >= 0 || OS_NAME.indexOf("ce") >= 0)) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("z/os")) {
          if (OS_NAME.indexOf("z/os") > -1 || OS_NAME.indexOf("os/390") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("os/400")) {
          if (OS_NAME.indexOf("os/400") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else if (paramString1.equals("openvms")) {
          if (OS_NAME.indexOf("openvms") > -1) {
            bool1 = true;
          } else {
            bool1 = false;
          } 
        } else {
          throw new IllegalArgumentException("Don't know how to detect os family \"" + paramString1 + "\"");
        } 
      } else {
        bool1 = true;
      } 
      if (paramString2 != null) {
        null = paramString2.equals(OS_NAME);
      } else {
        null = true;
      } 
      if (paramString3 != null) {
        bool2 = paramString3.equals(OS_ARCH);
      } else {
        bool2 = true;
      } 
      if (paramString4 != null) {
        bool3 = paramString4.equals(OS_VERSION);
      } else {
        bool3 = true;
      } 
      if (bool1 && null && bool2 && bool3)
        return bool; 
    } else {
      return null;
    } 
    return false;
  }
  
  public static boolean isVersion(String paramString) {
    return isOs(null, null, null, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\OS.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */