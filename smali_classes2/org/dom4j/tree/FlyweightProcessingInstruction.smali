.class public Lorg/dom4j/tree/FlyweightProcessingInstruction;
.super Lorg/dom4j/tree/AbstractProcessingInstruction;
.source "SourceFile"


# instance fields
.field protected target:Ljava/lang/String;

.field protected text:Ljava/lang/String;

.field protected values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->parseValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/dom4j/tree/AbstractProcessingInstruction;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    .line 63
    invoke-virtual {p0, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method protected createXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lorg/dom4j/tree/DefaultProcessingInstruction;

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/dom4j/tree/FlyweightProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/dom4j/tree/DefaultProcessingInstruction;-><init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    if-nez v0, :cond_0

    .line 98
    const-string v0, ""

    .line 101
    :cond_0
    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/dom4j/tree/FlyweightProcessingInstruction;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This PI is read-only and cannot be modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
