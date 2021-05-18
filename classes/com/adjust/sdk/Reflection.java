package com.adjust.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import com.adjust.sdk.plugin.Plugin;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class Reflection {
  public static Object createDefaultInstance(Class<Class<?>> paramClass) {
    try {
      return paramClass.newInstance();
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Object createDefaultInstance(String paramString) {
    return createDefaultInstance(forName(paramString));
  }
  
  public static Object createInstance(String paramString, Class[] paramArrayOfClass, Object... paramVarArgs) {
    try {
      return Class.forName(paramString).getConstructor(paramArrayOfClass).newInstance(paramVarArgs);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Class forName(String paramString) {
    try {
      return Class.forName(paramString);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  private static Object getAdvertisingInfoObject(Context paramContext) {
    return invokeStaticMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class }, new Object[] { paramContext });
  }
  
  public static String getAndroidId(Context paramContext) {
    try {
      return (String)invokeStaticMethod("com.adjust.sdk.plugin.AndroidIdUtil", "getAndroidId", new Class[] { Context.class }, new Object[] { paramContext });
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static String getCpuAbi() {
    try {
      return (String)readField("android.os.Build", "CPU_ABI");
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static String getImei(TelephonyManager paramTelephonyManager) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getImei", null, new Object[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String getImei(TelephonyManager paramTelephonyManager, int paramInt) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getImei", new Class[] { int.class }, new Object[] { Integer.valueOf(paramInt) });
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static Locale getLocaleFromField(Configuration paramConfiguration) {
    try {
      return (Locale)readField("android.content.res.Configuration", "locale", paramConfiguration);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Locale getLocaleFromLocaleList(Configuration paramConfiguration) {
    try {
      object = invokeInstanceMethod(paramConfiguration, "getLocales", null, new Object[0]);
      if (object == null)
        return null; 
      object = invokeInstanceMethod(object, "get", new Class[] { int.class }, new Object[] { Integer.valueOf(0) });
    } catch (Throwable object) {
      object = null;
    } 
    return (Locale)object;
  }
  
  public static String getMacAddress(Context paramContext) {
    try {
      return (String)invokeStaticMethod("com.adjust.sdk.plugin.MacAddressUtil", "getMacAddress", new Class[] { Context.class }, new Object[] { paramContext });
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static String getMeid(TelephonyManager paramTelephonyManager) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getMeid", null, new Object[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String getMeid(TelephonyManager paramTelephonyManager, int paramInt) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getMeid", new Class[] { int.class }, new Object[] { Integer.valueOf(paramInt) });
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String getPlayAdId(Context paramContext) {
    try {
      return (String)invokeInstanceMethod(getAdvertisingInfoObject(paramContext), "getId", null, new Object[0]);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Map<String, String> getPluginKeys(Context paramContext) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Iterator<Plugin> iterator = getPlugins().iterator();
    while (iterator.hasNext()) {
      Map.Entry entry = ((Plugin)iterator.next()).getParameter(paramContext);
      if (entry != null)
        hashMap.put(entry.getKey(), entry.getValue()); 
    } 
    return (Map)((hashMap.size() == 0) ? null : hashMap);
  }
  
  private static List<Plugin> getPlugins() {
    ArrayList<Plugin> arrayList = new ArrayList(Constants.PLUGINS.size());
    Iterator<String> iterator = Constants.PLUGINS.iterator();
    while (iterator.hasNext()) {
      Object object = createDefaultInstance(iterator.next());
      if (object != null && object instanceof Plugin)
        arrayList.add((Plugin)object); 
    } 
    return arrayList;
  }
  
  public static String[] getSupportedAbis() {
    try {
      return (String[])readField("android.os.Build", "SUPPORTED_ABIS");
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static String getTelephonyId(TelephonyManager paramTelephonyManager) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getDeviceId", null, new Object[0]);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String getTelephonyId(TelephonyManager paramTelephonyManager, int paramInt) {
    try {
      return (String)invokeInstanceMethod(paramTelephonyManager, "getDeviceId", new Class[] { int.class }, new Object[] { Integer.valueOf(paramInt) });
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static Object getVMRuntimeObject() {
    try {
      return invokeStaticMethod("dalvik.system.VMRuntime", "getRuntime", null, new Object[0]);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static String getVmInstructionSet() {
    try {
      return (String)invokeInstanceMethod(getVMRuntimeObject(), "vmInstructionSet", null, new Object[0]);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Object invokeInstanceMethod(Object paramObject, String paramString, Class[] paramArrayOfClass, Object... paramVarArgs) {
    return invokeMethod(paramObject.getClass(), paramString, paramObject, paramArrayOfClass, paramVarArgs);
  }
  
  public static Object invokeMethod(Class paramClass, String paramString, Object paramObject, Class[] paramArrayOfClass, Object... paramVarArgs) {
    Method method = paramClass.getMethod(paramString, paramArrayOfClass);
    return (method == null) ? null : method.invoke(paramObject, paramVarArgs);
  }
  
  public static Object invokeStaticMethod(String paramString1, String paramString2, Class[] paramArrayOfClass, Object... paramVarArgs) {
    return invokeMethod(Class.forName(paramString1), paramString2, null, paramArrayOfClass, paramVarArgs);
  }
  
  public static Boolean isPlayTrackingEnabled(Context paramContext) {
    try {
      Boolean bool = (Boolean)invokeInstanceMethod(getAdvertisingInfoObject(paramContext), "isLimitAdTrackingEnabled", null, new Object[0]);
      if (bool == null)
        return null; 
      if (!bool.booleanValue()) {
        boolean bool2 = true;
        return Boolean.valueOf(bool2);
      } 
      boolean bool1 = false;
      return Boolean.valueOf(bool1);
    } catch (Throwable throwable) {
      return null;
    } 
  }
  
  public static Object readField(String paramString1, String paramString2) {
    return readField(paramString1, paramString2, null);
  }
  
  public static Object readField(String paramString1, String paramString2, Object paramObject) {
    Class clazz = forName(paramString1);
    if (clazz != null) {
      Field field = clazz.getField(paramString2);
      if (field != null)
        return field.get(paramObject); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\Reflection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */