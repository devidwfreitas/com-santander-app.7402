import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.widget.Button;

public class mze {
  public static final int a = 1;
  
  public static final int b = 2;
  
  public static final int c = 3;
  
  public static final int d = 4;
  
  public static final int e = 10;
  
  public static final int f = 13;
  
  public static String a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint, Activity paramActivity) {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #6
    //   9: iconst_0
    //   10: istore #4
    //   12: iload #4
    //   14: aload_1
    //   15: arraylength
    //   16: if_icmpge -> 42
    //   19: aload_2
    //   20: iload #4
    //   22: iaload
    //   23: iconst_m1
    //   24: if_icmpne -> 645
    //   27: aload #6
    //   29: aload_1
    //   30: iload #4
    //   32: aaload
    //   33: invokeinterface add : (Ljava/lang/Object;)Z
    //   38: pop
    //   39: goto -> 645
    //   42: aload #6
    //   44: invokeinterface isEmpty : ()Z
    //   49: ifne -> 602
    //   52: ldc ''
    //   54: astore_1
    //   55: aload #6
    //   57: invokeinterface iterator : ()Ljava/util/Iterator;
    //   62: astore_2
    //   63: aload_2
    //   64: invokeinterface hasNext : ()Z
    //   69: ifeq -> 416
    //   72: aload_2
    //   73: invokeinterface next : ()Ljava/lang/Object;
    //   78: checkcast java/lang/String
    //   81: astore #6
    //   83: aload #6
    //   85: invokevirtual hashCode : ()I
    //   88: lookupswitch default -> 654, -406040016 -> 132, -5573545 -> 148, 463403621 -> 164, 1977429404 -> 180
    //   132: aload #6
    //   134: ldc 'android.permission.READ_EXTERNAL_STORAGE'
    //   136: invokevirtual equals : (Ljava/lang/Object;)Z
    //   139: ifeq -> 654
    //   142: iconst_0
    //   143: istore #4
    //   145: goto -> 657
    //   148: aload #6
    //   150: ldc 'android.permission.READ_PHONE_STATE'
    //   152: invokevirtual equals : (Ljava/lang/Object;)Z
    //   155: ifeq -> 654
    //   158: iconst_1
    //   159: istore #4
    //   161: goto -> 657
    //   164: aload #6
    //   166: ldc 'android.permission.CAMERA'
    //   168: invokevirtual equals : (Ljava/lang/Object;)Z
    //   171: ifeq -> 654
    //   174: iconst_2
    //   175: istore #4
    //   177: goto -> 657
    //   180: aload #6
    //   182: ldc 'android.permission.READ_CONTACTS'
    //   184: invokevirtual equals : (Ljava/lang/Object;)Z
    //   187: ifeq -> 654
    //   190: iconst_3
    //   191: istore #4
    //   193: goto -> 657
    //   196: ldc ''
    //   198: aload_1
    //   199: invokevirtual equals : (Ljava/lang/Object;)Z
    //   202: ifeq -> 228
    //   205: new java/lang/StringBuilder
    //   208: dup
    //   209: invokespecial <init> : ()V
    //   212: aload_1
    //   213: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc ' ao armazenamento'
    //   218: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual toString : ()Ljava/lang/String;
    //   224: astore_1
    //   225: goto -> 688
    //   228: new java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial <init> : ()V
    //   235: aload_1
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: ldc ', armazenamento'
    //   241: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual toString : ()Ljava/lang/String;
    //   247: astore_1
    //   248: goto -> 688
    //   251: ldc ''
    //   253: aload_1
    //   254: invokevirtual equals : (Ljava/lang/Object;)Z
    //   257: ifeq -> 283
    //   260: new java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial <init> : ()V
    //   267: aload_1
    //   268: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc ' ao telefone'
    //   273: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual toString : ()Ljava/lang/String;
    //   279: astore_1
    //   280: goto -> 688
    //   283: new java/lang/StringBuilder
    //   286: dup
    //   287: invokespecial <init> : ()V
    //   290: aload_1
    //   291: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: ldc ', telefone'
    //   296: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual toString : ()Ljava/lang/String;
    //   302: astore_1
    //   303: goto -> 688
    //   306: ldc ''
    //   308: aload_1
    //   309: invokevirtual equals : (Ljava/lang/Object;)Z
    //   312: ifeq -> 338
    //   315: new java/lang/StringBuilder
    //   318: dup
    //   319: invokespecial <init> : ()V
    //   322: aload_1
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: ldc ' à câmera'
    //   328: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual toString : ()Ljava/lang/String;
    //   334: astore_1
    //   335: goto -> 688
    //   338: new java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial <init> : ()V
    //   345: aload_1
    //   346: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: ldc ', câmera'
    //   351: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: invokevirtual toString : ()Ljava/lang/String;
    //   357: astore_1
    //   358: goto -> 688
    //   361: ldc ''
    //   363: aload_1
    //   364: invokevirtual equals : (Ljava/lang/Object;)Z
    //   367: ifeq -> 393
    //   370: new java/lang/StringBuilder
    //   373: dup
    //   374: invokespecial <init> : ()V
    //   377: aload_1
    //   378: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: ldc ' aos contatos'
    //   383: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: invokevirtual toString : ()Ljava/lang/String;
    //   389: astore_1
    //   390: goto -> 688
    //   393: new java/lang/StringBuilder
    //   396: dup
    //   397: invokespecial <init> : ()V
    //   400: aload_1
    //   401: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: ldc ', contatos'
    //   406: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: invokevirtual toString : ()Ljava/lang/String;
    //   412: astore_1
    //   413: goto -> 688
    //   416: iload_0
    //   417: iconst_1
    //   418: if_icmpne -> 479
    //   421: aload_3
    //   422: ldc 'android.permission.CAMERA'
    //   424: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   427: istore #5
    //   429: new java/lang/StringBuilder
    //   432: dup
    //   433: invokespecial <init> : ()V
    //   436: ldc 'Se você negar ao aplicativo o acesso '
    //   438: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload_1
    //   442: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: ldc ', você não poderá tirar foto para o perfil'
    //   447: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: invokevirtual toString : ()Ljava/lang/String;
    //   453: astore_1
    //   454: new java/lang/StringBuilder
    //   457: dup
    //   458: invokespecial <init> : ()V
    //   461: aload_1
    //   462: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: ldc '#'
    //   467: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: iload #5
    //   472: invokevirtual append : (Z)Ljava/lang/StringBuilder;
    //   475: invokevirtual toString : ()Ljava/lang/String;
    //   478: areturn
    //   479: iload_0
    //   480: iconst_2
    //   481: if_icmpne -> 520
    //   484: aload_3
    //   485: ldc 'android.permission.CAMERA'
    //   487: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   490: istore #5
    //   492: new java/lang/StringBuilder
    //   495: dup
    //   496: invokespecial <init> : ()V
    //   499: ldc 'Se você negar ao aplicativo o acesso '
    //   501: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: aload_1
    //   505: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: ldc ', você não poderá realizar pagamentos usando o leitor de código de barras'
    //   510: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: invokevirtual toString : ()Ljava/lang/String;
    //   516: astore_1
    //   517: goto -> 454
    //   520: iload_0
    //   521: iconst_3
    //   522: if_icmpne -> 561
    //   525: aload_3
    //   526: ldc 'android.permission.READ_CONTACTS'
    //   528: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   531: istore #5
    //   533: new java/lang/StringBuilder
    //   536: dup
    //   537: invokespecial <init> : ()V
    //   540: ldc 'Se você negar ao aplicativo o acesso '
    //   542: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: aload_1
    //   546: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: ldc ', você não poderá selecionar um número a partir de seus contatos para realizar a Recarga'
    //   551: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: invokevirtual toString : ()Ljava/lang/String;
    //   557: astore_1
    //   558: goto -> 454
    //   561: iload_0
    //   562: iconst_4
    //   563: if_icmpne -> 636
    //   566: aload_3
    //   567: ldc 'android.permission.READ_PHONE_STATE'
    //   569: invokestatic shouldShowRequestPermissionRationale : (Landroid/app/Activity;Ljava/lang/String;)Z
    //   572: istore #5
    //   574: new java/lang/StringBuilder
    //   577: dup
    //   578: invokespecial <init> : ()V
    //   581: ldc 'Se você negar ao aplicativo o acesso '
    //   583: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: aload_1
    //   587: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   590: ldc ' não será possível iniciar o aplicativo. '
    //   592: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: invokevirtual toString : ()Ljava/lang/String;
    //   598: astore_1
    //   599: goto -> 454
    //   602: ldc ''
    //   604: areturn
    //   605: astore_1
    //   606: ldc 'Outros_Permisssoes_Tratamento_Excecao'
    //   608: new java/lang/StringBuilder
    //   611: dup
    //   612: invokespecial <init> : ()V
    //   615: ldc 'validarPermissoesPermitidas() '
    //   617: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: aload_1
    //   621: invokevirtual getMessage : ()Ljava/lang/String;
    //   624: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   627: invokevirtual toString : ()Ljava/lang/String;
    //   630: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   633: ldc ''
    //   635: areturn
    //   636: ldc ''
    //   638: astore_1
    //   639: iconst_1
    //   640: istore #5
    //   642: goto -> 454
    //   645: iload #4
    //   647: iconst_1
    //   648: iadd
    //   649: istore #4
    //   651: goto -> 12
    //   654: iconst_m1
    //   655: istore #4
    //   657: iload #4
    //   659: tableswitch default -> 688, 0 -> 196, 1 -> 251, 2 -> 306, 3 -> 361
    //   688: goto -> 63
    // Exception table:
    //   from	to	target	type
    //   0	9	605	java/lang/NullPointerException
    //   12	19	605	java/lang/NullPointerException
    //   27	39	605	java/lang/NullPointerException
    //   42	52	605	java/lang/NullPointerException
    //   55	63	605	java/lang/NullPointerException
    //   63	132	605	java/lang/NullPointerException
    //   132	142	605	java/lang/NullPointerException
    //   148	158	605	java/lang/NullPointerException
    //   164	174	605	java/lang/NullPointerException
    //   180	190	605	java/lang/NullPointerException
    //   196	225	605	java/lang/NullPointerException
    //   228	248	605	java/lang/NullPointerException
    //   251	280	605	java/lang/NullPointerException
    //   283	303	605	java/lang/NullPointerException
    //   306	335	605	java/lang/NullPointerException
    //   338	358	605	java/lang/NullPointerException
    //   361	390	605	java/lang/NullPointerException
    //   393	413	605	java/lang/NullPointerException
    //   421	454	605	java/lang/NullPointerException
    //   454	479	605	java/lang/NullPointerException
    //   484	517	605	java/lang/NullPointerException
    //   525	558	605	java/lang/NullPointerException
    //   566	599	605	java/lang/NullPointerException
  }
  
  public static void a(String paramString, int paramInt, boolean paramBoolean, Activity paramActivity) {
    mzf mzf;
    mzh mzh;
    mzg mzg;
    mzi mzi;
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button1 = (Button)dialog.findViewById(2131755738);
    Button button2 = (Button)dialog.findViewById(2131758433);
    if (!paramBoolean) {
      button1.setText("Configurações");
      mzf = new mzf(dialog, paramActivity);
      button2.setText("Ok");
      mzg = new mzg(paramInt, dialog);
    } else {
      mzf.setText("Ok");
      mzh = new mzh(paramInt, dialog);
      if (paramInt == 4)
        mzg.setText("Voltar"); 
      mzi = new mzi(dialog, paramInt, paramActivity);
    } 
    mxn.a(paramActivity, dialog, "Atenção", paramString, mzh, mzi);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */