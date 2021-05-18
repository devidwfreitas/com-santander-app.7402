.class public Lmxj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 81
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    invoke-interface {v0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 35
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Node;

    .line 41
    instance-of v1, v0, Lorg/dom4j/Element;

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    check-cast v0, Lorg/dom4j/Element;

    invoke-static {v0, v1, p2}, Lmxj;->a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "Error"

    invoke-virtual {v0}, Lorg/dom4j/DocumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method private static a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/dom4j/Element;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v1, Lmxk;

    invoke-direct {v1}, Lmxk;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 68
    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-static {v0, p1, p2}, Lmxj;->a(Lorg/dom4j/Element;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method
