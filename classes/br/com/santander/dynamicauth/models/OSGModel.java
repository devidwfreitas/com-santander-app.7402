package br.com.santander.dynamicauth.models;

import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "response")
public class OSGModel implements Serializable {
  @Element(name = "parameters", required = false)
  private OSGParametersModel OSG;
  
  public OSGParametersModel getParameters() {
    return this.OSG;
  }
  
  public void setParameters(OSGParametersModel paramOSGParametersModel) {
    this.OSG = paramOSGParametersModel;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\dynamicauth\models\OSGModel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */