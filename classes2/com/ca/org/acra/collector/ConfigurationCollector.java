package com.ca.org.acra.collector;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.util.SparseArray;
import com.ca.org.acra.ACRA;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;

public final class ConfigurationCollector {
  private static final String FIELD_MCC = "mcc";
  
  private static final String FIELD_MNC = "mnc";
  
  private static final String FIELD_SCREENLAYOUT = "screenLayout";
  
  private static final String FIELD_UIMODE = "uiMode";
  
  private static final String PREFIX_HARDKEYBOARDHIDDEN = "HARDKEYBOARDHIDDEN_";
  
  private static final String PREFIX_KEYBOARD = "KEYBOARD_";
  
  private static final String PREFIX_KEYBOARDHIDDEN = "KEYBOARDHIDDEN_";
  
  private static final String PREFIX_NAVIGATION = "NAVIGATION_";
  
  private static final String PREFIX_NAVIGATIONHIDDEN = "NAVIGATIONHIDDEN_";
  
  private static final String PREFIX_ORIENTATION = "ORIENTATION_";
  
  private static final String PREFIX_SCREENLAYOUT = "SCREENLAYOUT_";
  
  private static final String PREFIX_TOUCHSCREEN = "TOUCHSCREEN_";
  
  private static final String PREFIX_UI_MODE = "UI_MODE_";
  
  private static final String SUFFIX_MASK = "_MASK";
  
  private static SparseArray<String> mHardKeyboardHiddenValues = new SparseArray();
  
  private static SparseArray<String> mKeyboardHiddenValues;
  
  private static SparseArray<String> mKeyboardValues = new SparseArray();
  
  private static SparseArray<String> mNavigationHiddenValues;
  
  private static SparseArray<String> mNavigationValues;
  
  private static SparseArray<String> mOrientationValues;
  
  private static SparseArray<String> mScreenLayoutValues;
  
  private static SparseArray<String> mTouchScreenValues;
  
  private static SparseArray<String> mUiModeValues;
  
  private static final HashMap<String, SparseArray<String>> mValueArrays;
  
  static {
    mKeyboardHiddenValues = new SparseArray();
    mNavigationValues = new SparseArray();
    mNavigationHiddenValues = new SparseArray();
    mOrientationValues = new SparseArray();
    mScreenLayoutValues = new SparseArray();
    mTouchScreenValues = new SparseArray();
    mUiModeValues = new SparseArray();
    mValueArrays = new HashMap<String, SparseArray<String>>();
    mValueArrays.put("HARDKEYBOARDHIDDEN_", mHardKeyboardHiddenValues);
    mValueArrays.put("KEYBOARD_", mKeyboardValues);
    mValueArrays.put("KEYBOARDHIDDEN_", mKeyboardHiddenValues);
    mValueArrays.put("NAVIGATION_", mNavigationValues);
    mValueArrays.put("NAVIGATIONHIDDEN_", mNavigationHiddenValues);
    mValueArrays.put("ORIENTATION_", mOrientationValues);
    mValueArrays.put("SCREENLAYOUT_", mScreenLayoutValues);
    mValueArrays.put("TOUCHSCREEN_", mTouchScreenValues);
    mValueArrays.put("UI_MODE_", mUiModeValues);
    Field[] arrayOfField = Configuration.class.getFields();
    int j = arrayOfField.length;
    for (int i = 0;; i++) {
      if (i < j) {
        Field field = arrayOfField[i];
        if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
          String str = field.getName();
          try {
            if (str.startsWith("HARDKEYBOARDHIDDEN_")) {
              mHardKeyboardHiddenValues.put(field.getInt(null), str);
            } else if (str.startsWith("KEYBOARD_")) {
              mKeyboardValues.put(field.getInt(null), str);
            } else if (str.startsWith("KEYBOARDHIDDEN_")) {
              mKeyboardHiddenValues.put(field.getInt(null), str);
            } else if (str.startsWith("NAVIGATION_")) {
              mNavigationValues.put(field.getInt(null), str);
            } else if (str.startsWith("NAVIGATIONHIDDEN_")) {
              mNavigationHiddenValues.put(field.getInt(null), str);
            } else if (str.startsWith("ORIENTATION_")) {
              mOrientationValues.put(field.getInt(null), str);
            } else if (str.startsWith("SCREENLAYOUT_")) {
              mScreenLayoutValues.put(field.getInt(null), str);
            } else if (str.startsWith("TOUCHSCREEN_")) {
              mTouchScreenValues.put(field.getInt(null), str);
            } else if (str.startsWith("UI_MODE_")) {
              mUiModeValues.put(field.getInt(null), str);
            } 
          } catch (IllegalArgumentException illegalArgumentException) {
            Log.w(ACRA.LOG_TAG, "Error while inspecting device configuration: ", illegalArgumentException);
          } catch (IllegalAccessException illegalAccessException) {
            Log.w(ACRA.LOG_TAG, "Error while inspecting device configuration: ", illegalAccessException);
          } 
        } 
      } else {
        return;
      } 
    } 
  }
  
  private static String activeFlags(SparseArray<String> paramSparseArray, int paramInt) {
    StringBuilder stringBuilder = new StringBuilder();
    for (int i = 0; i < paramSparseArray.size(); i++) {
      int j = paramSparseArray.keyAt(i);
      if (((String)paramSparseArray.get(j)).endsWith("_MASK")) {
        j = paramInt & j;
        if (j > 0) {
          if (stringBuilder.length() > 0)
            stringBuilder.append('+'); 
          stringBuilder.append((String)paramSparseArray.get(j));
        } 
      } 
    } 
    return stringBuilder.toString();
  }
  
  public static String collectConfiguration(Context paramContext) {
    try {
      return toString(paramContext.getResources().getConfiguration());
    } catch (RuntimeException runtimeException) {
      Log.w(ACRA.LOG_TAG, "Couldn't retrieve CrashConfiguration for : " + paramContext.getPackageName(), runtimeException);
      return "Couldn't retrieve crash config";
    } 
  }
  
  private static String getFieldValueName(Configuration paramConfiguration, Field paramField) throws IllegalAccessException {
    String str2 = paramField.getName();
    if (str2.equals("mcc") || str2.equals("mnc"))
      return Integer.toString(paramField.getInt(paramConfiguration)); 
    if (str2.equals("uiMode"))
      return activeFlags(mValueArrays.get("UI_MODE_"), paramField.getInt(paramConfiguration)); 
    if (str2.equals("screenLayout"))
      return activeFlags(mValueArrays.get("SCREENLAYOUT_"), paramField.getInt(paramConfiguration)); 
    SparseArray sparseArray = mValueArrays.get(str2.toUpperCase() + '_');
    if (sparseArray == null)
      return Integer.toString(paramField.getInt(paramConfiguration)); 
    String str3 = (String)sparseArray.get(paramField.getInt(paramConfiguration));
    String str1 = str3;
    return (str3 == null) ? Integer.toString(paramField.getInt(paramConfiguration)) : str1;
  }
  
  public static String toString(Configuration paramConfiguration) {
    StringBuilder stringBuilder = new StringBuilder();
    Field[] arrayOfField = paramConfiguration.getClass().getFields();
    int j = arrayOfField.length;
    for (int i = 0;; i++) {
      if (i < j) {
        Field field = arrayOfField[i];
        try {
          if (!Modifier.isStatic(field.getModifiers())) {
            stringBuilder.append(field.getName()).append('=');
            if (field.getType().equals(int.class)) {
              stringBuilder.append(getFieldValueName(paramConfiguration, field));
            } else if (field.get(paramConfiguration) != null) {
              stringBuilder.append(field.get(paramConfiguration).toString());
            } 
            stringBuilder.append('\n');
          } 
        } catch (IllegalArgumentException illegalArgumentException) {
          Log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", illegalArgumentException);
        } catch (IllegalAccessException illegalAccessException) {
          Log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", illegalAccessException);
        } 
      } else {
        return stringBuilder.toString();
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\ConfigurationCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */