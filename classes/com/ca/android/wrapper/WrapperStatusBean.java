package com.ca.android.wrapper;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;

public class WrapperStatusBean {
  private PropertyChangeSupport propChangeSupp = new PropertyChangeSupport(this);
  
  private String wrappingStatus;
  
  private WrapperStatusBean$WrappingStep wrappingStep;
  
  public void addPropertyChangeListener(PropertyChangeListener paramPropertyChangeListener) {
    this.propChangeSupp.addPropertyChangeListener(paramPropertyChangeListener);
  }
  
  public String getWrappingStatus() {
    return this.wrappingStatus;
  }
  
  public void removePropertyChangeListener(PropertyChangeListener paramPropertyChangeListener) {
    this.propChangeSupp.removePropertyChangeListener(paramPropertyChangeListener);
  }
  
  public void setWrappingStatus(String paramString) {
    this.propChangeSupp.firePropertyChange("wrappingStatus", this.wrappingStatus, paramString);
    this.wrappingStatus = paramString;
  }
  
  public void setWrappingStep(WrapperStatusBean$WrappingStep paramWrapperStatusBean$WrappingStep) {
    this.propChangeSupp.firePropertyChange("wrappingStep", this.wrappingStep, paramWrapperStatusBean$WrappingStep);
    this.wrappingStep = paramWrapperStatusBean$WrappingStep;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\WrapperStatusBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */