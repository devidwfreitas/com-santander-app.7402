package org.apache.commons.exec;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.exec.util.DebugUtils;

public class PumpStreamHandler implements ExecuteStreamHandler {
  private static final long STOP_TIMEOUT_ADDITION = 2000L;
  
  private IOException caught = null;
  
  private final OutputStream err;
  
  private Thread errorThread;
  
  private final InputStream input;
  
  private InputStreamPumper inputStreamPumper;
  
  private Thread inputThread;
  
  private final OutputStream out;
  
  private Thread outputThread;
  
  private long stopTimeout;
  
  public PumpStreamHandler() {
    this(System.out, System.err);
  }
  
  public PumpStreamHandler(OutputStream paramOutputStream) {
    this(paramOutputStream, paramOutputStream);
  }
  
  public PumpStreamHandler(OutputStream paramOutputStream1, OutputStream paramOutputStream2) {
    this(paramOutputStream1, paramOutputStream2, null);
  }
  
  public PumpStreamHandler(OutputStream paramOutputStream1, OutputStream paramOutputStream2, InputStream paramInputStream) {
    this.out = paramOutputStream1;
    this.err = paramOutputStream2;
    this.input = paramInputStream;
  }
  
  private Thread createSystemInPump(InputStream paramInputStream, OutputStream paramOutputStream) {
    this.inputStreamPumper = new InputStreamPumper(paramInputStream, paramOutputStream);
    Thread thread = new Thread(this.inputStreamPumper, "Exec Input Stream Pumper");
    thread.setDaemon(true);
    return thread;
  }
  
  protected void createProcessErrorPump(InputStream paramInputStream, OutputStream paramOutputStream) {
    this.errorThread = createPump(paramInputStream, paramOutputStream);
  }
  
  protected void createProcessOutputPump(InputStream paramInputStream, OutputStream paramOutputStream) {
    this.outputThread = createPump(paramInputStream, paramOutputStream);
  }
  
  protected Thread createPump(InputStream paramInputStream, OutputStream paramOutputStream) {
    if (paramOutputStream instanceof java.io.PipedOutputStream) {
      boolean bool1 = true;
      return createPump(paramInputStream, paramOutputStream, bool1);
    } 
    boolean bool = false;
    return createPump(paramInputStream, paramOutputStream, bool);
  }
  
  protected Thread createPump(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean) {
    Thread thread = new Thread(new StreamPumper(paramInputStream, paramOutputStream, paramBoolean), "Exec Stream Pumper");
    thread.setDaemon(true);
    return thread;
  }
  
  protected OutputStream getErr() {
    return this.err;
  }
  
  protected OutputStream getOut() {
    return this.out;
  }
  
  public void setProcessErrorStream(InputStream paramInputStream) {
    if (this.err != null)
      createProcessErrorPump(paramInputStream, this.err); 
  }
  
  public void setProcessInputStream(OutputStream paramOutputStream) {
    if (this.input != null) {
      if (this.input == System.in) {
        this.inputThread = createSystemInPump(this.input, paramOutputStream);
        return;
      } 
      this.inputThread = createPump(this.input, paramOutputStream, true);
      return;
    } 
    try {
      paramOutputStream.close();
      return;
    } catch (IOException iOException) {
      DebugUtils.handleException("Got exception while closing output stream", iOException);
      return;
    } 
  }
  
  public void setProcessOutputStream(InputStream paramInputStream) {
    if (this.out != null)
      createProcessOutputPump(paramInputStream, this.out); 
  }
  
  public void setStopTimeout(long paramLong) {
    this.stopTimeout = paramLong;
  }
  
  public void start() {
    if (this.outputThread != null)
      this.outputThread.start(); 
    if (this.errorThread != null)
      this.errorThread.start(); 
    if (this.inputThread != null)
      this.inputThread.start(); 
  }
  
  public void stop() {
    if (this.inputStreamPumper != null)
      this.inputStreamPumper.stopProcessing(); 
    stopThread(this.outputThread, this.stopTimeout);
    stopThread(this.errorThread, this.stopTimeout);
    stopThread(this.inputThread, this.stopTimeout);
    if (this.err != null && this.err != this.out)
      try {
        this.err.flush();
      } catch (IOException iOException) {
        DebugUtils.handleException("Got exception while flushing the error stream : " + iOException.getMessage(), iOException);
      }  
    if (this.out != null) {
      try {
        this.out.flush();
        if (this.caught != null)
          throw this.caught; 
      } catch (IOException iOException) {
        DebugUtils.handleException("Got exception while flushing the output stream", iOException);
        if (this.caught != null)
          throw this.caught; 
      } 
      return;
    } 
    if (this.caught != null)
      throw this.caught; 
  }
  
  protected void stopThread(Thread paramThread, long paramLong) {
    if (paramThread != null)
      if (paramLong == 0L) {
        try {
          paramThread.join();
          return;
        } catch (InterruptedException interruptedException) {
          paramThread.interrupt();
        } 
      } else {
        long l1 = 2000L + paramLong;
        long l2 = System.currentTimeMillis();
        paramThread.join(l1);
        if (System.currentTimeMillis() >= l1 + l2) {
          this.caught = new ExecuteException("The stop timeout of " + paramLong + " ms was exceeded", -559038737);
          return;
        } 
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\PumpStreamHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */