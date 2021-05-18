.class Lorg/dom4j/io/HTMLWriter$FormatState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private indent:Ljava/lang/String;

.field private newlines:Z

.field final synthetic this$0:Lorg/dom4j/io/HTMLWriter;

.field private trimText:Z


# direct methods
.method public constructor <init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 735
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->this$0:Lorg/dom4j/io/HTMLWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    .line 732
    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    .line 733
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    .line 736
    iput-boolean p2, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    .line 737
    iput-boolean p3, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    .line 738
    iput-object p4, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    .line 739
    return-void
.end method


# virtual methods
.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public isNewlines()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    return v0
.end method

.method public isTrimText()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    return v0
.end method
