.class Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iter:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/dom4j/io/STAXEventWriter;


# direct methods
.method public constructor <init>(Lorg/dom4j/io/STAXEventWriter;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;->this$0:Lorg/dom4j/io/STAXEventWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;->iter:Ljava/util/Iterator;

    .line 540
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    .line 548
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 551
    iget-object v2, p0, Lorg/dom4j/io/STAXEventWriter$NamespaceIterator;->this$0:Lorg/dom4j/io/STAXEventWriter;

    invoke-static {v2}, Lorg/dom4j/io/STAXEventWriter;->access$000(Lorg/dom4j/io/STAXEventWriter;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 555
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
