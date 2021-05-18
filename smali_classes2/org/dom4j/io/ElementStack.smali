.class Lorg/dom4j/io/ElementStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/ElementPath;


# instance fields
.field private handler:Lorg/dom4j/io/DispatchHandler;

.field protected lastElementIndex:I

.field protected stack:[Lorg/dom4j/Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/dom4j/io/ElementStack;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    .line 43
    new-array v0, p1, [Lorg/dom4j/Element;

    iput-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 44
    return-void
.end method

.method private getHandlerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/ElementStack;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 172
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :goto_0
    return-object p1

    .line 174
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {p0, p1}, Lorg/dom4j/io/ElementStack;->getHandlerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 148
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    .line 60
    return-void
.end method

.method public containsHandler(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->containsHandler(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCurrent()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/dom4j/io/ElementStack;->peekElement()Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getElement(I)Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/ElementStack;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekElement()Lorg/dom4j/Element;
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-gez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public popElement()Lorg/dom4j/Element;
    .locals 3

    .prologue
    .line 82
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-gez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public pushElement(Lorg/dom4j/Element;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    array-length v0, v0

    .line 97
    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    if-lt v1, v0, :cond_0

    .line 98
    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/dom4j/io/ElementStack;->reallocate(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    iget v1, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    aput-object p1, v0, v1

    .line 102
    return-void
.end method

.method protected reallocate(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 111
    new-array v1, p1, [Lorg/dom4j/Element;

    iput-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    .line 112
    iget-object v1, p0, Lorg/dom4j/io/ElementStack;->stack:[Lorg/dom4j/Element;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {p0, p1}, Lorg/dom4j/io/ElementStack;->getHandlerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 152
    return-void
.end method

.method public setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/dom4j/io/ElementStack;->handler:Lorg/dom4j/io/DispatchHandler;

    .line 48
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/dom4j/io/ElementStack;->lastElementIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
