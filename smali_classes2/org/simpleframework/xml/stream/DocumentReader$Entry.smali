.class Lorg/simpleframework/xml/stream/DocumentReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "SourceFile"


# instance fields
.field private final node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    .line 289
    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    .line 290
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReserved()Z
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 351
    if-eqz v0, :cond_0

    .line 352
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
