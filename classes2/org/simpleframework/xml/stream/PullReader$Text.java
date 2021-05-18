package org.simpleframework.xml.stream;

import org.xmlpull.v1.XmlPullParser;

class PullReader$Text extends EventToken {
  private final XmlPullParser source;
  
  private final String text;
  
  public PullReader$Text(XmlPullParser paramXmlPullParser) {
    this.text = paramXmlPullParser.getText();
    this.source = paramXmlPullParser;
  }
  
  public Object getSource() {
    return this.source;
  }
  
  public String getValue() {
    return this.text;
  }
  
  public boolean isText() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\PullReader$Text.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */