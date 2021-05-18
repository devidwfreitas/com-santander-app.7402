import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.File;
import java.io.IOException;
import java.security.KeyPair;

public class eiz {
  SharedPreferences a;
  
  Context b;
  
  public eiz(Context paramContext) {
    this(paramContext, "com.google.android.gms.appid");
  }
  
  public eiz(Context paramContext, String paramString) {
    this.b = paramContext;
    this.a = paramContext.getSharedPreferences(paramString, 0);
    String str = String.valueOf(paramString);
    paramString = String.valueOf("-no-backup");
    if (paramString.length() != 0) {
      str = str.concat(paramString);
    } else {
      str = new String(str);
    } 
    f(str);
  }
  
  private String a(String paramString1, String paramString2) {
    String str = String.valueOf("|S|");
    return (new StringBuilder(String.valueOf(paramString1).length() + String.valueOf(str).length() + String.valueOf(paramString2).length())).append(paramString1).append(str).append(paramString2).toString();
  }
  
  private String c(String paramString1, String paramString2, String paramString3) {
    String str = String.valueOf("|T|");
    return (new StringBuilder(String.valueOf(paramString1).length() + 1 + String.valueOf(str).length() + String.valueOf(paramString2).length() + String.valueOf(paramString3).length())).append(paramString1).append(str).append(paramString2).append("|").append(paramString3).toString();
  }
  
  private void f(String paramString) {
    File file = new File(cwh.a(this.b), paramString);
    if (!file.exists())
      try {
        if (file.createNewFile() && !b()) {
          Log.i("InstanceID/Store", "App restored, clearing state");
          FirebaseInstanceId.a(this.b, this);
          return;
        } 
      } catch (IOException iOException) {} 
  }
  
  private void g(String paramString) {
    SharedPreferences.Editor editor = this.a.edit();
    for (String str : this.a.getAll().keySet()) {
      if (str.startsWith(paramString))
        editor.remove(str); 
    } 
    editor.commit();
  }
  
  public long a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: ldc 'cre'
    //   6: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_1
    //   10: aload_0
    //   11: getfield a : Landroid/content/SharedPreferences;
    //   14: aload_1
    //   15: aconst_null
    //   16: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull -> 36
    //   26: aload_1
    //   27: invokestatic parseLong : (Ljava/lang/String;)J
    //   30: lstore_2
    //   31: aload_0
    //   32: monitorexit
    //   33: lload_2
    //   34: lreturn
    //   35: astore_1
    //   36: lconst_0
    //   37: lstore_2
    //   38: goto -> 31
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	41	finally
    //   26	31	35	java/lang/NumberFormatException
    //   26	31	41	finally
  }
  
  public SharedPreferences a() {
    return this.a;
  }
  
  public eja a(String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: aload_0
    //   7: aload_1
    //   8: aload_2
    //   9: aload_3
    //   10: invokespecial c : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: aconst_null
    //   14: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   19: invokestatic a : (Ljava/lang/String;)Leja;
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: areturn
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Exception table:
    //   from	to	target	type
    //   2	23	27	finally
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload #4
    //   4: aload #5
    //   6: invokestatic currentTimeMillis : ()J
    //   9: invokestatic a : (Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    //   12: astore #4
    //   14: aload #4
    //   16: ifnonnull -> 22
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield a : Landroid/content/SharedPreferences;
    //   26: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   31: astore #5
    //   33: aload #5
    //   35: aload_0
    //   36: aload_1
    //   37: aload_2
    //   38: aload_3
    //   39: invokespecial c : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   42: aload #4
    //   44: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   49: pop
    //   50: aload #5
    //   52: invokeinterface commit : ()Z
    //   57: pop
    //   58: goto -> 19
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   22	58	61	finally
  }
  
  KeyPair b(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic a : ()Ljava/security/KeyPair;
    //   5: astore #4
    //   7: invokestatic currentTimeMillis : ()J
    //   10: lstore_2
    //   11: aload_0
    //   12: getfield a : Landroid/content/SharedPreferences;
    //   15: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   20: astore #5
    //   22: aload #5
    //   24: aload_0
    //   25: aload_1
    //   26: ldc '|P|'
    //   28: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   31: aload #4
    //   33: invokevirtual getPublic : ()Ljava/security/PublicKey;
    //   36: invokeinterface getEncoded : ()[B
    //   41: invokestatic a : ([B)Ljava/lang/String;
    //   44: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   49: pop
    //   50: aload #5
    //   52: aload_0
    //   53: aload_1
    //   54: ldc '|K|'
    //   56: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   59: aload #4
    //   61: invokevirtual getPrivate : ()Ljava/security/PrivateKey;
    //   64: invokeinterface getEncoded : ()[B
    //   69: invokestatic a : ([B)Ljava/lang/String;
    //   72: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   77: pop
    //   78: aload #5
    //   80: aload_0
    //   81: aload_1
    //   82: ldc 'cre'
    //   84: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   87: lload_2
    //   88: invokestatic toString : (J)Ljava/lang/String;
    //   91: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   96: pop
    //   97: aload #5
    //   99: invokeinterface commit : ()Z
    //   104: pop
    //   105: aload_0
    //   106: monitorexit
    //   107: aload #4
    //   109: areturn
    //   110: astore_1
    //   111: aload_0
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    // Exception table:
    //   from	to	target	type
    //   2	105	110	finally
  }
  
  public void b(String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: aload_2
    //   5: aload_3
    //   6: invokespecial c : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_1
    //   10: aload_0
    //   11: getfield a : Landroid/content/SharedPreferences;
    //   14: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   19: astore_2
    //   20: aload_2
    //   21: aload_1
    //   22: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   27: pop
    //   28: aload_2
    //   29: invokeinterface commit : ()Z
    //   34: pop
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Exception table:
    //   from	to	target	type
    //   2	35	38	finally
  }
  
  public boolean b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: invokeinterface getAll : ()Ljava/util/Map;
    //   11: invokeinterface isEmpty : ()Z
    //   16: istore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_1
    //   20: ireturn
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	21	finally
  }
  
  public void c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: invokeinterface clear : ()Landroid/content/SharedPreferences$Editor;
    //   16: invokeinterface commit : ()Z
    //   21: pop
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	25	finally
  }
  
  void c(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   7: ldc '|'
    //   9: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   12: invokespecial g : (Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	18	finally
  }
  
  public void d(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   7: ldc '|T|'
    //   9: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   12: invokespecial g : (Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	15	18	finally
  }
  
  public KeyPair e(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: aload_0
    //   7: aload_1
    //   8: ldc '|P|'
    //   10: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: aconst_null
    //   14: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   19: astore_2
    //   20: aload_0
    //   21: getfield a : Landroid/content/SharedPreferences;
    //   24: aload_0
    //   25: aload_1
    //   26: ldc '|K|'
    //   28: invokespecial a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   31: aconst_null
    //   32: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   37: astore_3
    //   38: aload_2
    //   39: ifnull -> 46
    //   42: aload_3
    //   43: ifnonnull -> 52
    //   46: aconst_null
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: areturn
    //   52: aload_2
    //   53: bipush #8
    //   55: invokestatic decode : (Ljava/lang/String;I)[B
    //   58: astore_1
    //   59: aload_3
    //   60: bipush #8
    //   62: invokestatic decode : (Ljava/lang/String;I)[B
    //   65: astore_2
    //   66: ldc_w 'RSA'
    //   69: invokestatic getInstance : (Ljava/lang/String;)Ljava/security/KeyFactory;
    //   72: astore_3
    //   73: new java/security/KeyPair
    //   76: dup
    //   77: aload_3
    //   78: new java/security/spec/X509EncodedKeySpec
    //   81: dup
    //   82: aload_1
    //   83: invokespecial <init> : ([B)V
    //   86: invokevirtual generatePublic : (Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   89: aload_3
    //   90: new java/security/spec/PKCS8EncodedKeySpec
    //   93: dup
    //   94: aload_2
    //   95: invokespecial <init> : ([B)V
    //   98: invokevirtual generatePrivate : (Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    //   101: invokespecial <init> : (Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    //   104: astore_1
    //   105: goto -> 48
    //   108: astore_1
    //   109: aload_1
    //   110: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   113: astore_1
    //   114: ldc 'InstanceID/Store'
    //   116: new java/lang/StringBuilder
    //   119: dup
    //   120: aload_1
    //   121: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   124: invokevirtual length : ()I
    //   127: bipush #19
    //   129: iadd
    //   130: invokespecial <init> : (I)V
    //   133: ldc_w 'Invalid key stored '
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload_1
    //   140: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual toString : ()Ljava/lang/String;
    //   146: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   149: pop
    //   150: aload_0
    //   151: getfield b : Landroid/content/Context;
    //   154: aload_0
    //   155: invokestatic a : (Landroid/content/Context;Leiz;)V
    //   158: aconst_null
    //   159: astore_1
    //   160: goto -> 48
    //   163: astore_1
    //   164: aload_0
    //   165: monitorexit
    //   166: aload_1
    //   167: athrow
    //   168: astore_1
    //   169: goto -> 109
    // Exception table:
    //   from	to	target	type
    //   2	38	163	finally
    //   52	105	108	java/security/spec/InvalidKeySpecException
    //   52	105	168	java/security/NoSuchAlgorithmException
    //   52	105	163	finally
    //   109	158	163	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eiz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */