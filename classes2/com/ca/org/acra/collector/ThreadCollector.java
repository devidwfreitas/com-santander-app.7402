package com.ca.org.acra.collector;

public class ThreadCollector {
  public static String collect(Thread paramThread) {
    StringBuilder stringBuilder = new StringBuilder();
    if (paramThread != null) {
      stringBuilder.append("id=").append(paramThread.getId()).append("\n");
      stringBuilder.append("name=").append(paramThread.getName()).append("\n");
      stringBuilder.append("priority=").append(paramThread.getPriority()).append("\n");
      if (paramThread.getThreadGroup() != null)
        stringBuilder.append("groupName=").append(paramThread.getThreadGroup().getName()).append("\n"); 
      return stringBuilder.toString();
    } 
    stringBuilder.append("No broken thread, this might be a silent exception.");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\ThreadCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */