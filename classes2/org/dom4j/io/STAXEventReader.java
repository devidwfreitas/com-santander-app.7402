package org.dom4j.io;

import java.io.InputStream;
import java.io.Reader;
import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.EndElement;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.Namespace;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.dom4j.Attribute;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;

public class STAXEventReader {
  private DocumentFactory factory;
  
  private XMLInputFactory inputFactory = XMLInputFactory.newInstance();
  
  public STAXEventReader() {
    this.factory = DocumentFactory.getInstance();
  }
  
  public STAXEventReader(DocumentFactory paramDocumentFactory) {
    if (paramDocumentFactory != null) {
      this.factory = paramDocumentFactory;
      return;
    } 
    this.factory = DocumentFactory.getInstance();
  }
  
  public Attribute createAttribute(Element paramElement, Attribute paramAttribute) {
    return this.factory.createAttribute(paramElement, createQName(paramAttribute.getName()), paramAttribute.getValue());
  }
  
  public CharacterData createCharacterData(Characters paramCharacters) {
    String str = paramCharacters.getData();
    return (CharacterData)(paramCharacters.isCData() ? this.factory.createCDATA(str) : this.factory.createText(str));
  }
  
  public Comment createComment(Comment paramComment) {
    return this.factory.createComment(paramComment.getText());
  }
  
  public Element createElement(StartElement paramStartElement) {
    QName qName = createQName(paramStartElement.getName());
    Element element = this.factory.createElement(qName);
    Iterator<Attribute> iterator1 = paramStartElement.getAttributes();
    while (iterator1.hasNext()) {
      Attribute attribute = iterator1.next();
      element.addAttribute(createQName(attribute.getName()), attribute.getValue());
    } 
    Iterator<Namespace> iterator = paramStartElement.getNamespaces();
    while (iterator.hasNext()) {
      Namespace namespace = iterator.next();
      element.addNamespace(namespace.getPrefix(), namespace.getNamespaceURI());
    } 
    return element;
  }
  
  public Entity createEntity(EntityReference paramEntityReference) {
    return this.factory.createEntity(paramEntityReference.getName(), paramEntityReference.getDeclaration().getReplacementText());
  }
  
  public Namespace createNamespace(Namespace paramNamespace) {
    return this.factory.createNamespace(paramNamespace.getPrefix(), paramNamespace.getNamespaceURI());
  }
  
  public ProcessingInstruction createProcessingInstruction(ProcessingInstruction paramProcessingInstruction) {
    return this.factory.createProcessingInstruction(paramProcessingInstruction.getTarget(), paramProcessingInstruction.getData());
  }
  
  public QName createQName(QName paramQName) {
    return this.factory.createQName(paramQName.getLocalPart(), paramQName.getPrefix(), paramQName.getNamespaceURI());
  }
  
  public Attribute readAttribute(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isAttribute())
      return createAttribute(null, (Attribute)paramXMLEventReader.nextEvent()); 
    throw new XMLStreamException("Expected Attribute event, found: " + xMLEvent);
  }
  
  public CharacterData readCharacters(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isCharacters())
      return createCharacterData(paramXMLEventReader.nextEvent().asCharacters()); 
    throw new XMLStreamException("Expected Characters event, found: " + xMLEvent);
  }
  
  public Comment readComment(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent instanceof Comment)
      return createComment((Comment)paramXMLEventReader.nextEvent()); 
    throw new XMLStreamException("Expected Comment event, found: " + xMLEvent);
  }
  
  public Document readDocument(InputStream paramInputStream) {
    return readDocument(paramInputStream, (String)null);
  }
  
  public Document readDocument(InputStream paramInputStream, String paramString) {
    XMLEventReader xMLEventReader = this.inputFactory.createXMLEventReader(paramString, paramInputStream);
    try {
      return readDocument(xMLEventReader);
    } finally {
      xMLEventReader.close();
    } 
  }
  
  public Document readDocument(Reader paramReader) {
    return readDocument(paramReader, (String)null);
  }
  
  public Document readDocument(Reader paramReader, String paramString) {
    XMLEventReader xMLEventReader = this.inputFactory.createXMLEventReader(paramString, paramReader);
    try {
      return readDocument(xMLEventReader);
    } finally {
      xMLEventReader.close();
    } 
  }
  
  public Document readDocument(XMLEventReader paramXMLEventReader) {
    Document document;
    String str = null;
    while (paramXMLEventReader.hasNext()) {
      StartDocument startDocument;
      switch (paramXMLEventReader.peek().getEventType()) {
        case 7:
          startDocument = (StartDocument)paramXMLEventReader.nextEvent();
          if (str == null) {
            if (startDocument.encodingSet()) {
              str = startDocument.getCharacterEncodingScheme();
              Document document1 = this.factory.createDocument(str);
              break;
            } 
            document = this.factory.createDocument();
            break;
          } 
          throw new XMLStreamException("Unexpected StartDocument event", startDocument.getLocation());
        case 4:
        case 6:
        case 8:
          paramXMLEventReader.nextEvent();
          break;
      } 
    } 
    return document;
  }
  
  public Element readElement(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isStartElement()) {
      xMLEvent = paramXMLEventReader.nextEvent().asStartElement();
      Element element = createElement((StartElement)xMLEvent);
      while (true) {
        EndElement endElement;
        if (!paramXMLEventReader.hasNext())
          throw new XMLStreamException("Unexpected end of stream while reading element content"); 
        if (paramXMLEventReader.peek().isEndElement()) {
          endElement = paramXMLEventReader.nextEvent().asEndElement();
          if (!endElement.getName().equals(xMLEvent.getName()))
            throw new XMLStreamException("Expected " + xMLEvent.getName() + " end-tag, but found" + endElement.getName()); 
        } else {
          element.add(readNode((XMLEventReader)endElement));
          continue;
        } 
        return element;
      } 
    } 
    throw new XMLStreamException("Expected Element event, found: " + xMLEvent);
  }
  
  public Entity readEntityReference(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isEntityReference())
      return createEntity((EntityReference)paramXMLEventReader.nextEvent()); 
    throw new XMLStreamException("Expected EntityRef event, found: " + xMLEvent);
  }
  
  public Namespace readNamespace(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isNamespace())
      return createNamespace((Namespace)paramXMLEventReader.nextEvent()); 
    throw new XMLStreamException("Expected Namespace event, found: " + xMLEvent);
  }
  
  public Node readNode(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isStartElement())
      return (Node)readElement(paramXMLEventReader); 
    if (xMLEvent.isCharacters())
      return (Node)readCharacters(paramXMLEventReader); 
    if (xMLEvent.isStartDocument())
      return (Node)readDocument(paramXMLEventReader); 
    if (xMLEvent.isProcessingInstruction())
      return (Node)readProcessingInstruction(paramXMLEventReader); 
    if (xMLEvent.isEntityReference())
      return (Node)readEntityReference(paramXMLEventReader); 
    if (xMLEvent.isAttribute())
      return (Node)readAttribute(paramXMLEventReader); 
    if (xMLEvent.isNamespace())
      return (Node)readNamespace(paramXMLEventReader); 
    throw new XMLStreamException("Unsupported event: " + xMLEvent);
  }
  
  public ProcessingInstruction readProcessingInstruction(XMLEventReader paramXMLEventReader) {
    XMLEvent xMLEvent = paramXMLEventReader.peek();
    if (xMLEvent.isProcessingInstruction())
      return createProcessingInstruction((ProcessingInstruction)paramXMLEventReader.nextEvent()); 
    throw new XMLStreamException("Expected PI event, found: " + xMLEvent);
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    if (paramDocumentFactory != null) {
      this.factory = paramDocumentFactory;
      return;
    } 
    this.factory = DocumentFactory.getInstance();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\STAXEventReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */