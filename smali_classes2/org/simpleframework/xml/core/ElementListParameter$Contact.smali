.class Lorg/simpleframework/xml/core/ElementListParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/ElementList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/ElementList;Ljava/lang/reflect/Constructor;I)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    .line 233
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementListParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/ElementList;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementList;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
