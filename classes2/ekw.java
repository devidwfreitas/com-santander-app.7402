import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class ekw {
  static final Type[] a = new Type[0];
  
  private ekw() {
    throw new UnsupportedOperationException();
  }
  
  static int a(Object paramObject) {
    return (paramObject != null) ? paramObject.hashCode() : 0;
  }
  
  private static int a(Object[] paramArrayOfObject, Object paramObject) {
    for (int i = 0; i < paramArrayOfObject.length; i++) {
      if (paramObject.equals(paramArrayOfObject[i]))
        return i; 
    } 
    throw new NoSuchElementException();
  }
  
  private static Class<?> a(TypeVariable<?> paramTypeVariable) {
    paramTypeVariable = (TypeVariable<?>)paramTypeVariable.getGenericDeclaration();
    return (paramTypeVariable instanceof Class) ? (Class)paramTypeVariable : null;
  }
  
  public static GenericArrayType a(Type paramType) {
    return new ekx(paramType);
  }
  
  public static ParameterizedType a(Type paramType1, Type paramType2, Type... paramVarArgs) {
    return new eky(paramType1, paramType2, paramVarArgs);
  }
  
  public static Type a(Type paramType, Class<?> paramClass) {
    Type type = b(paramType, paramClass, Collection.class);
    paramType = type;
    if (type instanceof WildcardType)
      paramType = ((WildcardType)type).getUpperBounds()[0]; 
    return (paramType instanceof ParameterizedType) ? ((ParameterizedType)paramType).getActualTypeArguments()[0] : Object.class;
  }
  
  static Type a(Type<?> paramType, Class<?> paramClass1, Class<?> paramClass2) {
    if (paramClass2 == paramClass1)
      return paramType; 
    if (paramClass2.isInterface()) {
      Class[] arrayOfClass = paramClass1.getInterfaces();
      int i = 0;
      int j = arrayOfClass.length;
      while (i < j) {
        if (arrayOfClass[i] == paramClass2)
          return paramClass1.getGenericInterfaces()[i]; 
        if (paramClass2.isAssignableFrom(arrayOfClass[i]))
          return a(paramClass1.getGenericInterfaces()[i], arrayOfClass[i], paramClass2); 
        i++;
      } 
    } 
    if (!paramClass1.isInterface())
      while (paramClass1 != Object.class) {
        paramType = paramClass1.getSuperclass();
        if (paramType == paramClass2)
          return paramClass1.getGenericSuperclass(); 
        if (paramClass2.isAssignableFrom((Class<?>)paramType))
          return a(paramClass1.getGenericSuperclass(), (Class<?>)paramType, paramClass2); 
        Type<?> type = paramType;
      }  
    return paramClass2;
  }
  
  public static Type a(Type paramType1, Class<?> paramClass, Type<?> paramType2) {
    WildcardType wildcardType;
    Type[] arrayOfType2;
    Type<?> type = paramType2;
    while (type instanceof TypeVariable) {
      type = type;
      paramType2 = a(paramType1, paramClass, (TypeVariable<?>)type);
      if (paramType2 != type) {
        type = paramType2;
        continue;
      } 
      return paramType2;
    } 
    if (type instanceof Class && ((Class)type).isArray()) {
      paramType2 = type;
      type = paramType2.getComponentType();
      paramType1 = a(paramType1, paramClass, type);
      return (type != paramType1) ? a(paramType1) : paramType2;
    } 
    if (type instanceof GenericArrayType) {
      paramType2 = type;
      type = paramType2.getGenericComponentType();
      paramType1 = a(paramType1, paramClass, type);
      return (type != paramType1) ? a(paramType1) : paramType2;
    } 
    if (type instanceof ParameterizedType) {
      boolean bool;
      ParameterizedType parameterizedType = (ParameterizedType)type;
      paramType2 = parameterizedType.getOwnerType();
      Type type1 = a(paramType1, paramClass, paramType2);
      if (type1 != paramType2) {
        bool = true;
      } else {
        bool = false;
      } 
      arrayOfType2 = parameterizedType.getActualTypeArguments();
      int j = arrayOfType2.length;
      int i = 0;
      while (i < j) {
        Type type2 = a(paramType1, paramClass, arrayOfType2[i]);
        Type[] arrayOfType = arrayOfType2;
        boolean bool1 = bool;
        if (type2 != arrayOfType2[i]) {
          arrayOfType = arrayOfType2;
          bool1 = bool;
          if (!bool) {
            arrayOfType = (Type[])arrayOfType2.clone();
            bool1 = true;
          } 
          arrayOfType[i] = type2;
        } 
        i++;
        arrayOfType2 = arrayOfType;
        bool = bool1;
      } 
      paramType2 = parameterizedType;
      return bool ? a(type1, parameterizedType.getRawType(), arrayOfType2) : paramType2;
    } 
    Type[] arrayOfType1 = arrayOfType2;
    if (arrayOfType2 instanceof WildcardType) {
      WildcardType wildcardType1 = (WildcardType)arrayOfType2;
      Type[] arrayOfType3 = wildcardType1.getLowerBounds();
      Type[] arrayOfType4 = wildcardType1.getUpperBounds();
      if (arrayOfType3.length == 1) {
        paramType1 = a(paramType1, paramClass, arrayOfType3[0]);
        WildcardType wildcardType2 = wildcardType1;
        return (paramType1 != arrayOfType3[0]) ? c(paramType1) : wildcardType2;
      } 
      wildcardType = wildcardType1;
      if (arrayOfType4.length == 1) {
        paramType1 = a(paramType1, paramClass, arrayOfType4[0]);
        wildcardType = wildcardType1;
        if (paramType1 != arrayOfType4[0])
          return b(paramType1); 
      } 
    } 
    return wildcardType;
  }
  
  static Type a(Type paramType, Class<?> paramClass, TypeVariable<?> paramTypeVariable) {
    Class<?> clazz = a(paramTypeVariable);
    if (clazz != null) {
      paramType = a(paramType, paramClass, clazz);
      if (paramType instanceof ParameterizedType) {
        int i = a((Object[])clazz.getTypeParameters(), paramTypeVariable);
        return ((ParameterizedType)paramType).getActualTypeArguments()[i];
      } 
    } 
    return paramTypeVariable;
  }
  
  static boolean a(Object paramObject1, Object paramObject2) {
    return (paramObject1 == paramObject2 || (paramObject1 != null && paramObject1.equals(paramObject2)));
  }
  
  public static boolean a(Type paramType1, Type paramType2) {
    boolean bool4 = true;
    boolean bool5 = true;
    boolean bool2 = true;
    boolean bool3 = false;
    if (paramType1 == paramType2)
      return true; 
    if (paramType1 instanceof Class)
      return paramType1.equals(paramType2); 
    if (paramType1 instanceof ParameterizedType) {
      boolean bool = bool3;
      if (paramType2 instanceof ParameterizedType) {
        paramType1 = paramType1;
        paramType2 = paramType2;
        return (a(paramType1.getOwnerType(), paramType2.getOwnerType()) && paramType1.getRawType().equals(paramType2.getRawType()) && Arrays.equals((Object[])paramType1.getActualTypeArguments(), (Object[])paramType2.getActualTypeArguments())) ? bool2 : false;
      } 
      return bool;
    } 
    if (paramType1 instanceof GenericArrayType) {
      boolean bool = bool3;
      if (paramType2 instanceof GenericArrayType) {
        paramType1 = paramType1;
        paramType2 = paramType2;
        return a(paramType1.getGenericComponentType(), paramType2.getGenericComponentType());
      } 
      return bool;
    } 
    if (paramType1 instanceof WildcardType) {
      boolean bool = bool3;
      if (paramType2 instanceof WildcardType) {
        paramType1 = paramType1;
        paramType2 = paramType2;
        return (Arrays.equals((Object[])paramType1.getUpperBounds(), (Object[])paramType2.getUpperBounds()) && Arrays.equals((Object[])paramType1.getLowerBounds(), (Object[])paramType2.getLowerBounds())) ? bool4 : false;
      } 
      return bool;
    } 
    boolean bool1 = bool3;
    if (paramType1 instanceof TypeVariable) {
      bool1 = bool3;
      if (paramType2 instanceof TypeVariable) {
        paramType1 = paramType1;
        paramType2 = paramType2;
        return (paramType1.getGenericDeclaration() == paramType2.getGenericDeclaration() && paramType1.getName().equals(paramType2.getName())) ? bool5 : false;
      } 
    } 
    return bool1;
  }
  
  static Type b(Type paramType, Class<?> paramClass1, Class<?> paramClass2) {
    ekv.a(paramClass2.isAssignableFrom(paramClass1));
    return a(paramType, paramClass1, a(paramType, paramClass1, paramClass2));
  }
  
  public static WildcardType b(Type paramType) {
    Type[] arrayOfType = a;
    return new ekz(new Type[] { paramType }, arrayOfType);
  }
  
  public static Type[] b(Type paramType, Class<?> paramClass) {
    if (paramType == Properties.class)
      return new Type[] { String.class, String.class }; 
    paramType = b(paramType, paramClass, Map.class);
    return (paramType instanceof ParameterizedType) ? ((ParameterizedType)paramType).getActualTypeArguments() : new Type[] { Object.class, Object.class };
  }
  
  public static WildcardType c(Type paramType) {
    return new ekz(new Type[] { Object.class }, new Type[] { paramType });
  }
  
  public static Type d(Type paramType) {
    if (paramType instanceof Class) {
      paramType = paramType;
      if (paramType.isArray())
        paramType = new ekx(d(paramType.getComponentType())); 
      return paramType;
    } 
    if (paramType instanceof ParameterizedType) {
      paramType = paramType;
      return new eky(paramType.getOwnerType(), paramType.getRawType(), paramType.getActualTypeArguments());
    } 
    if (paramType instanceof GenericArrayType)
      return new ekx(((GenericArrayType)paramType).getGenericComponentType()); 
    if (paramType instanceof WildcardType) {
      paramType = paramType;
      return new ekz(paramType.getUpperBounds(), paramType.getLowerBounds());
    } 
    return paramType;
  }
  
  public static Class<?> e(Type paramType) {
    if (paramType instanceof Class)
      return (Class)paramType; 
    if (paramType instanceof ParameterizedType) {
      paramType = ((ParameterizedType)paramType).getRawType();
      ekv.a(paramType instanceof Class);
      return (Class)paramType;
    } 
    if (paramType instanceof GenericArrayType)
      return Array.newInstance(e(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass(); 
    if (paramType instanceof TypeVariable)
      return Object.class; 
    if (paramType instanceof WildcardType)
      return e(((WildcardType)paramType).getUpperBounds()[0]); 
    if (paramType == null) {
      String str1 = "null";
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str1);
    } 
    String str = paramType.getClass().getName();
    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
  }
  
  public static String f(Type paramType) {
    return (paramType instanceof Class) ? ((Class)paramType).getName() : paramType.toString();
  }
  
  public static Type g(Type paramType) {
    return (paramType instanceof GenericArrayType) ? ((GenericArrayType)paramType).getGenericComponentType() : ((Class)paramType).getComponentType();
  }
  
  static void h(Type paramType) {
    boolean bool;
    if (!(paramType instanceof Class) || !((Class)paramType).isPrimitive()) {
      bool = true;
    } else {
      bool = false;
    } 
    ekv.a(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */