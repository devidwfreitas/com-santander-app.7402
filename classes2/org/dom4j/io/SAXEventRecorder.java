package org.dom4j.io;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;

public class SAXEventRecorder extends DefaultHandler implements Externalizable, DTDHandler, DeclHandler, LexicalHandler {
  private static final String EMPTY_STRING = "";
  
  private static final byte NULL = 2;
  
  private static final byte OBJECT = 1;
  
  private static final byte STRING = 0;
  
  private static final String XMLNS = "xmlns";
  
  public static final long serialVersionUID = 1L;
  
  private List events = new ArrayList();
  
  private Map prefixMappings = new HashMap<Object, Object>();
  
  public void attributeDecl(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)17);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    sAXEventRecorder$SAXEvent.addParm(paramString3);
    sAXEventRecorder$SAXEvent.addParm(paramString4);
    sAXEventRecorder$SAXEvent.addParm(paramString5);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)8);
    sAXEventRecorder$SAXEvent.addParm(paramArrayOfchar);
    sAXEventRecorder$SAXEvent.addParm(new Integer(paramInt1));
    sAXEventRecorder$SAXEvent.addParm(new Integer(paramInt2));
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void comment(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)15);
    sAXEventRecorder$SAXEvent.addParm(paramArrayOfchar);
    sAXEventRecorder$SAXEvent.addParm(new Integer(paramInt1));
    sAXEventRecorder$SAXEvent.addParm(new Integer(paramInt2));
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void elementDecl(String paramString1, String paramString2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)16);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void endCDATA() {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)14);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void endDTD() {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)10);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void endDocument() {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)5);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    QName qName;
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)7);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    sAXEventRecorder$SAXEvent.addParm(paramString3);
    this.events.add(sAXEventRecorder$SAXEvent);
    if (paramString1 != null) {
      qName = new QName(paramString2, Namespace.get(paramString1));
    } else {
      qName = new QName(paramString2);
    } 
    List list = (List)this.prefixMappings.get(qName);
    if (list != null) {
      Iterator iterator = list.iterator();
      while (iterator.hasNext()) {
        SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent1 = new SAXEventRecorder$SAXEvent((byte)3);
        sAXEventRecorder$SAXEvent1.addParm(iterator.next());
        this.events.add(sAXEventRecorder$SAXEvent1);
      } 
    } 
  }
  
  public void endEntity(String paramString) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)12);
    sAXEventRecorder$SAXEvent.addParm(paramString);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void endPrefixMapping(String paramString) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)3);
    sAXEventRecorder$SAXEvent.addParm(paramString);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void externalEntityDecl(String paramString1, String paramString2, String paramString3) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)19);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    sAXEventRecorder$SAXEvent.addParm(paramString3);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void internalEntityDecl(String paramString1, String paramString2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)18);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void processingInstruction(String paramString1, String paramString2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)1);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void readExternal(ObjectInput paramObjectInput) {
    if (paramObjectInput.readByte() != 2)
      this.events = (List)paramObjectInput.readObject(); 
  }
  
  public void replay(ContentHandler paramContentHandler) {
    for (SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent : this.events) {
      int i;
      int j;
      AttributesImpl attributesImpl;
      char[] arrayOfChar;
      List list;
      switch (sAXEventRecorder$SAXEvent.event) {
        case 1:
          paramContentHandler.processingInstruction((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1));
          break;
        case 2:
          paramContentHandler.startPrefixMapping((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1));
          break;
        case 3:
          paramContentHandler.endPrefixMapping((String)sAXEventRecorder$SAXEvent.getParm(0));
          break;
        case 4:
          paramContentHandler.startDocument();
          break;
        case 5:
          paramContentHandler.endDocument();
          break;
        case 6:
          attributesImpl = new AttributesImpl();
          list = (List)sAXEventRecorder$SAXEvent.getParm(3);
          if (list != null)
            for (String[] arrayOfString : list)
              attributesImpl.addAttribute(arrayOfString[0], arrayOfString[1], arrayOfString[2], arrayOfString[3], arrayOfString[4]);  
          paramContentHandler.startElement((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1), (String)sAXEventRecorder$SAXEvent.getParm(2), attributesImpl);
          break;
        case 7:
          paramContentHandler.endElement((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1), (String)sAXEventRecorder$SAXEvent.getParm(2));
          break;
        case 8:
          paramContentHandler.characters((char[])sAXEventRecorder$SAXEvent.getParm(0), ((Integer)sAXEventRecorder$SAXEvent.getParm(1)).intValue(), ((Integer)sAXEventRecorder$SAXEvent.getParm(2)).intValue());
          break;
        case 9:
          ((LexicalHandler)paramContentHandler).startDTD((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1), (String)sAXEventRecorder$SAXEvent.getParm(2));
          break;
        case 10:
          ((LexicalHandler)paramContentHandler).endDTD();
          break;
        case 11:
          ((LexicalHandler)paramContentHandler).startEntity((String)sAXEventRecorder$SAXEvent.getParm(0));
          break;
        case 12:
          ((LexicalHandler)paramContentHandler).endEntity((String)sAXEventRecorder$SAXEvent.getParm(0));
          break;
        case 13:
          ((LexicalHandler)paramContentHandler).startCDATA();
          break;
        case 14:
          ((LexicalHandler)paramContentHandler).endCDATA();
          break;
        case 15:
          arrayOfChar = (char[])sAXEventRecorder$SAXEvent.getParm(0);
          i = ((Integer)sAXEventRecorder$SAXEvent.getParm(1)).intValue();
          j = ((Integer)sAXEventRecorder$SAXEvent.getParm(2)).intValue();
          ((LexicalHandler)paramContentHandler).comment(arrayOfChar, i, j);
          break;
        case 16:
          ((DeclHandler)paramContentHandler).elementDecl((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1));
          break;
        case 17:
          ((DeclHandler)paramContentHandler).attributeDecl((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1), (String)sAXEventRecorder$SAXEvent.getParm(2), (String)sAXEventRecorder$SAXEvent.getParm(3), (String)sAXEventRecorder$SAXEvent.getParm(4));
          break;
        case 18:
          ((DeclHandler)paramContentHandler).internalEntityDecl((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1));
          break;
        case 19:
          ((DeclHandler)paramContentHandler).externalEntityDecl((String)sAXEventRecorder$SAXEvent.getParm(0), (String)sAXEventRecorder$SAXEvent.getParm(1), (String)sAXEventRecorder$SAXEvent.getParm(2));
          break;
      } 
    } 
  }
  
  public void startCDATA() {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)13);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void startDTD(String paramString1, String paramString2, String paramString3) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)9);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    sAXEventRecorder$SAXEvent.addParm(paramString3);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void startDocument() {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)4);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    QName qName;
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)6);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    sAXEventRecorder$SAXEvent.addParm(paramString3);
    if (paramString1 != null) {
      qName = new QName(paramString2, Namespace.get(paramString1));
    } else {
      qName = new QName(paramString2);
    } 
    if (paramAttributes != null && paramAttributes.getLength() > 0) {
      ArrayList<String[]> arrayList = new ArrayList(paramAttributes.getLength());
      for (int i = 0; i < paramAttributes.getLength(); i++) {
        paramString2 = paramAttributes.getLocalName(i);
        if (paramString2.startsWith("xmlns")) {
          if (paramString2.length() > 5) {
            paramString2 = paramString2.substring(6);
          } else {
            paramString2 = "";
          } 
          SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent1 = new SAXEventRecorder$SAXEvent((byte)2);
          sAXEventRecorder$SAXEvent1.addParm(paramString2);
          sAXEventRecorder$SAXEvent1.addParm(paramAttributes.getValue(i));
          this.events.add(sAXEventRecorder$SAXEvent1);
          List<String> list2 = (List)this.prefixMappings.get(qName);
          List<String> list1 = list2;
          if (list2 == null) {
            list1 = new ArrayList();
            this.prefixMappings.put(qName, list1);
          } 
          list1.add(paramString2);
        } else {
          arrayList.add(new String[] { paramAttributes.getURI(i), paramString2, paramAttributes.getQName(i), paramAttributes.getType(i), paramAttributes.getValue(i) });
        } 
      } 
      sAXEventRecorder$SAXEvent.addParm(arrayList);
    } 
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void startEntity(String paramString) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)11);
    sAXEventRecorder$SAXEvent.addParm(paramString);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void startPrefixMapping(String paramString1, String paramString2) {
    SAXEventRecorder$SAXEvent sAXEventRecorder$SAXEvent = new SAXEventRecorder$SAXEvent((byte)2);
    sAXEventRecorder$SAXEvent.addParm(paramString1);
    sAXEventRecorder$SAXEvent.addParm(paramString2);
    this.events.add(sAXEventRecorder$SAXEvent);
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput) {
    if (this.events == null) {
      paramObjectOutput.writeByte(2);
      return;
    } 
    paramObjectOutput.writeByte(1);
    paramObjectOutput.writeObject(this.events);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXEventRecorder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */