package org.apache.commons.exec;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import org.apache.commons.exec.launcher.CommandLauncher;
import org.apache.commons.exec.launcher.CommandLauncherFactory;

public class DefaultExecutor implements Executor {
  private IOException exceptionCaught = null;
  
  private Thread executorThread;
  
  private int[] exitValues = new int[0];
  
  private final CommandLauncher launcher = CommandLauncherFactory.createVMLauncher();
  
  private ProcessDestroyer processDestroyer;
  
  private ExecuteStreamHandler streamHandler = new PumpStreamHandler();
  
  private ExecuteWatchdog watchdog;
  
  private File workingDirectory = new File(".");
  
  private void closeProcessStreams(Process paramProcess) {
    try {
      paramProcess.getInputStream().close();
    } catch (IOException iOException1) {
      setExceptionCaught(iOException1);
    } 
    try {
      paramProcess.getOutputStream().close();
      try {
        paramProcess.getErrorStream().close();
        return;
      } catch (IOException iOException) {
        setExceptionCaught(iOException);
      } 
    } catch (IOException iOException1) {
      setExceptionCaught(iOException1);
      try {
        iOException.getErrorStream().close();
        return;
      } catch (IOException iOException2) {
        setExceptionCaught(iOException2);
      } 
    } 
  }
  
  private int executeInternal(CommandLine paramCommandLine, Map paramMap, File paramFile, ExecuteStreamHandler paramExecuteStreamHandler) {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: invokespecial setExceptionCaught : (Ljava/io/IOException;)V
    //   5: aload_0
    //   6: aload_1
    //   7: aload_2
    //   8: aload_3
    //   9: invokevirtual launch : (Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;)Ljava/lang/Process;
    //   12: astore_1
    //   13: aload #4
    //   15: aload_1
    //   16: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   19: invokeinterface setProcessInputStream : (Ljava/io/OutputStream;)V
    //   24: aload #4
    //   26: aload_1
    //   27: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   30: invokeinterface setProcessOutputStream : (Ljava/io/InputStream;)V
    //   35: aload #4
    //   37: aload_1
    //   38: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   41: invokeinterface setProcessErrorStream : (Ljava/io/InputStream;)V
    //   46: aload #4
    //   48: invokeinterface start : ()V
    //   53: aload_0
    //   54: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   57: ifnull -> 71
    //   60: aload_0
    //   61: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   64: aload_1
    //   65: invokeinterface add : (Ljava/lang/Process;)Z
    //   70: pop
    //   71: aload_0
    //   72: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   75: ifnull -> 86
    //   78: aload_0
    //   79: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   82: aload_1
    //   83: invokevirtual start : (Ljava/lang/Process;)V
    //   86: ldc -559038737
    //   88: istore #5
    //   90: aload_1
    //   91: invokevirtual waitFor : ()I
    //   94: istore #6
    //   96: iload #6
    //   98: istore #5
    //   100: invokestatic interrupted : ()Z
    //   103: pop
    //   104: aload_0
    //   105: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   108: ifnull -> 118
    //   111: aload_0
    //   112: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   115: invokevirtual stop : ()V
    //   118: aload #4
    //   120: invokeinterface stop : ()V
    //   125: aload_0
    //   126: aload_1
    //   127: invokespecial closeProcessStreams : (Ljava/lang/Process;)V
    //   130: aload_0
    //   131: invokespecial getExceptionCaught : ()Ljava/io/IOException;
    //   134: ifnull -> 198
    //   137: aload_0
    //   138: invokespecial getExceptionCaught : ()Ljava/io/IOException;
    //   141: athrow
    //   142: astore_2
    //   143: aload_0
    //   144: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   147: ifnull -> 161
    //   150: aload_0
    //   151: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   154: aload_1
    //   155: invokeinterface remove : (Ljava/lang/Process;)Z
    //   160: pop
    //   161: aload_2
    //   162: athrow
    //   163: astore_2
    //   164: aload_1
    //   165: invokevirtual destroy : ()V
    //   168: aload_2
    //   169: athrow
    //   170: astore_2
    //   171: aload_1
    //   172: invokevirtual destroy : ()V
    //   175: invokestatic interrupted : ()Z
    //   178: pop
    //   179: goto -> 104
    //   182: astore_2
    //   183: invokestatic interrupted : ()Z
    //   186: pop
    //   187: aload_2
    //   188: athrow
    //   189: astore_2
    //   190: aload_0
    //   191: aload_2
    //   192: invokespecial setExceptionCaught : (Ljava/io/IOException;)V
    //   195: goto -> 125
    //   198: aload_0
    //   199: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   202: astore_2
    //   203: aload_2
    //   204: ifnull -> 214
    //   207: aload_0
    //   208: getfield watchdog : Lorg/apache/commons/exec/ExecuteWatchdog;
    //   211: invokevirtual checkException : ()V
    //   214: aload_0
    //   215: iload #5
    //   217: invokevirtual isFailure : (I)Z
    //   220: ifeq -> 269
    //   223: new org/apache/commons/exec/ExecuteException
    //   226: dup
    //   227: new java/lang/StringBuffer
    //   230: dup
    //   231: invokespecial <init> : ()V
    //   234: ldc 'Process exited with an error: '
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   239: iload #5
    //   241: invokevirtual append : (I)Ljava/lang/StringBuffer;
    //   244: invokevirtual toString : ()Ljava/lang/String;
    //   247: iload #5
    //   249: invokespecial <init> : (Ljava/lang/String;I)V
    //   252: athrow
    //   253: astore_2
    //   254: aload_2
    //   255: athrow
    //   256: astore_2
    //   257: new java/io/IOException
    //   260: dup
    //   261: aload_2
    //   262: invokevirtual getMessage : ()Ljava/lang/String;
    //   265: invokespecial <init> : (Ljava/lang/String;)V
    //   268: athrow
    //   269: aload_0
    //   270: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   273: ifnull -> 287
    //   276: aload_0
    //   277: invokevirtual getProcessDestroyer : ()Lorg/apache/commons/exec/ProcessDestroyer;
    //   280: aload_1
    //   281: invokeinterface remove : (Ljava/lang/Process;)Z
    //   286: pop
    //   287: iload #5
    //   289: ireturn
    // Exception table:
    //   from	to	target	type
    //   13	46	163	java/io/IOException
    //   53	71	142	finally
    //   71	86	142	finally
    //   90	96	170	java/lang/InterruptedException
    //   90	96	182	finally
    //   100	104	142	finally
    //   104	118	142	finally
    //   118	125	189	java/io/IOException
    //   118	125	142	finally
    //   125	142	142	finally
    //   171	175	182	finally
    //   175	179	142	finally
    //   183	189	142	finally
    //   190	195	142	finally
    //   198	203	142	finally
    //   207	214	253	java/io/IOException
    //   207	214	256	java/lang/Exception
    //   207	214	142	finally
    //   214	253	142	finally
    //   254	256	142	finally
    //   257	269	142	finally
  }
  
  private IOException getExceptionCaught() {
    return this.exceptionCaught;
  }
  
  private void setExceptionCaught(IOException paramIOException) {
    if (this.exceptionCaught == null)
      this.exceptionCaught = paramIOException; 
  }
  
  protected Thread createThread(Runnable paramRunnable, String paramString) {
    return new Thread(paramRunnable, paramString);
  }
  
  public int execute(CommandLine paramCommandLine) {
    return execute(paramCommandLine, (Map)null);
  }
  
  public int execute(CommandLine paramCommandLine, Map paramMap) {
    if (this.workingDirectory != null && !this.workingDirectory.exists())
      throw new IOException(this.workingDirectory + " doesn't exist."); 
    return executeInternal(paramCommandLine, paramMap, this.workingDirectory, this.streamHandler);
  }
  
  public void execute(CommandLine paramCommandLine, Map paramMap, ExecuteResultHandler paramExecuteResultHandler) {
    if (this.workingDirectory != null && !this.workingDirectory.exists())
      throw new IOException(this.workingDirectory + " doesn't exist."); 
    if (this.watchdog != null)
      this.watchdog.setProcessNotStarted(); 
    this.executorThread = createThread(new DefaultExecutor$1(this, paramCommandLine, paramMap, paramExecuteResultHandler), "Exec Default Executor");
    getExecutorThread().start();
  }
  
  public void execute(CommandLine paramCommandLine, ExecuteResultHandler paramExecuteResultHandler) {
    execute(paramCommandLine, null, paramExecuteResultHandler);
  }
  
  protected Thread getExecutorThread() {
    return this.executorThread;
  }
  
  public ProcessDestroyer getProcessDestroyer() {
    return this.processDestroyer;
  }
  
  public ExecuteStreamHandler getStreamHandler() {
    return this.streamHandler;
  }
  
  public ExecuteWatchdog getWatchdog() {
    return this.watchdog;
  }
  
  public File getWorkingDirectory() {
    return this.workingDirectory;
  }
  
  public boolean isFailure(int paramInt) {
    if (this.exitValues != null) {
      if (this.exitValues.length == 0)
        return this.launcher.isFailure(paramInt); 
      int i = 0;
      while (i < this.exitValues.length) {
        if (this.exitValues[i] != paramInt) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  protected Process launch(CommandLine paramCommandLine, Map paramMap, File paramFile) {
    if (this.launcher == null)
      throw new IllegalStateException("CommandLauncher can not be null"); 
    if (paramFile != null && !paramFile.exists())
      throw new IOException(paramFile + " doesn't exist."); 
    return this.launcher.exec(paramCommandLine, paramMap, paramFile);
  }
  
  public void setExitValue(int paramInt) {
    setExitValues(new int[] { paramInt });
  }
  
  public void setExitValues(int[] paramArrayOfint) {
    if (paramArrayOfint == null) {
      paramArrayOfint = null;
    } else {
      paramArrayOfint = (int[])paramArrayOfint.clone();
    } 
    this.exitValues = paramArrayOfint;
  }
  
  public void setProcessDestroyer(ProcessDestroyer paramProcessDestroyer) {
    this.processDestroyer = paramProcessDestroyer;
  }
  
  public void setStreamHandler(ExecuteStreamHandler paramExecuteStreamHandler) {
    this.streamHandler = paramExecuteStreamHandler;
  }
  
  public void setWatchdog(ExecuteWatchdog paramExecuteWatchdog) {
    this.watchdog = paramExecuteWatchdog;
  }
  
  public void setWorkingDirectory(File paramFile) {
    this.workingDirectory = paramFile;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\DefaultExecutor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */