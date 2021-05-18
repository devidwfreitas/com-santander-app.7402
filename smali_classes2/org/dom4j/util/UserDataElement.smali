.class public Lorg/dom4j/util/UserDataElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->clone()Lorg/dom4j/util/UserDataElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/dom4j/tree/AbstractNode;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->clone()Lorg/dom4j/util/UserDataElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/dom4j/tree/DefaultElement;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->clone()Lorg/dom4j/util/UserDataElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/dom4j/util/UserDataElement;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lorg/dom4j/tree/DefaultElement;->clone()Lorg/dom4j/tree/DefaultElement;

    move-result-object v0

    check-cast v0, Lorg/dom4j/util/UserDataElement;

    .line 56
    if-eq v0, p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    .line 60
    :cond_0
    return-object v0
.end method

.method protected createElement(Ljava/lang/String;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    .line 81
    return-object v0
.end method

.method protected createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lorg/dom4j/util/UserDataElement;->getCopyOfUserData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setData(Ljava/lang/Object;)V

    .line 88
    return-object v0
.end method

.method protected getCopyOfUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/dom4j/tree/DefaultElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/util/UserDataElement;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
