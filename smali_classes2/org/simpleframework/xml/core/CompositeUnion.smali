.class Lorg/simpleframework/xml/core/CompositeUnion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final group:Lorg/simpleframework/xml/core/Group;

.field private final path:Lorg/simpleframework/xml/core/Expression;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Group;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 76
    iput-object p1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    .line 77
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    .line 78
    iput-object p4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 79
    iput-object p3, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    .line 80
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 176
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 97
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 99
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 115
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 118
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2

    .prologue
    .line 135
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->path:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 138
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 140
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Group;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 157
    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lorg/simpleframework/xml/core/UnionException;

    const-string v2, "Value of %s not declared in %s with annotation %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeUnion;->group:Lorg/simpleframework/xml/core/Group;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 160
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/CompositeUnion;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 161
    return-void
.end method
