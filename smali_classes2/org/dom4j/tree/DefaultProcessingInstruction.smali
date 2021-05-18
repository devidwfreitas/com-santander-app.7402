.class public Lorg/dom4j/tree/DefaultProcessingInstruction;
.super Lorg/dom4j/tree/FlyweightProcessingInstruction;
.source "SourceFile"


# instance fields
.field private parent:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/FlyweightProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lorg/dom4j/tree/FlyweightProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->parent:Lorg/dom4j/Element;

    .line 67
    return-void
.end method


# virtual methods
.method public getParent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->parent:Lorg/dom4j/Element;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public setParent(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->parent:Lorg/dom4j/Element;

    .line 99
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->target:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->text:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultProcessingInstruction;->parseValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->values:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setValues(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->values:Ljava/util/Map;

    .line 83
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/DefaultProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/DefaultProcessingInstruction;->text:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public supportsParent()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method
