.class Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/ElementMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/ElementMap;Ljava/lang/reflect/Constructor;I)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterContact;-><init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V

    .line 235
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
