.class Lorg/simpleframework/xml/core/PrimitiveArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/ArrayFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    .line 95
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 96
    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 99
    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .locals 2

    .prologue
    .line 184
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    goto :goto_0
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 228
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v0, v1

    .line 136
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    .line 137
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    .line 139
    if-nez v4, :cond_0

    .line 140
    return-object p2

    .line 142
    :cond_0
    if-lt v0, v2, :cond_1

    .line 143
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string v2, "Array length missing or incorrect for %s at %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 145
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, v4}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v0, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 166
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 204
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 206
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 207
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 209
    if-nez v2, :cond_1

    .line 214
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0, v2, p2, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
