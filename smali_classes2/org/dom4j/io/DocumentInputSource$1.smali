.class Lorg/dom4j/io/DocumentInputSource$1;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/dom4j/io/DocumentInputSource;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lorg/dom4j/io/DocumentInputSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource$1;->this$0:Lorg/dom4j/io/DocumentInputSource;

    iput-object p2, p0, Lorg/dom4j/io/DocumentInputSource$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public read([CII)I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/dom4j/io/DocumentInputSource$1;->val$e:Ljava/io/IOException;

    throw v0
.end method
