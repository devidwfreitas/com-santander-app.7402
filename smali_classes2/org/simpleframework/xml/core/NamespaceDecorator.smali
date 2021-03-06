.class Lorg/simpleframework/xml/core/NamespaceDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Decorator;


# instance fields
.field private primary:Lorg/simpleframework/xml/Namespace;

.field private scope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/Namespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    .line 60
    return-void
.end method

.method private namespace(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    invoke-interface {v0}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private scope(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 4

    .prologue
    .line 129
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Namespace;

    .line 132
    invoke-interface {v0}, Lorg/simpleframework/xml/Namespace;->reference()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-interface {v0}, Lorg/simpleframework/xml/Namespace;->prefix()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-interface {v1, v3, v0}, Lorg/simpleframework/xml/stream/NamespaceMap;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/simpleframework/xml/Namespace;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/NamespaceDecorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    .line 99
    return-void
.end method

.method public decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V
    .locals 0

    .prologue
    .line 113
    if-eqz p2, :cond_0

    .line 114
    invoke-interface {p2, p1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->scope(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 117
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->namespace(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 118
    return-void
.end method

.method public set(Lorg/simpleframework/xml/Namespace;)V
    .locals 0

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/NamespaceDecorator;->add(Lorg/simpleframework/xml/Namespace;)V

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/simpleframework/xml/core/NamespaceDecorator;->primary:Lorg/simpleframework/xml/Namespace;

    .line 75
    return-void
.end method
