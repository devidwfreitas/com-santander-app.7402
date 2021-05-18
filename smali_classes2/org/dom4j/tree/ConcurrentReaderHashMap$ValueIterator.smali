.class public Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;
.super Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;


# direct methods
.method protected constructor <init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;->this$0:Lorg/dom4j/tree/ConcurrentReaderHashMap;

    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-void
.end method


# virtual methods
.method protected returnValueOfNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;->currentValue:Ljava/lang/Object;

    return-object v0
.end method
