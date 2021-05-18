.class Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/io/ElementModifier;


# instance fields
.field private jaxbModifier:Lorg/dom4j/jaxb/JAXBModifier;

.field private objectModifier:Lorg/dom4j/jaxb/JAXBObjectModifier;

.field final synthetic this$0:Lorg/dom4j/jaxb/JAXBModifier;


# direct methods
.method public constructor <init>(Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBObjectModifier;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->this$0:Lorg/dom4j/jaxb/JAXBModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->jaxbModifier:Lorg/dom4j/jaxb/JAXBModifier;

    .line 402
    iput-object p3, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->objectModifier:Lorg/dom4j/jaxb/JAXBObjectModifier;

    .line 403
    return-void
.end method


# virtual methods
.method public modifyElement(Lorg/dom4j/Element;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->jaxbModifier:Lorg/dom4j/jaxb/JAXBModifier;

    invoke-virtual {v0, p1}, Lorg/dom4j/jaxb/JAXBModifier;->unmarshal(Lorg/dom4j/Element;)Ljavax/xml/bind/Element;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->objectModifier:Lorg/dom4j/jaxb/JAXBObjectModifier;

    invoke-interface {v1, v0}, Lorg/dom4j/jaxb/JAXBObjectModifier;->modifyObject(Ljavax/xml/bind/Element;)Ljavax/xml/bind/Element;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;->jaxbModifier:Lorg/dom4j/jaxb/JAXBModifier;

    invoke-virtual {v1, v0}, Lorg/dom4j/jaxb/JAXBModifier;->marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method
