package org.jaxen.function;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import org.jaxen.Context;
import org.jaxen.Function;
import org.jaxen.FunctionCallException;
import org.jaxen.Navigator;

public class StringFunction implements Function {
  private static DecimalFormat format = (DecimalFormat)NumberFormat.getInstance(Locale.ENGLISH);
  
  static {
    DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.ENGLISH);
    decimalFormatSymbols.setNaN("NaN");
    decimalFormatSymbols.setInfinity("Infinity");
    format.setGroupingUsed(false);
    format.setMaximumFractionDigits(32);
    format.setDecimalFormatSymbols(decimalFormatSymbols);
  }
  
  public static String evaluate(Object paramObject, Navigator paramNavigator) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 22
    //   4: aload_1
    //   5: aload_0
    //   6: invokeinterface isText : (Ljava/lang/Object;)Z
    //   11: ifeq -> 22
    //   14: aload_1
    //   15: aload_0
    //   16: invokeinterface getTextStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   21: areturn
    //   22: aload_0
    //   23: instanceof java/util/List
    //   26: ifeq -> 281
    //   29: aload_0
    //   30: checkcast java/util/List
    //   33: astore_0
    //   34: aload_0
    //   35: invokeinterface isEmpty : ()Z
    //   40: ifeq -> 46
    //   43: ldc ''
    //   45: areturn
    //   46: aload_0
    //   47: iconst_0
    //   48: invokeinterface get : (I)Ljava/lang/Object;
    //   53: astore_0
    //   54: aload_1
    //   55: ifnull -> 218
    //   58: aload_1
    //   59: aload_0
    //   60: invokeinterface isElement : (Ljava/lang/Object;)Z
    //   65: ifeq -> 76
    //   68: aload_1
    //   69: aload_0
    //   70: invokeinterface getElementStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   75: areturn
    //   76: aload_1
    //   77: aload_0
    //   78: invokeinterface isAttribute : (Ljava/lang/Object;)Z
    //   83: ifeq -> 94
    //   86: aload_1
    //   87: aload_0
    //   88: invokeinterface getAttributeStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   93: areturn
    //   94: aload_1
    //   95: aload_0
    //   96: invokeinterface isDocument : (Ljava/lang/Object;)Z
    //   101: ifeq -> 146
    //   104: aload_1
    //   105: aload_0
    //   106: invokeinterface getChildAxisIterator : (Ljava/lang/Object;)Ljava/util/Iterator;
    //   111: astore_2
    //   112: aload_2
    //   113: invokeinterface hasNext : ()Z
    //   118: ifeq -> 218
    //   121: aload_2
    //   122: invokeinterface next : ()Ljava/lang/Object;
    //   127: astore_3
    //   128: aload_1
    //   129: aload_3
    //   130: invokeinterface isElement : (Ljava/lang/Object;)Z
    //   135: ifeq -> 112
    //   138: aload_1
    //   139: aload_3
    //   140: invokeinterface getElementStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   145: areturn
    //   146: aload_1
    //   147: aload_0
    //   148: invokeinterface isProcessingInstruction : (Ljava/lang/Object;)Z
    //   153: ifeq -> 164
    //   156: aload_1
    //   157: aload_0
    //   158: invokeinterface getProcessingInstructionData : (Ljava/lang/Object;)Ljava/lang/String;
    //   163: areturn
    //   164: aload_1
    //   165: aload_0
    //   166: invokeinterface isComment : (Ljava/lang/Object;)Z
    //   171: ifeq -> 182
    //   174: aload_1
    //   175: aload_0
    //   176: invokeinterface getCommentStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   181: areturn
    //   182: aload_1
    //   183: aload_0
    //   184: invokeinterface isText : (Ljava/lang/Object;)Z
    //   189: ifeq -> 200
    //   192: aload_1
    //   193: aload_0
    //   194: invokeinterface getTextStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   199: areturn
    //   200: aload_1
    //   201: aload_0
    //   202: invokeinterface isNamespace : (Ljava/lang/Object;)Z
    //   207: ifeq -> 218
    //   210: aload_1
    //   211: aload_0
    //   212: invokeinterface getNamespaceStringValue : (Ljava/lang/Object;)Ljava/lang/String;
    //   217: areturn
    //   218: aload_0
    //   219: instanceof java/lang/String
    //   222: ifeq -> 230
    //   225: aload_0
    //   226: checkcast java/lang/String
    //   229: areturn
    //   230: aload_0
    //   231: instanceof java/lang/Boolean
    //   234: ifeq -> 248
    //   237: aload_0
    //   238: checkcast java/lang/Boolean
    //   241: invokevirtual booleanValue : ()Z
    //   244: invokestatic stringValue : (Z)Ljava/lang/String;
    //   247: areturn
    //   248: aload_0
    //   249: instanceof java/lang/Number
    //   252: ifeq -> 278
    //   255: aload_0
    //   256: checkcast java/lang/Number
    //   259: invokevirtual doubleValue : ()D
    //   262: invokestatic stringValue : (D)Ljava/lang/String;
    //   265: astore_0
    //   266: aload_0
    //   267: areturn
    //   268: astore_0
    //   269: new org/jaxen/JaxenRuntimeException
    //   272: dup
    //   273: aload_0
    //   274: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   277: athrow
    //   278: ldc ''
    //   280: areturn
    //   281: goto -> 54
    // Exception table:
    //   from	to	target	type
    //   4	22	268	org/jaxen/UnsupportedAxisException
    //   22	43	268	org/jaxen/UnsupportedAxisException
    //   46	54	268	org/jaxen/UnsupportedAxisException
    //   58	76	268	org/jaxen/UnsupportedAxisException
    //   76	94	268	org/jaxen/UnsupportedAxisException
    //   94	112	268	org/jaxen/UnsupportedAxisException
    //   112	146	268	org/jaxen/UnsupportedAxisException
    //   146	164	268	org/jaxen/UnsupportedAxisException
    //   164	182	268	org/jaxen/UnsupportedAxisException
    //   182	200	268	org/jaxen/UnsupportedAxisException
    //   200	218	268	org/jaxen/UnsupportedAxisException
    //   218	230	268	org/jaxen/UnsupportedAxisException
    //   230	248	268	org/jaxen/UnsupportedAxisException
    //   248	266	268	org/jaxen/UnsupportedAxisException
  }
  
  private static String stringValue(double paramDouble) {
    if (paramDouble == 0.0D)
      return "0"; 
    synchronized (format) {
      return format.format(paramDouble);
    } 
  }
  
  private static String stringValue(boolean paramBoolean) {
    return paramBoolean ? "true" : "false";
  }
  
  public Object call(Context paramContext, List paramList) {
    int i = paramList.size();
    if (i == 0)
      return evaluate(paramContext.getNodeSet(), paramContext.getNavigator()); 
    if (i == 1)
      return evaluate(paramList.get(0), paramContext.getNavigator()); 
    throw new FunctionCallException("string() takes at most argument.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\function\StringFunction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */