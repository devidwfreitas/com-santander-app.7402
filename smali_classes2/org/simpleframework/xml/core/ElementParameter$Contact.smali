.class Lorg/simpleframework/xml/core/ElementParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Element;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/Element;Ljava/lang/reflect/Constructor;I)V
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
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/Element;

    invoke-interface {v0}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
