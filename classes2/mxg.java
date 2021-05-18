import android.app.Activity;
import android.content.Intent;
import android.provider.ContactsContract;
import android.support.v4.app.Fragment;

public class mxg {
  public static final String a = "numeroTelefono";
  
  private final int b = 898;
  
  private Activity c;
  
  private Fragment d;
  
  public void a() {
    Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
    this.c.startActivityForResult(intent, 898);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent, mxh parammxh) {
    // Byte code:
    //   0: new java/util/HashMap
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #9
    //   9: iload_1
    //   10: sipush #898
    //   13: if_icmpne -> 130
    //   16: iload_2
    //   17: iconst_m1
    //   18: if_icmpne -> 247
    //   21: ldc ''
    //   23: astore #6
    //   25: aload_3
    //   26: invokevirtual getData : ()Landroid/net/Uri;
    //   29: invokevirtual getLastPathSegment : ()Ljava/lang/String;
    //   32: astore_3
    //   33: aload_0
    //   34: getfield c : Landroid/app/Activity;
    //   37: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   40: getstatic android/provider/ContactsContract$CommonDataKinds$Phone.CONTENT_URI : Landroid/net/Uri;
    //   43: aconst_null
    //   44: ldc 'contact_id=?'
    //   46: iconst_1
    //   47: anewarray java/lang/String
    //   50: dup
    //   51: iconst_0
    //   52: aload_3
    //   53: aastore
    //   54: aconst_null
    //   55: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_3
    //   59: aload_3
    //   60: ldc 'data1'
    //   62: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   67: istore_1
    //   68: aload_3
    //   69: invokeinterface moveToFirst : ()Z
    //   74: ifeq -> 286
    //   77: aload_3
    //   78: iload_1
    //   79: invokeinterface getString : (I)Ljava/lang/String;
    //   84: astore #5
    //   86: aload #5
    //   88: astore #8
    //   90: aload_3
    //   91: astore #6
    //   93: aload #9
    //   95: ldc 'numeroTelefono'
    //   97: aload #5
    //   99: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   104: pop
    //   105: aload_3
    //   106: ifnull -> 115
    //   109: aload_3
    //   110: invokeinterface close : ()V
    //   115: aload #5
    //   117: invokevirtual length : ()I
    //   120: ifne -> 131
    //   123: aload #4
    //   125: invokeinterface a : ()V
    //   130: return
    //   131: aload #4
    //   133: aload #9
    //   135: invokeinterface a : (Ljava/util/Map;)V
    //   140: return
    //   141: astore #7
    //   143: ldc ''
    //   145: astore #5
    //   147: aconst_null
    //   148: astore_3
    //   149: aload #5
    //   151: astore #8
    //   153: aload_3
    //   154: astore #6
    //   156: ldc 'Error'
    //   158: aload #7
    //   160: invokevirtual toString : ()Ljava/lang/String;
    //   163: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   166: pop
    //   167: aload_3
    //   168: ifnull -> 177
    //   171: aload_3
    //   172: invokeinterface close : ()V
    //   177: aload #5
    //   179: invokevirtual length : ()I
    //   182: ifne -> 193
    //   185: aload #4
    //   187: invokeinterface a : ()V
    //   192: return
    //   193: aload #4
    //   195: aload #9
    //   197: invokeinterface a : (Ljava/util/Map;)V
    //   202: return
    //   203: astore #5
    //   205: aconst_null
    //   206: astore_3
    //   207: aload_3
    //   208: ifnull -> 217
    //   211: aload_3
    //   212: invokeinterface close : ()V
    //   217: aload #6
    //   219: invokevirtual length : ()I
    //   222: ifne -> 235
    //   225: aload #4
    //   227: invokeinterface a : ()V
    //   232: aload #5
    //   234: athrow
    //   235: aload #4
    //   237: aload #9
    //   239: invokeinterface a : (Ljava/util/Map;)V
    //   244: goto -> 232
    //   247: aload #4
    //   249: invokeinterface a : ()V
    //   254: return
    //   255: astore #5
    //   257: goto -> 207
    //   260: astore #5
    //   262: aload #6
    //   264: astore_3
    //   265: aload #8
    //   267: astore #6
    //   269: goto -> 207
    //   272: astore #7
    //   274: ldc ''
    //   276: astore #5
    //   278: goto -> 149
    //   281: astore #7
    //   283: goto -> 149
    //   286: ldc ''
    //   288: astore #5
    //   290: goto -> 105
    // Exception table:
    //   from	to	target	type
    //   25	59	141	java/lang/Exception
    //   25	59	203	finally
    //   59	86	272	java/lang/Exception
    //   59	86	255	finally
    //   93	105	281	java/lang/Exception
    //   93	105	260	finally
    //   156	167	260	finally
  }
  
  public void a(Activity paramActivity) {
    this.c = paramActivity;
  }
  
  public void a(Fragment paramFragment) {
    paramFragment.startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), 898);
  }
  
  public Activity b() {
    return this.c;
  }
  
  public void b(Fragment paramFragment) {
    this.d = paramFragment;
  }
  
  public Fragment c() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */