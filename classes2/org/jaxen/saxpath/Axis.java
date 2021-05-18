package org.jaxen.saxpath;

import org.jaxen.JaxenRuntimeException;

public class Axis {
  public static final int ANCESTOR = 4;
  
  public static final int ANCESTOR_OR_SELF = 13;
  
  public static final int ATTRIBUTE = 9;
  
  public static final int CHILD = 1;
  
  public static final int DESCENDANT = 2;
  
  public static final int DESCENDANT_OR_SELF = 12;
  
  public static final int FOLLOWING = 7;
  
  public static final int FOLLOWING_SIBLING = 5;
  
  public static final int INVALID_AXIS = 0;
  
  public static final int NAMESPACE = 10;
  
  public static final int PARENT = 3;
  
  public static final int PRECEDING = 8;
  
  public static final int PRECEDING_SIBLING = 6;
  
  public static final int SELF = 11;
  
  public static int lookup(String paramString) {
    return "child".equals(paramString) ? 1 : ("descendant".equals(paramString) ? 2 : ("parent".equals(paramString) ? 3 : ("ancestor".equals(paramString) ? 4 : ("following-sibling".equals(paramString) ? 5 : ("preceding-sibling".equals(paramString) ? 6 : ("following".equals(paramString) ? 7 : ("preceding".equals(paramString) ? 8 : ("attribute".equals(paramString) ? 9 : ("namespace".equals(paramString) ? 10 : ("self".equals(paramString) ? 11 : ("descendant-or-self".equals(paramString) ? 12 : ("ancestor-or-self".equals(paramString) ? 13 : 0))))))))))));
  }
  
  public static String lookup(int paramInt) {
    switch (paramInt) {
      default:
        throw new JaxenRuntimeException("Illegal Axis Number");
      case 1:
        return "child";
      case 2:
        return "descendant";
      case 3:
        return "parent";
      case 4:
        return "ancestor";
      case 5:
        return "following-sibling";
      case 6:
        return "preceding-sibling";
      case 7:
        return "following";
      case 8:
        return "preceding";
      case 9:
        return "attribute";
      case 10:
        return "namespace";
      case 11:
        return "self";
      case 12:
        return "descendant-or-self";
      case 13:
        break;
    } 
    return "ancestor-or-self";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\saxpath\Axis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */