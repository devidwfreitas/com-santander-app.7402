package org.apache.commons.io;

final class FileCleaningTracker$Reaper extends Thread {
  FileCleaningTracker$Reaper() {
    super("File Reaper");
    setPriority(10);
    setDaemon(true);
  }
  
  public void run() {
    while (!FileCleaningTracker.this.exitWhenFinished || FileCleaningTracker.this.trackers.size() > 0) {
      try {
        FileCleaningTracker$Tracker fileCleaningTracker$Tracker = (FileCleaningTracker$Tracker)FileCleaningTracker.this.q.remove();
        FileCleaningTracker.this.trackers.remove(fileCleaningTracker$Tracker);
        if (!fileCleaningTracker$Tracker.delete())
          FileCleaningTracker.this.deleteFailures.add(fileCleaningTracker$Tracker.getPath()); 
        fileCleaningTracker$Tracker.clear();
      } catch (InterruptedException interruptedException) {}
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileCleaningTracker$Reaper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */