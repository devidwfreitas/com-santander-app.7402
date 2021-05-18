package org.simpleframework.xml.core;

import java.util.Iterator;
import org.simpleframework.xml.Version;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NamespaceMap;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;

class Composite implements Converter {
  private final Context context;
  
  private final Criteria criteria;
  
  private final ObjectFactory factory;
  
  private final Primitive primitive;
  
  private final Revision revision;
  
  private final Type type;
  
  public Composite(Context paramContext, Type paramType) {
    this(paramContext, paramType, null);
  }
  
  public Composite(Context paramContext, Type paramType, Class paramClass) {
    this.factory = new ObjectFactory(paramContext, paramType, paramClass);
    this.primitive = new Primitive(paramContext, paramType);
    this.criteria = new Collector();
    this.revision = new Revision();
    this.context = paramContext;
    this.type = paramType;
  }
  
  private boolean isOverridden(OutputNode paramOutputNode, Object paramObject, Type paramType) {
    return this.factory.setOverride(paramType, paramObject, paramOutputNode);
  }
  
  private Object read(InputNode paramInputNode, Instance paramInstance, Class paramClass) {
    Schema schema = this.context.getSchema(paramClass);
    Caller caller = schema.getCaller();
    Object object = read(schema, paramInstance).read(paramInputNode);
    caller.validate(object);
    caller.commit(object);
    paramInstance.setInstance(object);
    return readResolve(paramInputNode, object, caller);
  }
  
  private Composite$Builder read(Schema paramSchema, Instance paramInstance) {
    return paramSchema.getInstantiator().isDefault() ? new Composite$Builder(this, this.criteria, paramSchema, paramInstance) : new Composite$Injector(this, this, this.criteria, paramSchema, paramInstance, null);
  }
  
  private void read(InputNode paramInputNode, Object paramObject, Schema paramSchema) {
    Section section = paramSchema.getSection();
    readVersion(paramInputNode, paramObject, paramSchema);
    readSection(paramInputNode, paramObject, section);
  }
  
  private void readAttribute(InputNode paramInputNode, Object paramObject, Section paramSection, LabelMap paramLabelMap) {
    Position position;
    String str = paramSection.getAttribute(paramInputNode.getName());
    Label label = paramLabelMap.getLabel(str);
    if (label == null) {
      position = paramInputNode.getPosition();
      paramObject = this.context.getType(this.type, paramObject);
      if (paramLabelMap.isStrict(this.context) && this.revision.isEqual())
        throw new AttributeException("Attribute '%s' does not have a match in %s at %s", new Object[] { str, paramObject, position }); 
    } else {
      readInstance((InputNode)position, paramObject, label);
    } 
  }
  
  private void readAttributes(InputNode paramInputNode, Object paramObject, Section paramSection) {
    NodeMap nodeMap = paramInputNode.getAttributes();
    LabelMap labelMap = paramSection.getAttributes();
    Iterator<String> iterator = nodeMap.iterator();
    while (iterator.hasNext()) {
      InputNode inputNode = paramInputNode.getAttribute(iterator.next());
      if (inputNode != null)
        readAttribute(inputNode, paramObject, paramSection, labelMap); 
    } 
    validate(paramInputNode, labelMap, paramObject);
  }
  
  private void readElement(InputNode paramInputNode, Object paramObject, Section paramSection, LabelMap paramLabelMap) {
    Position position;
    String str = paramSection.getPath(paramInputNode.getName());
    Label label2 = paramLabelMap.getLabel(str);
    Label label1 = label2;
    if (label2 == null)
      label1 = this.criteria.resolve(str); 
    if (label1 == null) {
      position = paramInputNode.getPosition();
      paramObject = this.context.getType(this.type, paramObject);
      if (paramLabelMap.isStrict(this.context) && this.revision.isEqual())
        throw new ElementException("Element '%s' does not have a match in %s at %s", new Object[] { str, paramObject, position }); 
      paramInputNode.skip();
      return;
    } 
    readUnion(paramInputNode, paramObject, paramLabelMap, (Label)position);
  }
  
  private void readElements(InputNode paramInputNode, Object paramObject, Section paramSection) {
    LabelMap labelMap = paramSection.getElements();
    for (InputNode inputNode = paramInputNode.getNext(); inputNode != null; inputNode = paramInputNode.getNext()) {
      Section section = paramSection.getSection(inputNode.getName());
      if (section != null) {
        readSection(inputNode, paramObject, section);
      } else {
        readElement(inputNode, paramObject, paramSection, labelMap);
      } 
    } 
    validate(paramInputNode, labelMap, paramObject);
  }
  
  private Object readInstance(InputNode paramInputNode, Object paramObject, Label paramLabel) {
    Object object = readVariable(paramInputNode, paramObject, paramLabel);
    if (object == null) {
      Position position = paramInputNode.getPosition();
      paramObject = this.context.getType(this.type, paramObject);
      if (paramLabel.isRequired() && this.revision.isEqual())
        throw new ValueRequiredException("Empty value for %s in %s at %s", new Object[] { paramLabel, paramObject, position }); 
    } else if (object != paramLabel.getEmpty(this.context)) {
      this.criteria.set(paramLabel, object);
    } 
    return object;
  }
  
  private Object readPrimitive(InputNode paramInputNode, Instance paramInstance) {
    Class clazz = paramInstance.getType();
    Object object = this.primitive.read(paramInputNode, clazz);
    if (clazz != null)
      paramInstance.setInstance(object); 
    return object;
  }
  
  private Object readResolve(InputNode paramInputNode, Object paramObject, Caller paramCaller) {
    Object object = paramObject;
    if (paramObject != null) {
      Position position = paramInputNode.getPosition();
      object = paramCaller.resolve(paramObject);
      paramObject = this.type.getType();
      Class<?> clazz = object.getClass();
      if (!paramObject.isAssignableFrom(clazz))
        throw new ElementException("Type %s does not match %s at %s", new Object[] { clazz, paramObject, position }); 
    } 
    return object;
  }
  
  private void readSection(InputNode paramInputNode, Object paramObject, Section paramSection) {
    readText(paramInputNode, paramObject, paramSection);
    readAttributes(paramInputNode, paramObject, paramSection);
    readElements(paramInputNode, paramObject, paramSection);
  }
  
  private void readText(InputNode paramInputNode, Object paramObject, Section paramSection) {
    Label label = paramSection.getText();
    if (label != null)
      readInstance(paramInputNode, paramObject, label); 
  }
  
  private void readUnion(InputNode paramInputNode, Object paramObject, LabelMap paramLabelMap, Label paramLabel) {
    Object object = readInstance(paramInputNode, paramObject, paramLabel);
    paramObject = paramLabel.getPaths();
    int j = paramObject.length;
    int i;
    for (i = 0; i < j; i++)
      paramLabelMap.getLabel((String)paramObject[i]); 
    if (paramLabel.isInline())
      this.criteria.set(paramLabel, object); 
  }
  
  private Object readVariable(InputNode paramInputNode, Object paramObject, Label paramLabel) {
    Converter converter = paramLabel.getConverter(this.context);
    if (paramLabel.isCollection()) {
      Variable variable = this.criteria.get(paramLabel);
      Contact contact = paramLabel.getContact();
      if (variable != null)
        return converter.read(paramInputNode, variable.getValue()); 
      if (paramObject != null) {
        paramObject = contact.get(paramObject);
        if (paramObject != null)
          return converter.read(paramInputNode, paramObject); 
      } 
    } 
    return converter.read(paramInputNode);
  }
  
  private void readVersion(InputNode paramInputNode, Object paramObject, Label paramLabel) {
    Object object = readInstance(paramInputNode, paramObject, paramLabel);
    paramObject = this.type.getType();
    if (object != null) {
      double d = this.context.getVersion((Class)paramObject).revision();
      if (!object.equals(this.revision))
        this.revision.compare(Double.valueOf(d), object); 
    } 
  }
  
  private void readVersion(InputNode paramInputNode, Object paramObject, Schema paramSchema) {
    Label label = paramSchema.getVersion();
    Class clazz = this.type.getType();
    if (label != null) {
      String str = label.getName();
      paramInputNode = (InputNode)paramInputNode.getAttributes().remove(str);
      if (paramInputNode != null) {
        readVersion(paramInputNode, paramObject, label);
        return;
      } 
    } else {
      return;
    } 
    Version version = this.context.getVersion(clazz);
    paramObject = Double.valueOf(this.revision.getDefault());
    double d = version.revision();
    this.criteria.set(label, paramObject);
    this.revision.compare(Double.valueOf(d), paramObject);
  }
  
  private void validate(InputNode paramInputNode, Label paramLabel) {
    Converter converter = paramLabel.getConverter(this.context);
    Position position = paramInputNode.getPosition();
    Class clazz = this.type.getType();
    if (!converter.validate(paramInputNode))
      throw new PersistenceException("Invalid value for %s in %s at %s", new Object[] { paramLabel, clazz, position }); 
    this.criteria.set(paramLabel, null);
  }
  
  private void validate(InputNode paramInputNode, LabelMap paramLabelMap) {
    Position position = paramInputNode.getPosition();
    for (Label label : paramLabelMap) {
      Class clazz = this.type.getType();
      if (label.isRequired() && this.revision.isEqual())
        throw new ValueRequiredException("Unable to satisfy %s for %s at %s", new Object[] { label, clazz, position }); 
    } 
  }
  
  private void validate(InputNode paramInputNode, LabelMap paramLabelMap, Object paramObject) {
    paramObject = this.context.getType(this.type, paramObject);
    Position position = paramInputNode.getPosition();
    for (Label label : paramLabelMap) {
      if (label.isRequired() && this.revision.isEqual())
        throw new ValueRequiredException("Unable to satisfy %s for %s at %s", new Object[] { label, paramObject, position }); 
      Object object = label.getEmpty(this.context);
      if (object != null)
        this.criteria.set(label, object); 
    } 
  }
  
  private boolean validate(InputNode paramInputNode, Class paramClass) {
    Schema schema = this.context.getSchema(paramClass);
    Section section = schema.getSection();
    validateText(paramInputNode, schema);
    validateSection(paramInputNode, section);
    return paramInputNode.isElement();
  }
  
  private void validateAttribute(InputNode paramInputNode, Section paramSection, LabelMap paramLabelMap) {
    Class clazz;
    Position position = paramInputNode.getPosition();
    String str = paramSection.getAttribute(paramInputNode.getName());
    Label label = paramLabelMap.getLabel(str);
    if (label == null) {
      clazz = this.type.getType();
      if (paramLabelMap.isStrict(this.context) && this.revision.isEqual())
        throw new AttributeException("Attribute '%s' does not exist for %s at %s", new Object[] { str, clazz, position }); 
    } else {
      validate((InputNode)clazz, label);
    } 
  }
  
  private void validateAttributes(InputNode paramInputNode, Section paramSection) {
    NodeMap nodeMap = paramInputNode.getAttributes();
    LabelMap labelMap = paramSection.getAttributes();
    Iterator<String> iterator = nodeMap.iterator();
    while (iterator.hasNext()) {
      InputNode inputNode = paramInputNode.getAttribute(iterator.next());
      if (inputNode != null)
        validateAttribute(inputNode, paramSection, labelMap); 
    } 
    validate(paramInputNode, labelMap);
  }
  
  private void validateElement(InputNode paramInputNode, Section paramSection, LabelMap paramLabelMap) {
    Position position;
    String str = paramSection.getPath(paramInputNode.getName());
    Label label2 = paramLabelMap.getLabel(str);
    Label label1 = label2;
    if (label2 == null)
      label1 = this.criteria.resolve(str); 
    if (label1 == null) {
      position = paramInputNode.getPosition();
      Class clazz = this.type.getType();
      if (paramLabelMap.isStrict(this.context) && this.revision.isEqual())
        throw new ElementException("Element '%s' does not exist for %s at %s", new Object[] { str, clazz, position }); 
      paramInputNode.skip();
      return;
    } 
    validateUnion(paramInputNode, paramLabelMap, (Label)position);
  }
  
  private void validateElements(InputNode paramInputNode, Section paramSection) {
    LabelMap labelMap = paramSection.getElements();
    for (InputNode inputNode = paramInputNode.getNext(); inputNode != null; inputNode = paramInputNode.getNext()) {
      Section section = paramSection.getSection(inputNode.getName());
      if (section != null) {
        validateSection(inputNode, section);
      } else {
        validateElement(inputNode, paramSection, labelMap);
      } 
    } 
    validate(paramInputNode, labelMap);
  }
  
  private void validateSection(InputNode paramInputNode, Section paramSection) {
    validateAttributes(paramInputNode, paramSection);
    validateElements(paramInputNode, paramSection);
  }
  
  private void validateText(InputNode paramInputNode, Schema paramSchema) {
    Label label = paramSchema.getText();
    if (label != null)
      validate(paramInputNode, label); 
  }
  
  private void validateUnion(InputNode paramInputNode, LabelMap paramLabelMap, Label paramLabel) {
    String[] arrayOfString = paramLabel.getPaths();
    int j = arrayOfString.length;
    int i;
    for (i = 0; i < j; i++)
      paramLabelMap.getLabel(arrayOfString[i]); 
    if (paramLabel.isInline())
      this.criteria.set(paramLabel, null); 
    validate(paramInputNode, paramLabel);
  }
  
  private void write(OutputNode paramOutputNode, Object paramObject, Schema paramSchema) {
    Section section = paramSchema.getSection();
    writeVersion(paramOutputNode, paramObject, paramSchema);
    writeSection(paramOutputNode, paramObject, section);
  }
  
  private void writeAttribute(OutputNode paramOutputNode, Object paramObject, Label paramLabel) {
    if (paramObject != null)
      paramLabel.getDecorator().decorate(paramOutputNode.setAttribute(paramLabel.getName(), this.factory.getText(paramObject))); 
  }
  
  private void writeAttributes(OutputNode paramOutputNode, Object paramObject, Section paramSection) {
    for (Label label : paramSection.getAttributes()) {
      Object object2 = label.getContact().get(paramObject);
      Class clazz = this.context.getType(this.type, paramObject);
      Object object1 = object2;
      if (object2 == null)
        object1 = label.getEmpty(this.context); 
      if (object1 == null && label.isRequired())
        throw new AttributeException("Value for %s is null in %s", new Object[] { label, clazz }); 
      writeAttribute(paramOutputNode, object1, label);
    } 
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, Converter paramConverter) {
    paramConverter.write(paramOutputNode, paramObject);
  }
  
  private void writeElement(OutputNode paramOutputNode, Object paramObject, Label paramLabel) {
    if (paramObject != null) {
      Class<?> clazz = paramObject.getClass();
      Label label = paramLabel.getLabel(clazz);
      String str = label.getName();
      Type type = paramLabel.getType(clazz);
      paramOutputNode = paramOutputNode.getChild(str);
      if (!label.isInline())
        writeNamespaces(paramOutputNode, type, label); 
      if (label.isInline() || !isOverridden(paramOutputNode, paramObject, type)) {
        Converter converter = label.getConverter(this.context);
        paramOutputNode.setData(label.isData());
        writeElement(paramOutputNode, paramObject, converter);
      } 
    } 
  }
  
  private void writeElements(OutputNode paramOutputNode, Object paramObject, Section paramSection) {
    for (String str : paramSection) {
      Section section = paramSection.getSection(str);
      if (section != null) {
        writeSection(paramOutputNode.getChild(str), paramObject, section);
        continue;
      } 
      Label label = paramSection.getElement(paramSection.getPath(str));
      Class clazz = this.context.getType(this.type, paramObject);
      if (this.criteria.get(label) == null) {
        if (label == null)
          throw new ElementException("Element '%s' not defined in %s", new Object[] { str, clazz }); 
        writeUnion(paramOutputNode, paramObject, paramSection, label);
      } 
    } 
  }
  
  private void writeNamespaces(OutputNode paramOutputNode, Type paramType, Label paramLabel) {
    Class clazz = paramType.getType();
    Decorator decorator = this.context.getDecorator(clazz);
    paramLabel.getDecorator().decorate(paramOutputNode, decorator);
  }
  
  private Object writeReplace(Object<?> paramObject) {
    Object<?> object = paramObject;
    if (paramObject != null) {
      object = (Object<?>)paramObject.getClass();
      object = (Object<?>)this.context.getCaller((Class)object).replace(paramObject);
    } 
    return object;
  }
  
  private void writeSection(OutputNode paramOutputNode, Object paramObject, Section paramSection) {
    NamespaceMap namespaceMap = paramOutputNode.getNamespaces();
    String str = paramSection.getPrefix();
    if (str != null) {
      String str1 = namespaceMap.getReference(str);
      if (str1 == null)
        throw new ElementException("Namespace prefix '%s' in %s is not in scope", new Object[] { str, this.type }); 
      paramOutputNode.setReference(str1);
    } 
    writeAttributes(paramOutputNode, paramObject, paramSection);
    writeElements(paramOutputNode, paramObject, paramSection);
    writeText(paramOutputNode, paramObject, paramSection);
  }
  
  private void writeText(OutputNode paramOutputNode, Object paramObject, Label paramLabel) {
    if (paramObject != null && !paramLabel.isTextList()) {
      paramObject = this.factory.getText(paramObject);
      paramOutputNode.setData(paramLabel.isData());
      paramOutputNode.setValue((String)paramObject);
    } 
  }
  
  private void writeText(OutputNode paramOutputNode, Object paramObject, Section paramSection) {
    Label label = paramSection.getText();
    if (label != null) {
      Object object = label.getContact().get(paramObject);
      Class clazz = this.context.getType(this.type, paramObject);
      paramObject = object;
      if (object == null)
        paramObject = label.getEmpty(this.context); 
      if (paramObject == null && label.isRequired())
        throw new TextException("Value for %s is null in %s", new Object[] { label, clazz }); 
      writeText(paramOutputNode, paramObject, label);
    } 
  }
  
  private void writeUnion(OutputNode paramOutputNode, Object paramObject, Section paramSection, Label paramLabel) {
    Object object = paramLabel.getContact().get(paramObject);
    paramObject = this.context.getType(this.type, paramObject);
    if (object == null && paramLabel.isRequired())
      throw new ElementException("Value for %s is null in %s", new Object[] { paramLabel, paramObject }); 
    paramObject = writeReplace(object);
    if (paramObject != null)
      writeElement(paramOutputNode, paramObject, paramLabel); 
    this.criteria.set(paramLabel, paramObject);
  }
  
  private void writeVersion(OutputNode paramOutputNode, Object paramObject, Schema paramSchema) {
    paramObject = paramSchema.getRevision();
    Label label = paramSchema.getVersion();
    if (paramObject != null) {
      double d = this.revision.getDefault();
      paramObject = Double.valueOf(paramObject.revision());
      if (this.revision.compare(paramObject, Double.valueOf(d))) {
        if (label.isRequired())
          writeAttribute(paramOutputNode, paramObject, label); 
        return;
      } 
    } else {
      return;
    } 
    writeAttribute(paramOutputNode, paramObject, label);
  }
  
  public Object read(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    Class clazz = instance.getType();
    return instance.isReference() ? instance.getInstance() : (this.context.isPrimitive(clazz) ? readPrimitive(paramInputNode, instance) : read(paramInputNode, instance, clazz));
  }
  
  public Object read(InputNode paramInputNode, Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    Schema schema = this.context.getSchema(clazz);
    Caller caller = schema.getCaller();
    read(paramInputNode, paramObject, schema);
    this.criteria.commit(paramObject);
    caller.validate(paramObject);
    caller.commit(paramObject);
    return readResolve(paramInputNode, paramObject, caller);
  }
  
  public boolean validate(InputNode paramInputNode) {
    Instance instance = this.factory.getInstance(paramInputNode);
    if (!instance.isReference()) {
      instance.setInstance(null);
      return validate(paramInputNode, instance.getType());
    } 
    return true;
  }
  
  public void write(OutputNode paramOutputNode, Object paramObject) {
    Class<?> clazz = paramObject.getClass();
    Schema schema = this.context.getSchema(clazz);
    Caller caller = schema.getCaller();
    try {
      if (schema.isPrimitive()) {
        this.primitive.write(paramOutputNode, paramObject);
      } else {
        caller.persist(paramObject);
        write(paramOutputNode, paramObject, schema);
      } 
      return;
    } finally {
      caller.complete(paramObject);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\Composite.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */