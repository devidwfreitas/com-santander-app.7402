.class Lorg/simpleframework/xml/core/ElementListUnionLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "SourceFile"


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private extractor:Lorg/simpleframework/xml/core/GroupExtractor;

.field private label:Lorg/simpleframework/xml/core/Label;

.field private path:Lorg/simpleframework/xml/core/Expression;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementListUnion;Lorg/simpleframework/xml/ElementList;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/ElementListLabel;

    invoke-direct {v0, p1, p3, p4}, Lorg/simpleframework/xml/core/ElementListLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementList;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    .line 79
    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v0, p1, p2, p4}, Lorg/simpleframework/xml/core/GroupExtractor;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    .line 80
    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 81
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 161
    if-nez v1, :cond_0

    .line 162
    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Union %s was not declared on a field or method"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 164
    :cond_0
    new-instance v2, Lorg/simpleframework/xml/core/CompositeListUnion;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/simpleframework/xml/core/CompositeListUnion;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementListUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public isCollection()Z
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isTextList()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->isTextList()Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
