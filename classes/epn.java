import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class epn<T> {
  final int hashCode = this.type.hashCode();
  
  final Class<? super T> rawType = ekw.e(this.type);
  
  final Type type = getSuperclassTypeParameter(getClass());
  
  public epn() {}
  
  epn(Type paramType) {}
  
  private static AssertionError buildUnexpectedTypeError(Type paramType, Class<?>... paramVarArgs) {
    StringBuilder stringBuilder = new StringBuilder("Unexpected type. Expected one of: ");
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      stringBuilder.append(paramVarArgs[i].getName()).append(", "); 
    stringBuilder.append("but got: ").append(paramType.getClass().getName()).append(", for type token: ").append(paramType.toString()).append('.');
    return new AssertionError(stringBuilder.toString());
  }
  
  public static <T> epn<T> get(Class<T> paramClass) {
    return new epn<T>(paramClass);
  }
  
  public static epn<?> get(Type paramType) {
    return new epn(paramType);
  }
  
  public static epn<?> getArray(Type paramType) {
    return new epn(ekw.a(paramType));
  }
  
  public static epn<?> getParameterized(Type paramType, Type... paramVarArgs) {
    return new epn(ekw.a(null, paramType, paramVarArgs));
  }
  
  static Type getSuperclassTypeParameter(Class<?> paramClass) {
    Type type = paramClass.getGenericSuperclass();
    if (type instanceof Class)
      throw new RuntimeException("Missing type parameter."); 
    return ekw.d(((ParameterizedType)type).getActualTypeArguments()[0]);
  }
  
  private static boolean isAssignableFrom(Type<?> paramType, GenericArrayType paramGenericArrayType) {
    Type type = paramGenericArrayType.getGenericComponentType();
    if (type instanceof ParameterizedType) {
      if (paramType instanceof GenericArrayType) {
        Type type2 = ((GenericArrayType)paramType).getGenericComponentType();
        return isAssignableFrom(type2, (ParameterizedType)type, new HashMap<String, Type>());
      } 
      Type<?> type1 = paramType;
      if (paramType instanceof Class) {
        paramType = paramType;
        while (true) {
          type1 = paramType;
          if (paramType.isArray()) {
            paramType = paramType.getComponentType();
            continue;
          } 
          return isAssignableFrom(type1, (ParameterizedType)type, new HashMap<String, Type>());
        } 
      } 
      return isAssignableFrom(type1, (ParameterizedType)type, new HashMap<String, Type>());
    } 
    return true;
  }
  
  private static boolean isAssignableFrom(Type paramType, ParameterizedType paramParameterizedType, Map<String, Type> paramMap) {
    byte b = 0;
    if (paramType == null)
      return false; 
    if (paramParameterizedType.equals(paramType))
      return true; 
    Class clazz = ekw.e(paramType);
    if (paramType instanceof ParameterizedType) {
      paramType = paramType;
    } else {
      paramType = null;
    } 
    if (paramType != null) {
      Type[] arrayOfType1 = paramType.getActualTypeArguments();
      TypeVariable[] arrayOfTypeVariable = clazz.getTypeParameters();
      for (int k = 0; k < arrayOfType1.length; k++) {
        Type type = arrayOfType1[k];
        TypeVariable typeVariable = arrayOfTypeVariable[k];
        while (type instanceof TypeVariable)
          type = paramMap.get(((TypeVariable)type).getName()); 
        paramMap.put(typeVariable.getName(), type);
      } 
      if (typeEquals((ParameterizedType)paramType, paramParameterizedType, paramMap))
        return true; 
    } 
    Type[] arrayOfType = clazz.getGenericInterfaces();
    int j = arrayOfType.length;
    for (int i = b; i < j; i++) {
      if (isAssignableFrom(arrayOfType[i], paramParameterizedType, new HashMap<String, Type>(paramMap)))
        return true; 
    } 
    return isAssignableFrom(clazz.getGenericSuperclass(), paramParameterizedType, new HashMap<String, Type>(paramMap));
  }
  
  private static boolean matches(Type paramType1, Type paramType2, Map<String, Type> paramMap) {
    return (paramType2.equals(paramType1) || (paramType1 instanceof TypeVariable && paramType2.equals(paramMap.get(((TypeVariable)paramType1).getName()))));
  }
  
  private static boolean typeEquals(ParameterizedType paramParameterizedType1, ParameterizedType paramParameterizedType2, Map<String, Type> paramMap) {
    if (paramParameterizedType1.getRawType().equals(paramParameterizedType2.getRawType())) {
      Type[] arrayOfType1 = paramParameterizedType1.getActualTypeArguments();
      Type[] arrayOfType2 = paramParameterizedType2.getActualTypeArguments();
      int i = 0;
      while (i < arrayOfType1.length) {
        if (matches(arrayOfType1[i], arrayOfType2[i], paramMap)) {
          i++;
          continue;
        } 
        return false;
      } 
    } else {
      return false;
    } 
    return true;
  }
  
  public final boolean equals(Object paramObject) {
    return (paramObject instanceof epn && ekw.a(this.type, ((epn)paramObject).type));
  }
  
  public final Class<? super T> getRawType() {
    return this.rawType;
  }
  
  public final Type getType() {
    return this.type;
  }
  
  public final int hashCode() {
    return this.hashCode;
  }
  
  @Deprecated
  public boolean isAssignableFrom(epn<?> paramepn) {
    return isAssignableFrom(paramepn.getType());
  }
  
  @Deprecated
  public boolean isAssignableFrom(Class<?> paramClass) {
    return isAssignableFrom(paramClass);
  }
  
  @Deprecated
  public boolean isAssignableFrom(Type paramType) {
    if (paramType == null)
      return false; 
    if (this.type.equals(paramType))
      return true; 
    if (this.type instanceof Class)
      return this.rawType.isAssignableFrom(ekw.e(paramType)); 
    if (this.type instanceof ParameterizedType)
      return isAssignableFrom(paramType, (ParameterizedType)this.type, new HashMap<String, Type>()); 
    if (this.type instanceof GenericArrayType)
      return (this.rawType.isAssignableFrom(ekw.e(paramType)) && isAssignableFrom(paramType, (GenericArrayType)this.type)); 
    throw buildUnexpectedTypeError(this.type, new Class[] { Class.class, ParameterizedType.class, GenericArrayType.class });
  }
  
  public final String toString() {
    return ekw.f(this.type);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\epn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */