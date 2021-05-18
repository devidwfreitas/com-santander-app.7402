.class Lorg/dom4j/io/PruningElementStack;
.super Lorg/dom4j/io/ElementStack;
.source "SourceFile"


# instance fields
.field private elementHandler:Lorg/dom4j/ElementHandler;

.field private matchingElementIndex:I

.field private path:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/dom4j/io/ElementStack;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    .line 48
    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    .line 49
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/dom4j/ElementHandler;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p3}, Lorg/dom4j/io/ElementStack;-><init>(I)V

    .line 54
    iput-object p1, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    .line 56
    invoke-direct {p0}, Lorg/dom4j/io/PruningElementStack;->checkPath()V

    .line 57
    return-void
.end method

.method private checkPath()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid path of length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it must be greater than 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    .line 118
    return-void
.end method


# virtual methods
.method protected pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->elementHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v0, p0}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    .line 93
    invoke-interface {p1, p2}, Lorg/dom4j/Element;->remove(Lorg/dom4j/Element;)Z

    .line 94
    return-void
.end method

.method public popElement()Lorg/dom4j/Element;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 62
    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    iget v1, p0, Lorg/dom4j/io/PruningElementStack;->matchingElementIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-ltz v0, :cond_0

    .line 69
    iget v0, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v3, v0}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    move-object v1, v2

    :goto_0
    iget v4, p0, Lorg/dom4j/io/PruningElementStack;->lastElementIndex:I

    if-gt v0, v4, :cond_2

    .line 73
    iget-object v1, p0, Lorg/dom4j/io/PruningElementStack;->stack:[Lorg/dom4j/Element;

    aget-object v1, v1, v0

    .line 75
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/PruningElementStack;->validElement(Lorg/dom4j/Element;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 82
    :goto_1
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/io/PruningElementStack;->pathMatches(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    .line 88
    :cond_0
    return-object v3

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method protected validElement(Lorg/dom4j/Element;I)Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/dom4j/io/PruningElementStack;->path:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 98
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
