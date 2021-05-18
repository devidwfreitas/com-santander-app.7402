package com.ca.android.wrapper;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;

public class WrapperStatusListener implements PropertyChangeListener {
  public void propertyChange(PropertyChangeEvent paramPropertyChangeEvent) {
    if (paramPropertyChangeEvent.getPropertyName().equals("wrappingStatus"))
      System.out.println(paramPropertyChangeEvent.getNewValue()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\WrapperStatusListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */