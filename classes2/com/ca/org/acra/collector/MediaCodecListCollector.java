package com.ca.org.acra.collector;

import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;

public class MediaCodecListCollector {
  private static final String[] AAC_TYPES;
  
  private static final String[] AVC_TYPES;
  
  private static final String COLOR_FORMAT_PREFIX = "COLOR_";
  
  private static final String[] H263_TYPES;
  
  private static final String[] MPEG4_TYPES = new String[] { "mp4", "mpeg4", "MP4", "MPEG4" };
  
  private static Class<?> codecCapabilitiesClass;
  
  private static Field colorFormatsField;
  
  private static Method getCapabilitiesForTypeMethod;
  
  private static Method getCodecInfoAtMethod;
  
  private static Method getNameMethod;
  
  private static Method getSupportedTypesMethod;
  
  private static Method isEncoderMethod;
  
  private static Field levelField;
  
  private static SparseArray<String> mAACProfileValues;
  
  private static SparseArray<String> mAVCLevelValues;
  
  private static SparseArray<String> mAVCProfileValues;
  
  private static SparseArray<String> mColorFormatValues;
  
  private static SparseArray<String> mH263LevelValues;
  
  private static SparseArray<String> mH263ProfileValues;
  
  private static SparseArray<String> mMPEG4LevelValues;
  
  private static SparseArray<String> mMPEG4ProfileValues;
  
  private static Class<?> mediaCodecInfoClass;
  
  private static Class<?> mediaCodecListClass;
  
  private static Field profileField;
  
  private static Field profileLevelsField;
  
  static {
    AVC_TYPES = new String[] { "avc", "h264", "AVC", "H264" };
    H263_TYPES = new String[] { "h263", "H263" };
    AAC_TYPES = new String[] { "aac", "AAC" };
    mediaCodecListClass = null;
    getCodecInfoAtMethod = null;
    mediaCodecInfoClass = null;
    getNameMethod = null;
    isEncoderMethod = null;
    getSupportedTypesMethod = null;
    getCapabilitiesForTypeMethod = null;
    codecCapabilitiesClass = null;
    colorFormatsField = null;
    profileLevelsField = null;
    profileField = null;
    levelField = null;
    mColorFormatValues = new SparseArray();
    mAVCLevelValues = new SparseArray();
    mAVCProfileValues = new SparseArray();
    mH263LevelValues = new SparseArray();
    mH263ProfileValues = new SparseArray();
    mMPEG4LevelValues = new SparseArray();
    mMPEG4ProfileValues = new SparseArray();
    mAACProfileValues = new SparseArray();
    try {
      mediaCodecListClass = Class.forName("android.media.MediaCodecList");
      getCodecInfoAtMethod = mediaCodecListClass.getMethod("getCodecInfoAt", new Class[] { int.class });
      mediaCodecInfoClass = Class.forName("android.media.MediaCodecInfo");
      getNameMethod = mediaCodecInfoClass.getMethod("getName", new Class[0]);
      isEncoderMethod = mediaCodecInfoClass.getMethod("isEncoder", new Class[0]);
      getSupportedTypesMethod = mediaCodecInfoClass.getMethod("getSupportedTypes", new Class[0]);
      getCapabilitiesForTypeMethod = mediaCodecInfoClass.getMethod("getCapabilitiesForType", new Class[] { String.class });
      codecCapabilitiesClass = Class.forName("android.media.MediaCodecInfo$CodecCapabilities");
      colorFormatsField = codecCapabilitiesClass.getField("colorFormats");
      profileLevelsField = codecCapabilitiesClass.getField("profileLevels");
      Field[] arrayOfField = codecCapabilitiesClass.getFields();
      int j = arrayOfField.length;
      for (int i = 0;; i++) {
        if (i < j) {
          Field field = arrayOfField[i];
          if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()) && field.getName().startsWith("COLOR_"))
            mColorFormatValues.put(field.getInt(null), field.getName()); 
        } else {
          Class<?> clazz = Class.forName("android.media.MediaCodecInfo$CodecProfileLevel");
          Field[] arrayOfField1 = clazz.getFields();
          j = arrayOfField1.length;
          for (i = b;; i++) {
            if (i < j) {
              Field field = arrayOfField1[i];
              if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()))
                if (field.getName().startsWith("AVCLevel")) {
                  mAVCLevelValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("AVCProfile")) {
                  mAVCProfileValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("H263Level")) {
                  mH263LevelValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("H263Profile")) {
                  mH263ProfileValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("MPEG4Level")) {
                  mMPEG4LevelValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("MPEG4Profile")) {
                  mMPEG4ProfileValues.put(field.getInt(null), field.getName());
                } else if (field.getName().startsWith("AAC")) {
                  mAACProfileValues.put(field.getInt(null), field.getName());
                }  
            } else {
              profileField = clazz.getField("profile");
              levelField = clazz.getField("level");
              return;
            } 
          } 
        } 
      } 
      i++;
      continue;
    } catch (ClassNotFoundException classNotFoundException) {
      return;
    } catch (NoSuchMethodException noSuchMethodException) {
      return;
    } catch (IllegalArgumentException illegalArgumentException) {
      return;
    } catch (IllegalAccessException illegalAccessException) {
      return;
    } catch (SecurityException securityException) {
      return;
    } catch (NoSuchFieldException noSuchFieldException) {
      return;
    } 
  }
  
  public static String collecMediaCodecList() {
    StringBuilder stringBuilder = new StringBuilder();
    if (mediaCodecListClass != null && mediaCodecInfoClass != null)
      try {
        int j = ((Integer)mediaCodecListClass.getMethod("getCodecCount", new Class[0]).invoke(null, new Object[0])).intValue();
        for (int i = 0; i < j; i++) {
          stringBuilder.append("\n");
          Object object = getCodecInfoAtMethod.invoke(null, new Object[] { Integer.valueOf(i) });
          stringBuilder.append(i).append(": ").append(getNameMethod.invoke(object, new Object[0])).append("\n");
          stringBuilder.append("isEncoder: ").append(isEncoderMethod.invoke(object, new Object[0])).append("\n");
          String[] arrayOfString = (String[])getSupportedTypesMethod.invoke(object, new Object[0]);
          stringBuilder.append("Supported types: ").append(Arrays.toString((Object[])arrayOfString)).append("\n");
          int m = arrayOfString.length;
          for (int k = 0; k < m; k++)
            stringBuilder.append(collectCapabilitiesForType(object, arrayOfString[k])); 
          stringBuilder.append("\n");
        } 
      } catch (NoSuchMethodException noSuchMethodException) {
      
      } catch (IllegalAccessException illegalAccessException) {
      
      } catch (InvocationTargetException invocationTargetException) {} 
    return stringBuilder.toString();
  }
  
  private static String collectCapabilitiesForType(Object paramObject, String paramString) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
    StringBuilder stringBuilder = new StringBuilder();
    Object object = getCapabilitiesForTypeMethod.invoke(paramObject, new Object[] { paramString });
    int[] arrayOfInt = (int[])colorFormatsField.get(object);
    if (arrayOfInt.length > 0) {
      stringBuilder.append(paramString).append(" color formats:");
      for (int i = 0; i < arrayOfInt.length; i++) {
        stringBuilder.append((String)mColorFormatValues.get(arrayOfInt[i]));
        if (i < arrayOfInt.length - 1)
          stringBuilder.append(','); 
      } 
      stringBuilder.append("\n");
    } 
    object = profileLevelsField.get(object);
    if (object.length > 0) {
      stringBuilder.append(paramString).append(" profile levels:");
      int i = 0;
      while (i < object.length) {
        CodecType codecType = identifyCodecType(paramObject);
        int j = profileField.getInt(object[i]);
        int k = levelField.getInt(object[i]);
        if (codecType == null)
          stringBuilder.append(j).append('-').append(k); 
        switch (codecType) {
          case AVC:
            stringBuilder.append(j).append((String)mAVCProfileValues.get(j)).append('-').append((String)mAVCLevelValues.get(k));
            if (i < object.length - 1)
              stringBuilder.append(','); 
            i++;
            break;
          case H263:
            stringBuilder.append((String)mH263ProfileValues.get(j)).append('-').append((String)mH263LevelValues.get(k));
            if (i < object.length - 1)
              stringBuilder.append(','); 
            i++;
            break;
          case MPEG4:
            stringBuilder.append((String)mMPEG4ProfileValues.get(j)).append('-').append((String)mMPEG4LevelValues.get(k));
            if (i < object.length - 1)
              stringBuilder.append(','); 
            i++;
            break;
          case AAC:
            stringBuilder.append((String)mAACProfileValues.get(j));
            if (i < object.length - 1)
              stringBuilder.append(','); 
            i++;
            break;
        } 
      } 
      stringBuilder.append("\n");
    } 
    return stringBuilder.append("\n").toString();
  }
  
  private static CodecType identifyCodecType(Object paramObject) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
    boolean bool = false;
    paramObject = getNameMethod.invoke(paramObject, new Object[0]);
    String[] arrayOfString = AVC_TYPES;
    int j = arrayOfString.length;
    int i;
    for (i = 0; i < j; i++) {
      if (paramObject.contains(arrayOfString[i]))
        return CodecType.AVC; 
    } 
    arrayOfString = H263_TYPES;
    j = arrayOfString.length;
    for (i = 0; i < j; i++) {
      if (paramObject.contains(arrayOfString[i]))
        return CodecType.H263; 
    } 
    arrayOfString = MPEG4_TYPES;
    j = arrayOfString.length;
    for (i = 0; i < j; i++) {
      if (paramObject.contains(arrayOfString[i]))
        return CodecType.MPEG4; 
    } 
    arrayOfString = AAC_TYPES;
    j = arrayOfString.length;
    for (i = bool; i < j; i++) {
      if (paramObject.contains(arrayOfString[i]))
        return CodecType.AAC; 
    } 
    return null;
  }
  
  static {
    byte b = 0;
  }
  
  private enum CodecType {
    AAC, AVC, H263, MPEG4;
    
    static {
      $VALUES = new CodecType[] { AVC, H263, MPEG4, AAC };
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\MediaCodecListCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */