package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Entry extends EventAttribute {
  private final String name;
  
  private final String prefix;
  
  private final String reference;
  
  private final XmlPullParser source;
  
  private final String value;
  
  public PullReader$Entry(XmlPullParser paramXmlPullParser, int paramInt) {
    this.reference = paramXmlPullParser.getAttributeNamespace(paramInt);
    this.prefix = paramXmlPullParser.getAttributePrefix(paramInt);
    this.value = paramXmlPullParser.getAttributeValue(paramInt);
    this.name = paramXmlPullParser.getAttributeName(paramInt);
    this.source = paramXmlPullParser;
  }
  
  public String getName() {
    return this.name;
  }
  
  public String getPrefix() {
    return this.prefix;
  }
  
  public String getReference() {
    return this.reference;
  }
  
  public Object getSource() {
    return this.source;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public boolean isReserved() {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PullReader$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */