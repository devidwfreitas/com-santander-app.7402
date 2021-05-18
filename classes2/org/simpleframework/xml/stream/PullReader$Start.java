package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Start extends EventElement {
  private final int line;
  
  private final String name;
  
  private final String prefix;
  
  private final String reference;
  
  private final XmlPullParser source;
  
  public PullReader$Start(XmlPullParser paramXmlPullParser) {
    this.reference = paramXmlPullParser.getNamespace();
    this.line = paramXmlPullParser.getLineNumber();
    this.prefix = paramXmlPullParser.getPrefix();
    this.name = paramXmlPullParser.getName();
    this.source = paramXmlPullParser;
  }
  
  public int getLine() {
    return this.line;
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PullReader$Start.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */