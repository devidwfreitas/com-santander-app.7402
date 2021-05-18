package org.dom4j.jaxb;

import javax.xml.bind.Element;
import org.dom4j.Element;
import org.dom4j.io.ElementModifier;

class JAXBModifier$JAXBElementModifier implements ElementModifier {
  private JAXBModifier jaxbModifier;
  
  private JAXBObjectModifier objectModifier;
  
  public JAXBModifier$JAXBElementModifier(JAXBModifier paramJAXBModifier2, JAXBObjectModifier paramJAXBObjectModifier) {
    this.jaxbModifier = paramJAXBModifier2;
    this.objectModifier = paramJAXBObjectModifier;
  }
  
  public Element modifyElement(Element paramElement) {
    Element element = this.jaxbModifier.unmarshal(paramElement);
    element = this.objectModifier.modifyObject(element);
    return this.jaxbModifier.marshal(element);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\jaxb\JAXBModifier$JAXBElementModifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */