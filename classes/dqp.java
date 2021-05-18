import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public class dqp {
  public static final Uri a = Uri.parse("content://com.google.android.gsf.gservices");
  
  public static final Uri b = Uri.parse("content://com.google.android.gsf.gservices/prefix");
  
  public static final Pattern c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
  
  public static final Pattern d = Pattern.compile("^(0|false|f|off|no|n)$", 2);
  
  static HashMap<String, String> e;
  
  static String[] f;
  
  private static final AtomicBoolean g = new AtomicBoolean();
  
  private static Object h;
  
  private static boolean i;
  
  static {
    f = new String[0];
  }
  
  public static long a(ContentResolver paramContentResolver, String paramString, long paramLong) {
    String str = a(paramContentResolver, paramString);
    long l = paramLong;
    if (str != null)
      try {
        return Long.parseLong(str);
      } catch (NumberFormatException numberFormatException) {
        return paramLong;
      }  
    return l;
  }
  
  @Deprecated
  public static String a(ContentResolver paramContentResolver, String paramString) {
    return a(paramContentResolver, paramString, (String)null);
  }
  
  public static String a(ContentResolver paramContentResolver, String paramString1, String paramString2) {
    // Byte code:
    //   0: ldc dqp
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic a : (Landroid/content/ContentResolver;)V
    //   7: getstatic dqp.h : Ljava/lang/Object;
    //   10: astore #7
    //   12: getstatic dqp.e : Ljava/util/HashMap;
    //   15: aload_1
    //   16: invokevirtual containsKey : (Ljava/lang/Object;)Z
    //   19: ifeq -> 44
    //   22: getstatic dqp.e : Ljava/util/HashMap;
    //   25: aload_1
    //   26: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   29: checkcast java/lang/String
    //   32: astore_0
    //   33: aload_0
    //   34: ifnull -> 39
    //   37: aload_0
    //   38: astore_2
    //   39: ldc dqp
    //   41: monitorexit
    //   42: aload_2
    //   43: areturn
    //   44: getstatic dqp.f : [Ljava/lang/String;
    //   47: astore #5
    //   49: aload #5
    //   51: arraylength
    //   52: istore #4
    //   54: iconst_0
    //   55: istore_3
    //   56: iload_3
    //   57: iload #4
    //   59: if_icmpge -> 138
    //   62: aload_1
    //   63: aload #5
    //   65: iload_3
    //   66: aaload
    //   67: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   70: ifeq -> 277
    //   73: getstatic dqp.i : Z
    //   76: ifeq -> 88
    //   79: getstatic dqp.e : Ljava/util/HashMap;
    //   82: invokevirtual isEmpty : ()Z
    //   85: ifeq -> 133
    //   88: aload_0
    //   89: getstatic dqp.f : [Ljava/lang/String;
    //   92: invokestatic c : (Landroid/content/ContentResolver;[Ljava/lang/String;)V
    //   95: getstatic dqp.e : Ljava/util/HashMap;
    //   98: aload_1
    //   99: invokevirtual containsKey : (Ljava/lang/Object;)Z
    //   102: ifeq -> 133
    //   105: getstatic dqp.e : Ljava/util/HashMap;
    //   108: aload_1
    //   109: invokevirtual get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   112: checkcast java/lang/String
    //   115: astore_0
    //   116: aload_0
    //   117: ifnull -> 122
    //   120: aload_0
    //   121: astore_2
    //   122: ldc dqp
    //   124: monitorexit
    //   125: aload_2
    //   126: areturn
    //   127: astore_0
    //   128: ldc dqp
    //   130: monitorexit
    //   131: aload_0
    //   132: athrow
    //   133: ldc dqp
    //   135: monitorexit
    //   136: aload_2
    //   137: areturn
    //   138: ldc dqp
    //   140: monitorexit
    //   141: aload_0
    //   142: getstatic dqp.a : Landroid/net/Uri;
    //   145: aconst_null
    //   146: aconst_null
    //   147: iconst_1
    //   148: anewarray java/lang/String
    //   151: dup
    //   152: iconst_0
    //   153: aload_1
    //   154: aastore
    //   155: aconst_null
    //   156: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   159: astore #6
    //   161: aload #6
    //   163: ifnull -> 176
    //   166: aload #6
    //   168: invokeinterface moveToFirst : ()Z
    //   173: ifne -> 199
    //   176: aload #7
    //   178: aload_1
    //   179: aconst_null
    //   180: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    //   183: aload_2
    //   184: astore_0
    //   185: aload #6
    //   187: ifnull -> 275
    //   190: aload #6
    //   192: invokeinterface close : ()V
    //   197: aload_2
    //   198: areturn
    //   199: aload #6
    //   201: iconst_1
    //   202: invokeinterface getString : (I)Ljava/lang/String;
    //   207: astore #5
    //   209: aload #5
    //   211: astore_0
    //   212: aload #5
    //   214: ifnull -> 231
    //   217: aload #5
    //   219: astore_0
    //   220: aload #5
    //   222: aload_2
    //   223: invokevirtual equals : (Ljava/lang/Object;)Z
    //   226: ifeq -> 231
    //   229: aload_2
    //   230: astore_0
    //   231: aload #7
    //   233: aload_1
    //   234: aload_0
    //   235: invokestatic a : (Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload_0
    //   239: ifnull -> 244
    //   242: aload_0
    //   243: astore_2
    //   244: aload_2
    //   245: astore_0
    //   246: aload #6
    //   248: ifnull -> 275
    //   251: aload #6
    //   253: invokeinterface close : ()V
    //   258: aload_2
    //   259: areturn
    //   260: astore_0
    //   261: aload #6
    //   263: ifnull -> 273
    //   266: aload #6
    //   268: invokeinterface close : ()V
    //   273: aload_0
    //   274: athrow
    //   275: aload_0
    //   276: areturn
    //   277: iload_3
    //   278: iconst_1
    //   279: iadd
    //   280: istore_3
    //   281: goto -> 56
    // Exception table:
    //   from	to	target	type
    //   3	33	127	finally
    //   39	42	127	finally
    //   44	54	127	finally
    //   62	88	127	finally
    //   88	116	127	finally
    //   122	125	127	finally
    //   128	131	127	finally
    //   133	136	127	finally
    //   138	141	127	finally
    //   166	176	260	finally
    //   176	183	260	finally
    //   199	209	260	finally
    //   220	229	260	finally
    //   231	238	260	finally
  }
  
  public static Map<String, String> a(ContentResolver paramContentResolver, String... paramVarArgs) {
    Cursor cursor = paramContentResolver.query(b, null, null, paramVarArgs, null);
    null = new TreeMap<Object, Object>();
    if (cursor == null)
      return (Map)null; 
    try {
      while (cursor.moveToNext())
        null.put(cursor.getString(0), cursor.getString(1)); 
    } finally {
      cursor.close();
    } 
    return (Map<String, String>)paramVarArgs;
  }
  
  private static void a(ContentResolver paramContentResolver) {
    if (e == null) {
      g.set(false);
      e = new HashMap<String, String>();
      h = new Object();
      i = false;
      paramContentResolver.registerContentObserver(a, true, (ContentObserver)new dqq(null));
      return;
    } 
    if (g.getAndSet(false)) {
      e.clear();
      h = new Object();
      i = false;
      return;
    } 
  }
  
  private static void a(Object paramObject, String paramString1, String paramString2) {
    // Byte code:
    //   0: ldc dqp
    //   2: monitorenter
    //   3: aload_0
    //   4: getstatic dqp.h : Ljava/lang/Object;
    //   7: if_acmpne -> 19
    //   10: getstatic dqp.e : Ljava/util/HashMap;
    //   13: aload_1
    //   14: aload_2
    //   15: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   18: pop
    //   19: ldc dqp
    //   21: monitorexit
    //   22: return
    //   23: astore_0
    //   24: ldc dqp
    //   26: monitorexit
    //   27: aload_0
    //   28: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	23	finally
    //   19	22	23	finally
    //   24	27	23	finally
  }
  
  private static String[] a(String[] paramArrayOfString) {
    HashSet<String> hashSet = new HashSet((f.length + paramArrayOfString.length) * 4 / 3 + 1);
    hashSet.addAll(Arrays.asList(f));
    ArrayList<String> arrayList = new ArrayList();
    int j = paramArrayOfString.length;
    for (int i = 0; i < j; i++) {
      String str = paramArrayOfString[i];
      if (hashSet.add(str))
        arrayList.add(str); 
    } 
    if (arrayList.isEmpty())
      return new String[0]; 
    f = hashSet.<String>toArray(new String[hashSet.size()]);
    return arrayList.<String>toArray(new String[arrayList.size()]);
  }
  
  public static void b(ContentResolver paramContentResolver, String... paramVarArgs) {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: ifne -> 6
    //   5: return
    //   6: ldc dqp
    //   8: monitorenter
    //   9: aload_0
    //   10: invokestatic a : (Landroid/content/ContentResolver;)V
    //   13: aload_1
    //   14: invokestatic a : ([Ljava/lang/String;)[Ljava/lang/String;
    //   17: astore_1
    //   18: getstatic dqp.i : Z
    //   21: ifeq -> 33
    //   24: getstatic dqp.e : Ljava/util/HashMap;
    //   27: invokevirtual isEmpty : ()Z
    //   30: ifeq -> 50
    //   33: aload_0
    //   34: getstatic dqp.f : [Ljava/lang/String;
    //   37: invokestatic c : (Landroid/content/ContentResolver;[Ljava/lang/String;)V
    //   40: ldc dqp
    //   42: monitorexit
    //   43: return
    //   44: astore_0
    //   45: ldc dqp
    //   47: monitorexit
    //   48: aload_0
    //   49: athrow
    //   50: aload_1
    //   51: arraylength
    //   52: ifeq -> 40
    //   55: aload_0
    //   56: aload_1
    //   57: invokestatic c : (Landroid/content/ContentResolver;[Ljava/lang/String;)V
    //   60: goto -> 40
    // Exception table:
    //   from	to	target	type
    //   9	33	44	finally
    //   33	40	44	finally
    //   40	43	44	finally
    //   45	48	44	finally
    //   50	60	44	finally
  }
  
  private static void c(ContentResolver paramContentResolver, String[] paramArrayOfString) {
    e.putAll(a(paramContentResolver, paramArrayOfString));
    i = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */