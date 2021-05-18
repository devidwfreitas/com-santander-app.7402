import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

public class dad {
  SharedPreferences a;
  
  Context b;
  
  public dad(Context paramContext) {
    this(paramContext, "com.google.android.gms.appid");
  }
  
  public dad(Context paramContext, String paramString) {
    this.b = paramContext;
    this.a = paramContext.getSharedPreferences(paramString, 0);
    String str = String.valueOf(paramString);
    paramString = String.valueOf("-no-backup");
    if (paramString.length() != 0) {
      str = str.concat(paramString);
    } else {
      str = new String(str);
    } 
    g(str);
  }
  
  private String c(String paramString1, String paramString2, String paramString3) {
    String str = String.valueOf("|T|");
    return (new StringBuilder(String.valueOf(paramString1).length() + 1 + String.valueOf(str).length() + String.valueOf(paramString2).length() + String.valueOf(paramString3).length())).append(paramString1).append(str).append(paramString2).append("|").append(paramString3).toString();
  }
  
  private void g(String paramString) {
    File file = new File(cwh.a(this.b), paramString);
    if (!file.exists())
      try {
        if (file.createNewFile() && !a()) {
          Log.i("InstanceID/Store", "App restored, clearing state");
          czs.zza(this.b, this);
          return;
        } 
      } catch (IOException iOException) {} 
  }
  
  String a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: aconst_null
    //   8: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	18	finally
  }
  
  String a(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: astore_3
    //   7: ldc '|S|'
    //   9: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore #4
    //   14: aload_3
    //   15: new java/lang/StringBuilder
    //   18: dup
    //   19: aload_1
    //   20: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   23: invokevirtual length : ()I
    //   26: aload #4
    //   28: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   31: invokevirtual length : ()I
    //   34: iadd
    //   35: aload_2
    //   36: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   39: invokevirtual length : ()I
    //   42: iadd
    //   43: invokespecial <init> : (I)V
    //   46: aload_1
    //   47: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload #4
    //   52: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: aload_2
    //   56: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual toString : ()Ljava/lang/String;
    //   62: aconst_null
    //   63: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: areturn
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    // Exception table:
    //   from	to	target	type
    //   2	69	73	finally
  }
  
  public String a(String paramString1, String paramString2, String paramString3) {
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
    //   14: aload_1
    //   15: aconst_null
    //   16: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: areturn
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	26	finally
  }
  
  KeyPair a(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic a : ()Ljava/security/KeyPair;
    //   5: astore #4
    //   7: aload_0
    //   8: getfield a : Landroid/content/SharedPreferences;
    //   11: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   16: astore #5
    //   18: aload_0
    //   19: aload #5
    //   21: aload_1
    //   22: ldc '|P|'
    //   24: aload #4
    //   26: invokevirtual getPublic : ()Ljava/security/PublicKey;
    //   29: invokeinterface getEncoded : ()[B
    //   34: invokestatic a : ([B)Ljava/lang/String;
    //   37: invokevirtual a : (Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   40: aload_0
    //   41: aload #5
    //   43: aload_1
    //   44: ldc '|K|'
    //   46: aload #4
    //   48: invokevirtual getPrivate : ()Ljava/security/PrivateKey;
    //   51: invokeinterface getEncoded : ()[B
    //   56: invokestatic a : ([B)Ljava/lang/String;
    //   59: invokevirtual a : (Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   62: aload_0
    //   63: aload #5
    //   65: aload_1
    //   66: ldc 'cre'
    //   68: lload_2
    //   69: invokestatic toString : (J)Ljava/lang/String;
    //   72: invokevirtual a : (Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   75: aload #5
    //   77: invokeinterface commit : ()Z
    //   82: pop
    //   83: aload_0
    //   84: monitorexit
    //   85: aload #4
    //   87: areturn
    //   88: astore_1
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_1
    //   92: athrow
    // Exception table:
    //   from	to	target	type
    //   2	83	88	finally
  }
  
  void a(SharedPreferences.Editor paramEditor, String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc '|S|'
    //   4: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   7: astore #5
    //   9: aload_1
    //   10: new java/lang/StringBuilder
    //   13: dup
    //   14: aload_2
    //   15: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   18: invokevirtual length : ()I
    //   21: aload #5
    //   23: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   26: invokevirtual length : ()I
    //   29: iadd
    //   30: aload_3
    //   31: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   34: invokevirtual length : ()I
    //   37: iadd
    //   38: invokespecial <init> : (I)V
    //   41: aload_2
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload #5
    //   47: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload_3
    //   51: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual toString : ()Ljava/lang/String;
    //   57: aload #4
    //   59: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   64: pop
    //   65: aload_0
    //   66: monitorexit
    //   67: return
    //   68: astore_1
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_1
    //   72: athrow
    // Exception table:
    //   from	to	target	type
    //   2	65	68	finally
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
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
    //   22: aload #4
    //   24: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   29: pop
    //   30: aload_2
    //   31: ldc 'appVersion'
    //   33: aload #5
    //   35: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   40: pop
    //   41: aload_2
    //   42: ldc 'lastToken'
    //   44: invokestatic currentTimeMillis : ()J
    //   47: ldc2_w 1000
    //   50: ldiv
    //   51: invokestatic toString : (J)Ljava/lang/String;
    //   54: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   59: pop
    //   60: aload_2
    //   61: invokeinterface commit : ()Z
    //   66: pop
    //   67: aload_0
    //   68: monitorexit
    //   69: return
    //   70: astore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_1
    //   74: athrow
    // Exception table:
    //   from	to	target	type
    //   2	67	70	finally
  }
  
  public boolean a() {
    return this.a.getAll().isEmpty();
  }
  
  public void b() {
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
  
  public void b(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: astore_2
    //   12: aload_0
    //   13: getfield a : Landroid/content/SharedPreferences;
    //   16: invokeinterface getAll : ()Ljava/util/Map;
    //   21: invokeinterface keySet : ()Ljava/util/Set;
    //   26: invokeinterface iterator : ()Ljava/util/Iterator;
    //   31: astore_3
    //   32: aload_3
    //   33: invokeinterface hasNext : ()Z
    //   38: ifeq -> 78
    //   41: aload_3
    //   42: invokeinterface next : ()Ljava/lang/Object;
    //   47: checkcast java/lang/String
    //   50: astore #4
    //   52: aload #4
    //   54: aload_1
    //   55: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   58: ifeq -> 32
    //   61: aload_2
    //   62: aload #4
    //   64: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   69: pop
    //   70: goto -> 32
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    //   78: aload_2
    //   79: invokeinterface commit : ()Z
    //   84: pop
    //   85: aload_0
    //   86: monitorexit
    //   87: return
    // Exception table:
    //   from	to	target	type
    //   2	32	73	finally
    //   32	70	73	finally
    //   78	85	73	finally
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
  
  public KeyPair c(String paramString) {
    return f(paramString);
  }
  
  void d(String paramString) {
    b(String.valueOf(paramString).concat("|"));
  }
  
  public void e(String paramString) {
    b(String.valueOf(paramString).concat("|T|"));
  }
  
  KeyPair f(String paramString) {
    String str2 = a(paramString, "|P|");
    String str3 = a(paramString, "|K|");
    if (str2 == null || str3 == null)
      return null; 
    try {
      byte[] arrayOfByte1 = Base64.decode(str2, 8);
      byte[] arrayOfByte2 = Base64.decode(str3, 8);
      KeyFactory keyFactory = KeyFactory.getInstance("RSA");
      return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(arrayOfByte1)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(arrayOfByte2)));
    } catch (InvalidKeySpecException invalidKeySpecException) {
    
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {}
    String str1 = String.valueOf(noSuchAlgorithmException);
    Log.w("InstanceID/Store", (new StringBuilder(String.valueOf(str1).length() + 19)).append("Invalid key stored ").append(str1).toString());
    czs.zza(this.b, this);
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */