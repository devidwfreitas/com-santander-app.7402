import com.santander.app.seguros.ui.sinister.activities.SinisterDocumentsActivity;

public class lso implements kxa {
  public lso(SinisterDocumentsActivity paramSinisterDocumentsActivity) {}
  
  public void a() {
    if (this.a.isFinishing())
      return; 
    kut kut = new kut();
    kut.c(false);
    kut.a(kuu.GONE);
    kut.b(kuu.CAMERA);
    kut.b(false);
    kut.a(true);
    SinisterDocumentsActivity.e(this.a).a(SinisterDocumentsActivity.c(this.a), kut, false);
  }
  
  public void a(Object paramObject) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   6: invokevirtual isFinishing : ()Z
    //   9: ifeq -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   17: aload_0
    //   18: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   21: invokestatic d : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;
    //   24: aload_0
    //   25: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   28: invokestatic c : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I
    //   31: invokeinterface get : (I)Ljava/lang/Object;
    //   36: checkcast kuw
    //   39: invokevirtual e : ()Ljava/lang/String;
    //   42: invokestatic a : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;Ljava/lang/String;)V
    //   45: aload_0
    //   46: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   49: invokestatic d : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Ljava/util/List;
    //   52: aload_0
    //   53: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   56: invokestatic c : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I
    //   59: invokeinterface get : (I)Ljava/lang/Object;
    //   64: checkcast kus
    //   67: astore_3
    //   68: aload_1
    //   69: ifnull -> 213
    //   72: aload_1
    //   73: checkcast is
    //   76: astore_1
    //   77: aload_1
    //   78: invokevirtual c : ()Lorg/json/JSONObject;
    //   81: ifnull -> 213
    //   84: aload_1
    //   85: invokevirtual c : ()Lorg/json/JSONObject;
    //   88: ldc 'id'
    //   90: invokevirtual isNull : (Ljava/lang/String;)Z
    //   93: ifne -> 213
    //   96: aload_1
    //   97: invokevirtual c : ()Lorg/json/JSONObject;
    //   100: astore_1
    //   101: new ejm
    //   104: dup
    //   105: invokespecial <init> : ()V
    //   108: aload_1
    //   109: invokevirtual toString : ()Ljava/lang/String;
    //   112: ldc kob
    //   114: invokevirtual a : (Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   117: checkcast kob
    //   120: astore_1
    //   121: aload_1
    //   122: ifnull -> 205
    //   125: aload_3
    //   126: aload_1
    //   127: invokevirtual a : ()I
    //   130: invokevirtual a : (I)V
    //   133: new kut
    //   136: dup
    //   137: invokespecial <init> : ()V
    //   140: astore_1
    //   141: aload_1
    //   142: aload_3
    //   143: invokevirtual a : (Lkus;)V
    //   146: aload_1
    //   147: iconst_0
    //   148: invokevirtual c : (Z)V
    //   151: aload_1
    //   152: getstatic kuu.TO_VIEW : Lkuu;
    //   155: invokevirtual a : (Lkuu;)V
    //   158: aload_1
    //   159: getstatic kuu.TRASH : Lkuu;
    //   162: invokevirtual b : (Lkuu;)V
    //   165: aload_1
    //   166: iconst_0
    //   167: invokevirtual b : (Z)V
    //   170: aload_1
    //   171: iconst_0
    //   172: invokevirtual a : (Z)V
    //   175: aload_0
    //   176: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   179: invokestatic e : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)Lltm;
    //   182: aload_0
    //   183: getfield a : Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;
    //   186: invokestatic c : (Lcom/santander/app/seguros/ui/sinister/activities/SinisterDocumentsActivity;)I
    //   189: aload_1
    //   190: iconst_1
    //   191: invokevirtual a : (ILkut;Z)V
    //   194: return
    //   195: astore_1
    //   196: aload_1
    //   197: invokevirtual printStackTrace : ()V
    //   200: aload_2
    //   201: astore_1
    //   202: goto -> 121
    //   205: aload_3
    //   206: iconst_m1
    //   207: invokevirtual a : (I)V
    //   210: goto -> 133
    //   213: aconst_null
    //   214: astore_1
    //   215: goto -> 121
    // Exception table:
    //   from	to	target	type
    //   72	121	195	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lso.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */