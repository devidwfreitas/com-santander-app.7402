package org.simpleframework.xml.core;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

final class Reflector {
  private static Class getArrayClass(Type paramType) {
    paramType = getClass(((GenericArrayType)paramType).getGenericComponentType());
    return (paramType != null) ? Array.newInstance((Class<?>)paramType, 0).getClass() : null;
  }
  
  private static Class getClass(ParameterizedType paramParameterizedType) {
    Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
    return (arrayOfType.length > 0) ? getClass(arrayOfType[0]) : null;
  }
  
  private static Class getClass(Type paramType) {
    return (paramType instanceof Class) ? (Class)paramType : getGenericClass(paramType);
  }
  
  private static Class[] getClasses(ParameterizedType paramParameterizedType) {
    Type[] arrayOfType = paramParameterizedType.getActualTypeArguments();
    Class[] arrayOfClass = new Class[arrayOfType.length];
    for (int i = 0; i < arrayOfType.length; i++)
      arrayOfClass[i] = getClass(arrayOfType[i]); 
    return arrayOfClass;
  }
  
  public static Class getDependent(Field paramField) {
    ParameterizedType parameterizedType = getType(paramField);
    return (parameterizedType != null) ? getClass(parameterizedType) : Object.class;
  }
  
  public static Class[] getDependents(Field paramField) {
    ParameterizedType parameterizedType = getType(paramField);
    return (parameterizedType != null) ? getClasses(parameterizedType) : new Class[0];
  }
  
  private static Class getGenericClass(Type paramType) {
    return (paramType instanceof GenericArrayType) ? getArrayClass(paramType) : Object.class;
  }
  
  public static String getName(String paramString) {
    String str = paramString;
    if (paramString.length() > 0) {
      char[] arrayOfChar = paramString.toCharArray();
      char c = arrayOfChar[0];
      if (!isAcronym(arrayOfChar))
        arrayOfChar[0] = toLowerCase(c); 
      str = new String(arrayOfChar);
    } 
    return str;
  }
  
  public static Class getParameterDependent(Constructor paramConstructor, int paramInt) {
    ParameterizedType parameterizedType = getParameterType(paramConstructor, paramInt);
    return (parameterizedType != null) ? getClass(parameterizedType) : Object.class;
  }
  
  public static Class getParameterDependent(Method paramMethod, int paramInt) {
    ParameterizedType parameterizedType = getParameterType(paramMethod, paramInt);
    return (parameterizedType != null) ? getClass(parameterizedType) : Object.class;
  }
  
  public static Class[] getParameterDependents(Constructor paramConstructor, int paramInt) {
    ParameterizedType parameterizedType = getParameterType(paramConstructor, paramInt);
    return (parameterizedType != null) ? getClasses(parameterizedType) : new Class[0];
  }
  
  public static Class[] getParameterDependents(Method paramMethod, int paramInt) {
    ParameterizedType parameterizedType = getParameterType(paramMethod, paramInt);
    return (parameterizedType != null) ? getClasses(parameterizedType) : new Class[0];
  }
  
  private static ParameterizedType getParameterType(Constructor paramConstructor, int paramInt) {
    Type[] arrayOfType = paramConstructor.getGenericParameterTypes();
    if (arrayOfType.length > paramInt) {
      Type type = arrayOfType[paramInt];
      if (type instanceof ParameterizedType)
        return (ParameterizedType)type; 
    } 
    return null;
  }
  
  private static ParameterizedType getParameterType(Method paramMethod, int paramInt) {
    Type[] arrayOfType = paramMethod.getGenericParameterTypes();
    if (arrayOfType.length > paramInt) {
      Type type = arrayOfType[paramInt];
      if (type instanceof ParameterizedType)
        return (ParameterizedType)type; 
    } 
    return null;
  }
  
  public static Class getReturnDependent(Method paramMethod) {
    ParameterizedType parameterizedType = getReturnType(paramMethod);
    return (parameterizedType != null) ? getClass(parameterizedType) : Object.class;
  }
  
  public static Class[] getReturnDependents(Method paramMethod) {
    ParameterizedType parameterizedType = getReturnType(paramMethod);
    return (parameterizedType != null) ? getClasses(parameterizedType) : new Class[0];
  }
  
  private static ParameterizedType getReturnType(Method paramMethod) {
    Type type = paramMethod.getGenericReturnType();
    return (type instanceof ParameterizedType) ? (ParameterizedType)type : null;
  }
  
  private static ParameterizedType getType(Field paramField) {
    Type type = paramField.getGenericType();
    return (type instanceof ParameterizedType) ? (ParameterizedType)type : null;
  }
  
  private static boolean isAcronym(char[] paramArrayOfchar) {
    return (paramArrayOfchar.length >= 2 && isUpperCase(paramArrayOfchar[0])) ? isUpperCase(paramArrayOfchar[1]) : false;
  }
  
  private static boolean isUpperCase(char paramChar) {
    return Character.isUpperCase(paramChar);
  }
  
  private static char toLowerCase(char paramChar) {
    return Character.toLowerCase(paramChar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Reflector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */