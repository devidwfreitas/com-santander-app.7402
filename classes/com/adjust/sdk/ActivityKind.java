package com.adjust.sdk;

import auu;

public enum ActivityKind {
  ATTRIBUTION, CLICK, EVENT, INFO, REATTRIBUTION, REVENUE, SESSION, UNKNOWN;
  
  static {
    SESSION = new ActivityKind("SESSION", 1);
    EVENT = new ActivityKind("EVENT", 2);
    CLICK = new ActivityKind("CLICK", 3);
    ATTRIBUTION = new ActivityKind("ATTRIBUTION", 4);
    REVENUE = new ActivityKind("REVENUE", 5);
    REATTRIBUTION = new ActivityKind("REATTRIBUTION", 6);
    INFO = new ActivityKind("INFO", 7);
    $VALUES = new ActivityKind[] { UNKNOWN, SESSION, EVENT, CLICK, ATTRIBUTION, REVENUE, REATTRIBUTION, INFO };
  }
  
  public static ActivityKind fromString(String paramString) {
    return "session".equals(paramString) ? SESSION : ("event".equals(paramString) ? EVENT : ("click".equals(paramString) ? CLICK : ("attribution".equals(paramString) ? ATTRIBUTION : ("info".equals(paramString) ? INFO : UNKNOWN))));
  }
  
  public String toString() {
    switch (auu.a[ordinal()]) {
      default:
        return "unknown";
      case 1:
        return "session";
      case 2:
        return "event";
      case 3:
        return "click";
      case 4:
        return "attribution";
      case 5:
        break;
    } 
    return "info";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\ActivityKind.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */