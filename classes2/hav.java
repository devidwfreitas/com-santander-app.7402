import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class hav {
  private static final String a = "Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.";
  
  private AlertDialog b;
  
  private mip c = (mip)miq.C();
  
  public static String a(fvu paramfvu) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ifnull -> 121
    //   6: aload_0
    //   7: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   10: ifnull -> 115
    //   13: aload_0
    //   14: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   17: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   20: ldc 'error sessao'
    //   22: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   25: ifne -> 115
    //   28: aload_0
    //   29: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   32: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   35: astore_2
    //   36: aload_2
    //   37: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   39: invokevirtual equals : (Ljava/lang/Object;)Z
    //   42: ifne -> 115
    //   45: aload_2
    //   46: aload_0
    //   47: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   50: invokevirtual equals : (Ljava/lang/Object;)Z
    //   53: ifne -> 115
    //   56: iconst_1
    //   57: istore_1
    //   58: aload_2
    //   59: astore_3
    //   60: aload_0
    //   61: invokevirtual getErrorDetail : ()Lfvv;
    //   64: ifnull -> 113
    //   67: aload_2
    //   68: astore_3
    //   69: aload_0
    //   70: invokevirtual getErrorDetail : ()Lfvv;
    //   73: invokevirtual d : ()Ljava/lang/String;
    //   76: ifnull -> 113
    //   79: aload_2
    //   80: astore_3
    //   81: iload_1
    //   82: ifne -> 113
    //   85: aload_2
    //   86: astore_3
    //   87: aload_0
    //   88: invokevirtual getErrorDetail : ()Lfvv;
    //   91: invokevirtual d : ()Ljava/lang/String;
    //   94: ldc 'NENHUM AGENDAMENTO ENCONTRADO'
    //   96: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   99: ifne -> 113
    //   102: aload_0
    //   103: invokevirtual getErrorDetail : ()Lfvv;
    //   106: invokevirtual d : ()Ljava/lang/String;
    //   109: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   112: astore_3
    //   113: aload_3
    //   114: areturn
    //   115: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   117: astore_2
    //   118: goto -> 58
    //   121: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   123: areturn
  }
  
  public static String a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 7
    //   4: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   6: areturn
    //   7: aload_0
    //   8: ldc '00332163000010001205 NAO EXISTE NA TABELA DE BGDTMAE'
    //   10: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   13: ifeq -> 21
    //   16: ldc 'Agência ou Conta inválidos. Por favor, verifique os datos informados'
    //   18: astore_2
    //   19: aload_2
    //   20: areturn
    //   21: aload_0
    //   22: ldc 'Error orquestracao'
    //   24: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   27: ifeq -> 36
    //   30: ldc 'Ocorreu um erro no sistema. Por favor, entre em contato com a Superlinha ou fale com seu gerente'
    //   32: astore_2
    //   33: goto -> 19
    //   36: aload_0
    //   37: ldc '@'
    //   39: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   42: ifne -> 54
    //   45: aload_0
    //   46: astore_2
    //   47: aload_0
    //   48: invokevirtual length : ()I
    //   51: ifgt -> 19
    //   54: aload_0
    //   55: ldc '@'
    //   57: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   60: ifeq -> 89
    //   63: aload_0
    //   64: ldc '|'
    //   66: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   69: ifeq -> 89
    //   72: aload_0
    //   73: ldc '\|'
    //   75: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   78: astore_0
    //   79: aload_0
    //   80: aload_0
    //   81: arraylength
    //   82: iconst_1
    //   83: isub
    //   84: aaload
    //   85: astore_2
    //   86: goto -> 19
    //   89: aload_0
    //   90: ldc '@'
    //   92: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   95: ifeq -> 159
    //   98: aload_0
    //   99: ldc '\-'
    //   101: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   104: astore_0
    //   105: aload_0
    //   106: arraylength
    //   107: istore_1
    //   108: iload_1
    //   109: iconst_2
    //   110: if_icmple -> 150
    //   113: new java/lang/StringBuilder
    //   116: dup
    //   117: invokespecial <init> : ()V
    //   120: aload_0
    //   121: iload_1
    //   122: iconst_2
    //   123: isub
    //   124: aaload
    //   125: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc '-'
    //   130: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: iload_1
    //   135: iconst_1
    //   136: isub
    //   137: aaload
    //   138: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual toString : ()Ljava/lang/String;
    //   144: astore_0
    //   145: aload_0
    //   146: astore_2
    //   147: goto -> 19
    //   150: aload_0
    //   151: iload_1
    //   152: iconst_1
    //   153: isub
    //   154: aaload
    //   155: astore_0
    //   156: goto -> 145
    //   159: aload_0
    //   160: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   163: ldc 'internal error'
    //   165: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   168: ifne -> 207
    //   171: aload_0
    //   172: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   175: ldc 'webserviceexception'
    //   177: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   180: ifne -> 207
    //   183: aload_0
    //   184: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   187: ldc '[1:erro ao comunicar com o mq]'
    //   189: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   192: ifne -> 207
    //   195: aload_0
    //   196: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   199: ldc 'soapfaultexception'
    //   201: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   204: ifeq -> 213
    //   207: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   209: astore_2
    //   210: goto -> 19
    //   213: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   215: astore_2
    //   216: goto -> 19
  }
  
  private static void a(Activity paramActivity) {
    miq.C().o();
    Intent intent = new Intent((Context)paramActivity, HomeActivity.class);
    intent.addFlags(268435456);
    intent.addFlags(67108864);
    intent.putExtra("errorSession", true);
    intent.putExtra("reopen", true);
    paramActivity.startActivity(intent);
    paramActivity.finish();
  }
  
  public static void a(Activity paramActivity, gkt paramgkt) {
    mxn.a(paramActivity, paramActivity.getResources().getString(2131297207), paramgkt.getMessage().trim() + " (" + paramgkt.getCode().trim() + ")", paramActivity.getResources().getString(2131296695));
    if (paramgkt.getAction() == null)
      return; 
    String str = paramgkt.getAction();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            paramActivity.startActivity((new Intent((Context)paramActivity, HomeLogadaActivity.class)).setFlags(67108864));
            return;
          case 1:
            break;
        } 
        break;
      case 50:
        if (str.equals("2"))
          b = 0; 
      case 51:
        if (str.equals("3"))
          b = 1; 
    } 
    miq.C().o();
    jcd.a();
    aqt.a();
    paramActivity.startActivity((new Intent((Context)paramActivity, HomeActivity.class)).setFlags(67108864));
  }
  
  public static void b(Activity paramActivity, String paramString) {
    mxn.a(paramActivity, a(paramString));
  }
  
  public static void c(Activity paramActivity, String paramString) {
    mxn.b(paramActivity, paramString);
  }
  
  public static void d(Activity paramActivity, String paramString) {
    mxn.e(paramActivity, paramString);
  }
  
  public void a(Activity paramActivity, fvu paramfvu, boolean paramBoolean) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #10
    //   3: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   5: astore #11
    //   7: aload_2
    //   8: ifnull -> 389
    //   11: aload_2
    //   12: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   15: ifnull -> 373
    //   18: aload_2
    //   19: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   22: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   25: ldc 'error sessao'
    //   27: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   30: ifeq -> 172
    //   33: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   35: astore #11
    //   37: iconst_0
    //   38: istore #4
    //   40: iconst_1
    //   41: istore #5
    //   43: iconst_0
    //   44: istore #6
    //   46: iload #10
    //   48: istore #7
    //   50: aload #11
    //   52: astore #12
    //   54: iload #4
    //   56: istore #8
    //   58: iload #5
    //   60: istore #9
    //   62: aload_2
    //   63: invokevirtual getErrorDetail : ()Lfvv;
    //   66: ifnull -> 146
    //   69: iload #10
    //   71: istore #7
    //   73: aload #11
    //   75: astore #12
    //   77: iload #4
    //   79: istore #8
    //   81: iload #5
    //   83: istore #9
    //   85: aload_2
    //   86: invokevirtual getErrorDetail : ()Lfvv;
    //   89: invokevirtual d : ()Ljava/lang/String;
    //   92: ifnull -> 146
    //   95: iload #10
    //   97: istore #7
    //   99: aload #11
    //   101: astore #12
    //   103: iload #4
    //   105: istore #8
    //   107: iload #5
    //   109: istore #9
    //   111: iload #6
    //   113: ifne -> 146
    //   116: aload_2
    //   117: invokevirtual getErrorDetail : ()Lfvv;
    //   120: invokevirtual d : ()Ljava/lang/String;
    //   123: ldc 'NENHUM AGENDAMENTO ENCONTRADO'
    //   125: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   128: ifeq -> 276
    //   131: iconst_0
    //   132: istore #7
    //   134: iload #5
    //   136: istore #9
    //   138: iload #4
    //   140: istore #8
    //   142: aload #11
    //   144: astore #12
    //   146: iload #7
    //   148: ifeq -> 171
    //   151: iload #9
    //   153: ifne -> 368
    //   156: iload_3
    //   157: ifeq -> 171
    //   160: iload #8
    //   162: ifeq -> 361
    //   165: aload_1
    //   166: aload #12
    //   168: invokestatic a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   171: return
    //   172: aload_2
    //   173: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   176: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   179: ldc 'invalid response datahash'
    //   181: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   184: ifeq -> 207
    //   187: aload_1
    //   188: ldc 2131297566
    //   190: invokevirtual getString : (I)Ljava/lang/String;
    //   193: astore #11
    //   195: iconst_1
    //   196: istore #4
    //   198: iconst_0
    //   199: istore #5
    //   201: iconst_0
    //   202: istore #6
    //   204: goto -> 46
    //   207: aload_2
    //   208: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   211: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   214: astore #12
    //   216: aload #12
    //   218: ldc 'Erro ao comunicar com o MQ'
    //   220: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   223: ifeq -> 238
    //   226: iconst_0
    //   227: istore #6
    //   229: iconst_0
    //   230: istore #4
    //   232: iconst_0
    //   233: istore #5
    //   235: goto -> 46
    //   238: aload #12
    //   240: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   242: invokevirtual equals : (Ljava/lang/Object;)Z
    //   245: ifne -> 373
    //   248: aload #12
    //   250: aload_2
    //   251: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   254: invokevirtual equals : (Ljava/lang/Object;)Z
    //   257: ifne -> 373
    //   260: iconst_1
    //   261: istore #6
    //   263: aload #12
    //   265: astore #11
    //   267: iconst_0
    //   268: istore #5
    //   270: iconst_0
    //   271: istore #4
    //   273: goto -> 46
    //   276: aload_2
    //   277: invokevirtual getClass : ()Ljava/lang/Class;
    //   280: ldc fsw
    //   282: invokevirtual equals : (Ljava/lang/Object;)Z
    //   285: ifne -> 300
    //   288: aload_2
    //   289: invokevirtual getClass : ()Ljava/lang/Class;
    //   292: ldc fsx
    //   294: invokevirtual equals : (Ljava/lang/Object;)Z
    //   297: ifeq -> 334
    //   300: aload_2
    //   301: invokevirtual getErrorDetail : ()Lfvv;
    //   304: invokevirtual d : ()Ljava/lang/String;
    //   307: ldc 'NAO EXISTEM REGISTROS PARA A PESQUISA SOLICITADA'
    //   309: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   312: ifeq -> 334
    //   315: ldc 'Não existem favorecidos cadastrados.'
    //   317: astore #12
    //   319: iload #10
    //   321: istore #7
    //   323: iload #4
    //   325: istore #8
    //   327: iload #5
    //   329: istore #9
    //   331: goto -> 146
    //   334: aload_2
    //   335: invokevirtual getErrorDetail : ()Lfvv;
    //   338: invokevirtual d : ()Ljava/lang/String;
    //   341: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   344: astore #12
    //   346: iload #10
    //   348: istore #7
    //   350: iload #4
    //   352: istore #8
    //   354: iload #5
    //   356: istore #9
    //   358: goto -> 146
    //   361: aload_1
    //   362: aload #12
    //   364: invokestatic b : (Landroid/app/Activity;Ljava/lang/String;)V
    //   367: return
    //   368: aload_1
    //   369: invokestatic a : (Landroid/app/Activity;)V
    //   372: return
    //   373: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   375: astore #11
    //   377: iconst_0
    //   378: istore #4
    //   380: iconst_0
    //   381: istore #5
    //   383: iconst_0
    //   384: istore #6
    //   386: goto -> 46
    //   389: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   391: astore #12
    //   393: iconst_0
    //   394: istore #8
    //   396: iconst_0
    //   397: istore #9
    //   399: iload #10
    //   401: istore #7
    //   403: goto -> 146
  }
  
  public void a(Activity paramActivity, fvu paramfvu, boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #11
    //   3: aload_2
    //   4: ifnull -> 294
    //   7: aload_2
    //   8: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   11: ifnull -> 278
    //   14: aload_2
    //   15: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   18: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   21: ldc 'error sessao'
    //   23: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   26: ifeq -> 173
    //   29: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   31: astore #12
    //   33: iconst_0
    //   34: istore #5
    //   36: iconst_1
    //   37: istore #6
    //   39: iconst_0
    //   40: istore #7
    //   42: iload #11
    //   44: istore #8
    //   46: aload #12
    //   48: astore #13
    //   50: iload #5
    //   52: istore #9
    //   54: iload #6
    //   56: istore #10
    //   58: aload_2
    //   59: invokevirtual getErrorDetail : ()Lfvv;
    //   62: ifnull -> 142
    //   65: iload #11
    //   67: istore #8
    //   69: aload #12
    //   71: astore #13
    //   73: iload #5
    //   75: istore #9
    //   77: iload #6
    //   79: istore #10
    //   81: aload_2
    //   82: invokevirtual getErrorDetail : ()Lfvv;
    //   85: invokevirtual d : ()Ljava/lang/String;
    //   88: ifnull -> 142
    //   91: iload #11
    //   93: istore #8
    //   95: aload #12
    //   97: astore #13
    //   99: iload #5
    //   101: istore #9
    //   103: iload #6
    //   105: istore #10
    //   107: iload #7
    //   109: ifne -> 142
    //   112: aload_2
    //   113: invokevirtual getErrorDetail : ()Lfvv;
    //   116: invokevirtual d : ()Ljava/lang/String;
    //   119: ldc 'NENHUM AGENDAMENTO ENCONTRADO'
    //   121: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   124: ifeq -> 239
    //   127: iconst_0
    //   128: istore #8
    //   130: iload #6
    //   132: istore #10
    //   134: iload #5
    //   136: istore #9
    //   138: aload #12
    //   140: astore #13
    //   142: iload #8
    //   144: ifeq -> 172
    //   147: iload #10
    //   149: ifne -> 273
    //   152: iload_3
    //   153: ifeq -> 172
    //   156: iload #4
    //   158: ifne -> 166
    //   161: iload #9
    //   163: ifeq -> 266
    //   166: aload_1
    //   167: aload #13
    //   169: invokestatic a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   172: return
    //   173: aload_2
    //   174: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   177: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   180: ldc 'hash validation error'
    //   182: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   185: ifeq -> 208
    //   188: aload_1
    //   189: ldc 2131297566
    //   191: invokevirtual getString : (I)Ljava/lang/String;
    //   194: astore #12
    //   196: iconst_1
    //   197: istore #5
    //   199: iconst_0
    //   200: istore #6
    //   202: iconst_0
    //   203: istore #7
    //   205: goto -> 42
    //   208: aload_2
    //   209: invokevirtual getFaultstring : ()Ljava/lang/String;
    //   212: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   215: astore #12
    //   217: aload #12
    //   219: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   221: invokevirtual equals : (Ljava/lang/Object;)Z
    //   224: ifne -> 278
    //   227: iconst_1
    //   228: istore #7
    //   230: iconst_0
    //   231: istore #5
    //   233: iconst_0
    //   234: istore #6
    //   236: goto -> 42
    //   239: aload_2
    //   240: invokevirtual getErrorDetail : ()Lfvv;
    //   243: invokevirtual d : ()Ljava/lang/String;
    //   246: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   249: astore #13
    //   251: iload #11
    //   253: istore #8
    //   255: iload #5
    //   257: istore #9
    //   259: iload #6
    //   261: istore #10
    //   263: goto -> 142
    //   266: aload_1
    //   267: aload #13
    //   269: invokestatic b : (Landroid/app/Activity;Ljava/lang/String;)V
    //   272: return
    //   273: aload_1
    //   274: invokestatic a : (Landroid/app/Activity;)V
    //   277: return
    //   278: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   280: astore #12
    //   282: iconst_0
    //   283: istore #5
    //   285: iconst_0
    //   286: istore #6
    //   288: iconst_0
    //   289: istore #7
    //   291: goto -> 42
    //   294: ldc 'Ocorreu um erro de comunicação. Por favor, tente novamente em instantes.'
    //   296: astore #13
    //   298: iconst_0
    //   299: istore #9
    //   301: iconst_0
    //   302: istore #10
    //   304: iload #11
    //   306: istore #8
    //   308: goto -> 142
  }
  
  public void a(Activity paramActivity, fwn paramfwn) {
    mxn.b(paramActivity, paramfwn.k());
  }
  
  public void a(Activity paramActivity, String paramString) {
    mxn.b(paramActivity, paramString);
  }
  
  public void e(Activity paramActivity, String paramString) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(paramActivity);
    dialog.setContentView(2130968939);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    TextView textView1 = (TextView)dialog.findViewById(2131756829);
    TextView textView2 = (TextView)dialog.findViewById(2131756382);
    Button button1 = (Button)dialog.findViewById(2131756830);
    Button button2 = (Button)dialog.findViewById(2131756831);
    textView1.setText("Alerta");
    textView2.setText(paramString);
    button1.setText("Ok");
    button2.setText("Esqueci a senha");
    button1.setOnClickListener(new haw(this, dialog));
    button2.setOnClickListener(new hax(this, paramActivity));
    if (this.c.f().e().booleanValue())
      button2.setVisibility(8); 
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(paramActivity.getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void f(Activity paramActivity, String paramString) {
    mzq.a(paramActivity, false);
    Dialog dialog = new Dialog((Context)paramActivity, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(paramActivity);
    dialog.setContentView(2130968943);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg(paramActivity));
    dialog.setOnShowListener(new myh(paramActivity));
    TextView textView1 = (TextView)dialog.findViewById(2131756829);
    TextView textView2 = (TextView)dialog.findViewById(2131756832);
    Button button = (Button)dialog.findViewById(2131756828);
    textView1.setText("Alerta");
    textView2.setText(paramString);
    button.setText("Ok");
    button.setOnClickListener(new hay(this, dialog));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(paramActivity.getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */