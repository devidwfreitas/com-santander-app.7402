import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;

public class dob implements ServiceConnection, ctd, cte {
  private volatile boolean b;
  
  private volatile dkv c;
  
  protected dob(dno paramdno) {}
  
  @WorkerThread
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Ldno;
    //   4: invokevirtual e : ()V
    //   7: aload_0
    //   8: getfield a : Ldno;
    //   11: invokevirtual n : ()Landroid/content/Context;
    //   14: astore_1
    //   15: aload_0
    //   16: monitorenter
    //   17: aload_0
    //   18: getfield b : Z
    //   21: ifeq -> 42
    //   24: aload_0
    //   25: getfield a : Ldno;
    //   28: invokevirtual u : ()Ldkw;
    //   31: invokevirtual D : ()Ldky;
    //   34: ldc 'Connection attempt already in progress'
    //   36: invokevirtual a : (Ljava/lang/String;)V
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: aload_0
    //   43: getfield c : Ldkv;
    //   46: ifnull -> 72
    //   49: aload_0
    //   50: getfield a : Ldno;
    //   53: invokevirtual u : ()Ldkw;
    //   56: invokevirtual D : ()Ldky;
    //   59: ldc 'Already awaiting connection attempt'
    //   61: invokevirtual a : (Ljava/lang/String;)V
    //   64: aload_0
    //   65: monitorexit
    //   66: return
    //   67: astore_1
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_1
    //   71: athrow
    //   72: aload_0
    //   73: new dkv
    //   76: dup
    //   77: aload_1
    //   78: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   81: aload_0
    //   82: aload_0
    //   83: invokespecial <init> : (Landroid/content/Context;Landroid/os/Looper;Lctd;Lcte;)V
    //   86: putfield c : Ldkv;
    //   89: aload_0
    //   90: getfield a : Ldno;
    //   93: invokevirtual u : ()Ldkw;
    //   96: invokevirtual D : ()Ldky;
    //   99: ldc 'Connecting to remote service'
    //   101: invokevirtual a : (Ljava/lang/String;)V
    //   104: aload_0
    //   105: iconst_1
    //   106: putfield b : Z
    //   109: aload_0
    //   110: getfield c : Ldkv;
    //   113: invokevirtual n : ()V
    //   116: aload_0
    //   117: monitorexit
    //   118: return
    // Exception table:
    //   from	to	target	type
    //   17	41	67	finally
    //   42	66	67	finally
    //   68	70	67	finally
    //   72	118	67	finally
  }
  
  @MainThread
  public void a(int paramInt) {
    csp.b("MeasurementServiceConnection.onConnectionSuspended");
    this.a.u().C().a("Service connection suspended");
    this.a.t().a(new dof(this));
  }
  
  @WorkerThread
  public void a(Intent paramIntent) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Ldno;
    //   4: invokevirtual e : ()V
    //   7: aload_0
    //   8: getfield a : Ldno;
    //   11: invokevirtual n : ()Landroid/content/Context;
    //   14: astore_2
    //   15: invokestatic a : ()Lcvf;
    //   18: astore_3
    //   19: aload_0
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield b : Z
    //   25: ifeq -> 46
    //   28: aload_0
    //   29: getfield a : Ldno;
    //   32: invokevirtual u : ()Ldkw;
    //   35: invokevirtual D : ()Ldky;
    //   38: ldc 'Connection attempt already in progress'
    //   40: invokevirtual a : (Ljava/lang/String;)V
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield b : Z
    //   51: aload_3
    //   52: aload_2
    //   53: aload_1
    //   54: aload_0
    //   55: getfield a : Ldno;
    //   58: invokestatic a : (Ldno;)Ldob;
    //   61: sipush #129
    //   64: invokevirtual a : (Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   67: pop
    //   68: aload_0
    //   69: monitorexit
    //   70: return
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    // Exception table:
    //   from	to	target	type
    //   21	45	71	finally
    //   46	70	71	finally
    //   72	74	71	finally
  }
  
  @MainThread
  public void a(@Nullable Bundle paramBundle) {
    // Byte code:
    //   0: ldc 'MeasurementServiceConnection.onConnected'
    //   2: invokestatic b : (Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield c : Ldkv;
    //   11: invokevirtual w : ()Landroid/os/IInterface;
    //   14: checkcast dkp
    //   17: astore_1
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield c : Ldkv;
    //   23: aload_0
    //   24: getfield a : Ldno;
    //   27: invokevirtual t : ()Ldlq;
    //   30: new doe
    //   33: dup
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial <init> : (Ldob;Ldkp;)V
    //   39: invokevirtual a : (Ljava/lang/Runnable;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: aconst_null
    //   47: putfield c : Ldkv;
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield b : Z
    //   55: goto -> 42
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    //   63: astore_1
    //   64: goto -> 45
    //   67: astore_1
    //   68: goto -> 45
    // Exception table:
    //   from	to	target	type
    //   7	42	63	android/os/DeadObjectException
    //   7	42	67	java/lang/IllegalStateException
    //   7	42	58	finally
    //   42	44	58	finally
    //   45	55	58	finally
    //   59	61	58	finally
  }
  
  @MainThread
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    // Byte code:
    //   0: ldc 'MeasurementServiceConnection.onConnectionFailed'
    //   2: invokestatic b : (Ljava/lang/String;)V
    //   5: aload_0
    //   6: getfield a : Ldno;
    //   9: getfield n : Ldlv;
    //   12: invokevirtual g : ()Ldkw;
    //   15: astore_2
    //   16: aload_2
    //   17: ifnull -> 30
    //   20: aload_2
    //   21: invokevirtual z : ()Ldky;
    //   24: ldc 'Service connection failed'
    //   26: aload_1
    //   27: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: iconst_0
    //   34: putfield b : Z
    //   37: aload_0
    //   38: aconst_null
    //   39: putfield c : Ldkv;
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   32	44	45	finally
    //   46	48	45	finally
  }
  
  @MainThread
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    // Byte code:
    //   0: ldc 'MeasurementServiceConnection.onServiceConnected'
    //   2: invokestatic b : (Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull -> 34
    //   11: aload_0
    //   12: iconst_0
    //   13: putfield b : Z
    //   16: aload_0
    //   17: getfield a : Ldno;
    //   20: invokevirtual u : ()Ldkw;
    //   23: invokevirtual x : ()Ldky;
    //   26: ldc 'Service connected with null binder'
    //   28: invokevirtual a : (Ljava/lang/String;)V
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aconst_null
    //   35: astore #4
    //   37: aconst_null
    //   38: astore_3
    //   39: aload #4
    //   41: astore_1
    //   42: aload_2
    //   43: invokeinterface getInterfaceDescriptor : ()Ljava/lang/String;
    //   48: astore #5
    //   50: aload #4
    //   52: astore_1
    //   53: ldc 'com.google.android.gms.measurement.internal.IMeasurementService'
    //   55: aload #5
    //   57: invokevirtual equals : (Ljava/lang/Object;)Z
    //   60: ifeq -> 127
    //   63: aload #4
    //   65: astore_1
    //   66: aload_2
    //   67: invokestatic a : (Landroid/os/IBinder;)Ldkp;
    //   70: astore_2
    //   71: aload_2
    //   72: astore_1
    //   73: aload_0
    //   74: getfield a : Ldno;
    //   77: invokevirtual u : ()Ldkw;
    //   80: invokevirtual D : ()Ldky;
    //   83: ldc 'Bound to IMeasurementService interface'
    //   85: invokevirtual a : (Ljava/lang/String;)V
    //   88: aload_2
    //   89: astore_1
    //   90: aload_1
    //   91: ifnonnull -> 171
    //   94: aload_0
    //   95: iconst_0
    //   96: putfield b : Z
    //   99: invokestatic a : ()Lcvf;
    //   102: aload_0
    //   103: getfield a : Ldno;
    //   106: invokevirtual n : ()Landroid/content/Context;
    //   109: aload_0
    //   110: getfield a : Ldno;
    //   113: invokestatic a : (Ldno;)Ldob;
    //   116: invokevirtual a : (Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   119: aload_0
    //   120: monitorexit
    //   121: return
    //   122: astore_1
    //   123: aload_0
    //   124: monitorexit
    //   125: aload_1
    //   126: athrow
    //   127: aload #4
    //   129: astore_1
    //   130: aload_0
    //   131: getfield a : Ldno;
    //   134: invokevirtual u : ()Ldkw;
    //   137: invokevirtual x : ()Ldky;
    //   140: ldc 'Got binder with a wrong descriptor'
    //   142: aload #5
    //   144: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   147: aload_3
    //   148: astore_1
    //   149: goto -> 90
    //   152: astore_2
    //   153: aload_0
    //   154: getfield a : Ldno;
    //   157: invokevirtual u : ()Ldkw;
    //   160: invokevirtual x : ()Ldky;
    //   163: ldc 'Service connect failed to get IMeasurementService'
    //   165: invokevirtual a : (Ljava/lang/String;)V
    //   168: goto -> 90
    //   171: aload_0
    //   172: getfield a : Ldno;
    //   175: invokevirtual t : ()Ldlq;
    //   178: new doc
    //   181: dup
    //   182: aload_0
    //   183: aload_1
    //   184: invokespecial <init> : (Ldob;Ldkp;)V
    //   187: invokevirtual a : (Ljava/lang/Runnable;)V
    //   190: goto -> 119
    //   193: astore_1
    //   194: goto -> 119
    // Exception table:
    //   from	to	target	type
    //   11	33	122	finally
    //   42	50	152	android/os/RemoteException
    //   42	50	122	finally
    //   53	63	152	android/os/RemoteException
    //   53	63	122	finally
    //   66	71	152	android/os/RemoteException
    //   66	71	122	finally
    //   73	88	152	android/os/RemoteException
    //   73	88	122	finally
    //   94	99	122	finally
    //   99	119	193	java/lang/IllegalArgumentException
    //   99	119	122	finally
    //   119	121	122	finally
    //   123	125	122	finally
    //   130	147	152	android/os/RemoteException
    //   130	147	122	finally
    //   153	168	122	finally
    //   171	190	122	finally
  }
  
  @MainThread
  public void onServiceDisconnected(ComponentName paramComponentName) {
    csp.b("MeasurementServiceConnection.onServiceDisconnected");
    this.a.u().C().a("Service disconnected");
    this.a.t().a(new dod(this, paramComponentName));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */