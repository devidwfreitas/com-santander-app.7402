import java.util.List;
import java.util.Map;

class nha implements nik {
  nha(ngz paramngz) {}
  
  public void a(String paramString1, String paramString2, int paramInt, Map<String, List<String>> paramMap, byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: aload #5
    //   2: ifnonnull -> 50
    //   5: ldc ''
    //   7: astore_1
    //   8: aload_0
    //   9: getfield a : Lngz;
    //   12: invokestatic a : (Lngz;)Ljava/util/concurrent/atomic/AtomicBoolean;
    //   15: iconst_0
    //   16: invokevirtual set : (Z)V
    //   19: aload_1
    //   20: invokevirtual length : ()I
    //   23: iconst_2
    //   24: if_icmpgt -> 75
    //   27: aload_0
    //   28: getfield a : Lngz;
    //   31: invokestatic b : (Lngz;)Lnhc;
    //   34: getstatic nkf.profile_retriever_error_bad_profile : I
    //   37: aconst_null
    //   38: iconst_1
    //   39: anewarray java/lang/Object
    //   42: dup
    //   43: iconst_0
    //   44: aload_1
    //   45: aastore
    //   46: invokevirtual a : (ILjava/lang/Throwable;[Ljava/lang/Object;)V
    //   49: return
    //   50: new java/lang/String
    //   53: dup
    //   54: aload #5
    //   56: ldc 'UTF-8'
    //   58: invokespecial <init> : ([BLjava/lang/String;)V
    //   61: astore_1
    //   62: goto -> 8
    //   65: astore_1
    //   66: new java/lang/RuntimeException
    //   69: dup
    //   70: aload_1
    //   71: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   74: athrow
    //   75: aload_0
    //   76: getfield a : Lngz;
    //   79: invokestatic c : (Lngz;)Ljava/util/concurrent/atomic/AtomicLong;
    //   82: invokestatic uptimeMillis : ()J
    //   85: invokevirtual set : (J)V
    //   88: aload_1
    //   89: invokestatic a : (Ljava/lang/String;)Lngm;
    //   92: astore_1
    //   93: aload_0
    //   94: getfield a : Lngz;
    //   97: invokestatic d : (Lngz;)Lngm;
    //   100: ifnull -> 117
    //   103: aload_0
    //   104: getfield a : Lngz;
    //   107: invokestatic d : (Lngz;)Lngm;
    //   110: aload_1
    //   111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   114: ifne -> 169
    //   117: iconst_1
    //   118: istore_3
    //   119: iload_3
    //   120: ifeq -> 49
    //   123: aload_1
    //   124: ifnull -> 49
    //   127: aload_0
    //   128: getfield a : Lngz;
    //   131: aload_0
    //   132: getfield a : Lngz;
    //   135: invokestatic d : (Lngz;)Lngm;
    //   138: aload_1
    //   139: invokestatic a : (Lngz;Lngm;Lngm;)V
    //   142: aload_0
    //   143: getfield a : Lngz;
    //   146: aload_1
    //   147: invokestatic a : (Lngz;Lngm;)Lngm;
    //   150: pop
    //   151: return
    //   152: astore_1
    //   153: aload_0
    //   154: getfield a : Lngz;
    //   157: invokestatic b : (Lngz;)Lnhc;
    //   160: aload_1
    //   161: invokevirtual a : (Ljava/lang/Throwable;)V
    //   164: aconst_null
    //   165: astore_1
    //   166: goto -> 93
    //   169: iconst_0
    //   170: istore_3
    //   171: goto -> 119
    // Exception table:
    //   from	to	target	type
    //   50	62	65	java/io/UnsupportedEncodingException
    //   88	93	152	org/json/JSONException
  }
  
  public void a(String paramString, Throwable paramThrowable) {
    ngz.b(this.a).a(nkf.profile_retriever_error_http, paramThrowable, new Object[] { paramString });
    ngz.a(this.a).set(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */