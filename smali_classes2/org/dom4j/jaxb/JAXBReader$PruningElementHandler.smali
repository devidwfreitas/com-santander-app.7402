.class Lorg/dom4j/jaxb/JAXBReader$PruningElementHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# instance fields
.field final synthetic this$0:Lorg/dom4j/jaxb/JAXBReader;


# direct methods
.method public constructor <init>(Lorg/dom4j/jaxb/JAXBReader;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBReader$PruningElementHandler;->this$0:Lorg/dom4j/jaxb/JAXBReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method


# virtual methods
.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 1

    .prologue
    .line 333
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 336
    return-void
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method
