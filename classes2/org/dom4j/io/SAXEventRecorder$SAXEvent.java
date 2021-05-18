package org.dom4j.io;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

class SAXEventRecorder$SAXEvent implements Externalizable {
  static final byte ATTRIBUTE_DECL = 17;
  
  static final byte CHARACTERS = 8;
  
  static final byte COMMENT = 15;
  
  static final byte ELEMENT_DECL = 16;
  
  static final byte END_CDATA = 14;
  
  static final byte END_DOCUMENT = 5;
  
  static final byte END_DTD = 10;
  
  static final byte END_ELEMENT = 7;
  
  static final byte END_ENTITY = 12;
  
  static final byte END_PREFIX_MAPPING = 3;
  
  static final byte EXTERNAL_ENTITY_DECL = 19;
  
  static final byte INTERNAL_ENTITY_DECL = 18;
  
  static final byte PROCESSING_INSTRUCTION = 1;
  
  static final byte START_CDATA = 13;
  
  static final byte START_DOCUMENT = 4;
  
  static final byte START_DTD = 9;
  
  static final byte START_ELEMENT = 6;
  
  static final byte START_ENTITY = 11;
  
  static final byte START_PREFIX_MAPPING = 2;
  
  public static final long serialVersionUID = 1L;
  
  protected byte event;
  
  protected List parms;
  
  public SAXEventRecorder$SAXEvent() {}
  
  SAXEventRecorder$SAXEvent(byte paramByte) {
    this.event = paramByte;
  }
  
  void addParm(Object paramObject) {
    if (this.parms == null)
      this.parms = new ArrayList(3); 
    this.parms.add(paramObject);
  }
  
  Object getParm(int paramInt) {
    return (this.parms != null && paramInt < this.parms.size()) ? this.parms.get(paramInt) : null;
  }
  
  public void readExternal(ObjectInput paramObjectInput) {
    this.event = paramObjectInput.readByte();
    if (paramObjectInput.readByte() != 2)
      this.parms = (List)paramObjectInput.readObject(); 
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput) {
    paramObjectOutput.writeByte(this.event);
    if (this.parms == null) {
      paramObjectOutput.writeByte(2);
      return;
    } 
    paramObjectOutput.writeByte(1);
    paramObjectOutput.writeObject(this.parms);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXEventRecorder$SAXEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */