.class Lorg/simpleframework/xml/core/ElementMapParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "SourceFile"


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/ElementMap;Lorg/simpleframework/xml/stream/Format;I)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-direct {v0, p2, p1, p4}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;-><init>(Lorg/simpleframework/xml/ElementMap;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/ElementMapLabel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-direct {v0, v1, p2, p3}, Lorg/simpleframework/xml/core/ElementMapLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 93
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->path:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->type:Ljava/lang/Class;

    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->name:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->key:Ljava/lang/Object;

    .line 97
    iput p4, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->index:I

    .line 98
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter;->contact:Lorg/simpleframework/xml/core/ElementMapParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
