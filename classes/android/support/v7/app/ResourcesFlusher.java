package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import java.lang.reflect.Field;

class ResourcesFlusher {
  private static final String TAG = "ResourcesFlusher";
  
  private static Field sDrawableCacheField;
  
  private static boolean sDrawableCacheFieldFetched;
  
  private static Field sResourcesImplField;
  
  private static boolean sResourcesImplFieldFetched;
  
  private static Class sThemedResourceCacheClazz;
  
  private static boolean sThemedResourceCacheClazzFetched;
  
  private static Field sThemedResourceCache_mUnthemedEntriesField;
  
  private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;
  
  static boolean flush(@NonNull Resources paramResources) {
    int i = Build.VERSION.SDK_INT;
    return (i >= 24) ? flushNougats(paramResources) : ((i >= 23) ? flushMarshmallows(paramResources) : ((i >= 21) ? flushLollipops(paramResources) : false));
  }
  
  private static boolean flushLollipops(@NonNull Resources paramResources) {
    // Byte code:
    //   0: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   3: ifne -> 27
    //   6: ldc android/content/res/Resources
    //   8: ldc 'mDrawableCache'
    //   10: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   13: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   16: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   19: iconst_1
    //   20: invokevirtual setAccessible : (Z)V
    //   23: iconst_1
    //   24: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   27: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   30: ifnull -> 84
    //   33: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   36: aload_0
    //   37: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   40: checkcast java/util/Map
    //   43: astore_0
    //   44: aload_0
    //   45: ifnull -> 84
    //   48: aload_0
    //   49: invokeinterface clear : ()V
    //   54: iconst_1
    //   55: ireturn
    //   56: astore_1
    //   57: ldc 'ResourcesFlusher'
    //   59: ldc 'Could not retrieve Resources#mDrawableCache field'
    //   61: aload_1
    //   62: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   65: pop
    //   66: goto -> 23
    //   69: astore_0
    //   70: ldc 'ResourcesFlusher'
    //   72: ldc 'Could not retrieve value from Resources#mDrawableCache'
    //   74: aload_0
    //   75: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   78: pop
    //   79: aconst_null
    //   80: astore_0
    //   81: goto -> 44
    //   84: iconst_0
    //   85: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	23	56	java/lang/NoSuchFieldException
    //   33	44	69	java/lang/IllegalAccessException
  }
  
  private static boolean flushMarshmallows(@NonNull Resources paramResources) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   5: ifne -> 29
    //   8: ldc android/content/res/Resources
    //   10: ldc 'mDrawableCache'
    //   12: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   15: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   18: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   21: iconst_1
    //   22: invokevirtual setAccessible : (Z)V
    //   25: iconst_1
    //   26: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   29: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   32: ifnull -> 72
    //   35: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   38: aload_0
    //   39: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   42: astore_0
    //   43: aload_0
    //   44: ifnonnull -> 77
    //   47: iconst_0
    //   48: ireturn
    //   49: astore_2
    //   50: ldc 'ResourcesFlusher'
    //   52: ldc 'Could not retrieve Resources#mDrawableCache field'
    //   54: aload_2
    //   55: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   58: pop
    //   59: goto -> 25
    //   62: astore_0
    //   63: ldc 'ResourcesFlusher'
    //   65: ldc 'Could not retrieve value from Resources#mDrawableCache'
    //   67: aload_0
    //   68: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   71: pop
    //   72: aconst_null
    //   73: astore_0
    //   74: goto -> 43
    //   77: aload_0
    //   78: ifnull -> 90
    //   81: aload_0
    //   82: invokestatic flushThemedResourcesCache : (Ljava/lang/Object;)Z
    //   85: ifeq -> 90
    //   88: iload_1
    //   89: ireturn
    //   90: iconst_0
    //   91: istore_1
    //   92: goto -> 88
    // Exception table:
    //   from	to	target	type
    //   8	25	49	java/lang/NoSuchFieldException
    //   35	43	62	java/lang/IllegalAccessException
  }
  
  private static boolean flushNougats(@NonNull Resources paramResources) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: getstatic android/support/v7/app/ResourcesFlusher.sResourcesImplFieldFetched : Z
    //   5: ifne -> 29
    //   8: ldc android/content/res/Resources
    //   10: ldc 'mResourcesImpl'
    //   12: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   15: putstatic android/support/v7/app/ResourcesFlusher.sResourcesImplField : Ljava/lang/reflect/Field;
    //   18: getstatic android/support/v7/app/ResourcesFlusher.sResourcesImplField : Ljava/lang/reflect/Field;
    //   21: iconst_1
    //   22: invokevirtual setAccessible : (Z)V
    //   25: iconst_1
    //   26: putstatic android/support/v7/app/ResourcesFlusher.sResourcesImplFieldFetched : Z
    //   29: getstatic android/support/v7/app/ResourcesFlusher.sResourcesImplField : Ljava/lang/reflect/Field;
    //   32: ifnonnull -> 50
    //   35: iconst_0
    //   36: ireturn
    //   37: astore_2
    //   38: ldc 'ResourcesFlusher'
    //   40: ldc 'Could not retrieve Resources#mResourcesImpl field'
    //   42: aload_2
    //   43: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   46: pop
    //   47: goto -> 25
    //   50: getstatic android/support/v7/app/ResourcesFlusher.sResourcesImplField : Ljava/lang/reflect/Field;
    //   53: aload_0
    //   54: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   57: astore_0
    //   58: aload_0
    //   59: ifnull -> 35
    //   62: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   65: ifne -> 91
    //   68: aload_0
    //   69: invokevirtual getClass : ()Ljava/lang/Class;
    //   72: ldc 'mDrawableCache'
    //   74: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   77: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   80: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   83: iconst_1
    //   84: invokevirtual setAccessible : (Z)V
    //   87: iconst_1
    //   88: putstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheFieldFetched : Z
    //   91: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   94: ifnull -> 156
    //   97: getstatic android/support/v7/app/ResourcesFlusher.sDrawableCacheField : Ljava/lang/reflect/Field;
    //   100: aload_0
    //   101: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   104: astore_0
    //   105: aload_0
    //   106: ifnull -> 161
    //   109: aload_0
    //   110: invokestatic flushThemedResourcesCache : (Ljava/lang/Object;)Z
    //   113: ifeq -> 161
    //   116: iload_1
    //   117: ireturn
    //   118: astore_0
    //   119: ldc 'ResourcesFlusher'
    //   121: ldc 'Could not retrieve value from Resources#mResourcesImpl'
    //   123: aload_0
    //   124: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   127: pop
    //   128: aconst_null
    //   129: astore_0
    //   130: goto -> 58
    //   133: astore_2
    //   134: ldc 'ResourcesFlusher'
    //   136: ldc 'Could not retrieve ResourcesImpl#mDrawableCache field'
    //   138: aload_2
    //   139: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   142: pop
    //   143: goto -> 87
    //   146: astore_0
    //   147: ldc 'ResourcesFlusher'
    //   149: ldc 'Could not retrieve value from ResourcesImpl#mDrawableCache'
    //   151: aload_0
    //   152: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   155: pop
    //   156: aconst_null
    //   157: astore_0
    //   158: goto -> 105
    //   161: iconst_0
    //   162: istore_1
    //   163: goto -> 116
    // Exception table:
    //   from	to	target	type
    //   8	25	37	java/lang/NoSuchFieldException
    //   50	58	118	java/lang/IllegalAccessException
    //   68	87	133	java/lang/NoSuchFieldException
    //   97	105	146	java/lang/IllegalAccessException
  }
  
  private static boolean flushThemedResourcesCache(@NonNull Object paramObject) {
    // Byte code:
    //   0: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCacheClazzFetched : Z
    //   3: ifne -> 18
    //   6: ldc 'android.content.res.ThemedResourceCache'
    //   8: invokestatic forName : (Ljava/lang/String;)Ljava/lang/Class;
    //   11: putstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCacheClazz : Ljava/lang/Class;
    //   14: iconst_1
    //   15: putstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCacheClazzFetched : Z
    //   18: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCacheClazz : Ljava/lang/Class;
    //   21: ifnonnull -> 39
    //   24: iconst_0
    //   25: ireturn
    //   26: astore_1
    //   27: ldc 'ResourcesFlusher'
    //   29: ldc 'Could not find ThemedResourceCache class'
    //   31: aload_1
    //   32: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   35: pop
    //   36: goto -> 14
    //   39: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesFieldFetched : Z
    //   42: ifne -> 67
    //   45: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCacheClazz : Ljava/lang/Class;
    //   48: ldc 'mUnthemedEntries'
    //   50: invokevirtual getDeclaredField : (Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   53: putstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField : Ljava/lang/reflect/Field;
    //   56: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField : Ljava/lang/reflect/Field;
    //   59: iconst_1
    //   60: invokevirtual setAccessible : (Z)V
    //   63: iconst_1
    //   64: putstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesFieldFetched : Z
    //   67: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField : Ljava/lang/reflect/Field;
    //   70: ifnonnull -> 88
    //   73: iconst_0
    //   74: ireturn
    //   75: astore_1
    //   76: ldc 'ResourcesFlusher'
    //   78: ldc 'Could not retrieve ThemedResourceCache#mUnthemedEntries field'
    //   80: aload_1
    //   81: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   84: pop
    //   85: goto -> 63
    //   88: getstatic android/support/v7/app/ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField : Ljava/lang/reflect/Field;
    //   91: aload_0
    //   92: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   95: checkcast android/util/LongSparseArray
    //   98: astore_0
    //   99: aload_0
    //   100: ifnull -> 124
    //   103: aload_0
    //   104: invokevirtual clear : ()V
    //   107: iconst_1
    //   108: ireturn
    //   109: astore_0
    //   110: ldc 'ResourcesFlusher'
    //   112: ldc 'Could not retrieve value from ThemedResourceCache#mUnthemedEntries'
    //   114: aload_0
    //   115: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   118: pop
    //   119: aconst_null
    //   120: astore_0
    //   121: goto -> 99
    //   124: iconst_0
    //   125: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	14	26	java/lang/ClassNotFoundException
    //   45	63	75	java/lang/NoSuchFieldException
    //   88	99	109	java/lang/IllegalAccessException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ResourcesFlusher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */