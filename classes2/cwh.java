import android.annotation.TargetApi;
import android.content.Context;
import java.io.File;

public class cwh {
  @TargetApi(21)
  public static File a(Context paramContext) {
    return cwd.k() ? paramContext.getNoBackupFilesDir() : a(new File((paramContext.getApplicationInfo()).dataDir, "no_backup"));
  }
  
  private static File a(File paramFile) {
    // Byte code:
    //   0: ldc cwh
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_2
    //   5: aload_0
    //   6: invokevirtual exists : ()Z
    //   9: ifne -> 32
    //   12: aload_0
    //   13: astore_2
    //   14: aload_0
    //   15: invokevirtual mkdirs : ()Z
    //   18: ifne -> 32
    //   21: aload_0
    //   22: invokevirtual exists : ()Z
    //   25: istore_1
    //   26: iload_1
    //   27: ifeq -> 37
    //   30: aload_0
    //   31: astore_2
    //   32: ldc cwh
    //   34: monitorexit
    //   35: aload_2
    //   36: areturn
    //   37: aload_0
    //   38: invokevirtual getPath : ()Ljava/lang/String;
    //   41: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   44: astore_0
    //   45: aload_0
    //   46: invokevirtual length : ()I
    //   49: ifeq -> 71
    //   52: ldc 'Unable to create no-backup dir '
    //   54: aload_0
    //   55: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   58: astore_0
    //   59: ldc 'SupportV4Utils'
    //   61: aload_0
    //   62: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   65: pop
    //   66: aconst_null
    //   67: astore_2
    //   68: goto -> 32
    //   71: new java/lang/String
    //   74: dup
    //   75: ldc 'Unable to create no-backup dir '
    //   77: invokespecial <init> : (Ljava/lang/String;)V
    //   80: astore_0
    //   81: goto -> 59
    //   84: astore_0
    //   85: ldc cwh
    //   87: monitorexit
    //   88: aload_0
    //   89: athrow
    // Exception table:
    //   from	to	target	type
    //   5	12	84	finally
    //   14	26	84	finally
    //   37	59	84	finally
    //   59	66	84	finally
    //   71	81	84	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */