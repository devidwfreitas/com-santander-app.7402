package org.apache.commons.exec;

import java.util.Enumeration;
import java.util.Vector;

public class ShutdownHookProcessDestroyer implements Runnable, ProcessDestroyer {
  private boolean added = false;
  
  private ShutdownHookProcessDestroyer$ProcessDestroyerImpl destroyProcessThread = null;
  
  private final Vector processes = new Vector();
  
  private volatile boolean running = false;
  
  private void addShutdownHook() {
    if (!this.running) {
      this.destroyProcessThread = new ShutdownHookProcessDestroyer$ProcessDestroyerImpl(this);
      Runtime.getRuntime().addShutdownHook(this.destroyProcessThread);
      this.added = true;
    } 
  }
  
  private void removeShutdownHook() {
    if (this.added && !this.running) {
      if (!Runtime.getRuntime().removeShutdownHook(this.destroyProcessThread))
        System.err.println("Could not remove shutdown hook"); 
      this.destroyProcessThread.setShouldDestroy(false);
      this.destroyProcessThread.start();
      try {
        this.destroyProcessThread.join(20000L);
      } catch (InterruptedException interruptedException) {}
      this.destroyProcessThread = null;
      this.added = false;
    } 
  }
  
  public boolean add(Process paramProcess) {
    synchronized (this.processes) {
      if (this.processes.size() == 0)
        addShutdownHook(); 
      this.processes.addElement(paramProcess);
      return this.processes.contains(paramProcess);
    } 
  }
  
  public boolean isAddedAsShutdownHook() {
    return this.added;
  }
  
  public boolean remove(Process paramProcess) {
    synchronized (this.processes) {
      boolean bool = this.processes.removeElement(paramProcess);
      if (bool && this.processes.size() == 0)
        removeShutdownHook(); 
      return bool;
    } 
  }
  
  public void run() {
    synchronized (this.processes) {
      this.running = true;
      Enumeration<Process> enumeration = this.processes.elements();
      while (enumeration.hasMoreElements()) {
        Process process = enumeration.nextElement();
        try {
          process.destroy();
        } catch (Throwable throwable) {
          System.err.println("Unable to terminate process during process shutdown");
        } 
      } 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
  }
  
  public int size() {
    return this.processes.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\exec\ShutdownHookProcessDestroyer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */