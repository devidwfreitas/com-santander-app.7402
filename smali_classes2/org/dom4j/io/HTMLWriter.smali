.class public Lorg/dom4j/io/HTMLWriter;
.super Lorg/dom4j/io/XMLWriter;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lineSeparator:Ljava/lang/String;


# instance fields
.field private formatStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/dom4j/io/HTMLWriter$FormatState;",
            ">;"
        }
    .end annotation
.end field

.field private lastText:Ljava/lang/String;

.field private newLineAfterNTags:I

.field private omitElementCloseSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preformattedTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagsOuput:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    .line 181
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    const-string v1, "TEXTAREA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    const-string v1, "  "

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/OutputFormat;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    .line 192
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 193
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 194
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_HTML_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 213
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 200
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->DEFAULT_PREFORMATTED_TAGS:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 221
    return-void
.end method

.method private internalGetOmitElementCloseSet()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 347
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->loadOmitElementCloseSet(Ljava/util/Set;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    return-object v0
.end method

.method private justSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 618
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 619
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 622
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 625
    packed-switch v3, :pswitch_data_0

    .line 632
    :pswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 622
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 625
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private lazyInitNewLinesAfterNTags()V
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getNewLineAfterNTags()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    goto :goto_0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v0, v1}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 711
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 712
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    .line 713
    invoke-virtual {v1, p1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 714
    invoke-virtual {v1, p2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 715
    invoke-virtual {v1, p3}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    .line 716
    invoke-virtual {v1, p4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    .line 718
    new-instance v2, Lorg/dom4j/io/HTMLWriter;

    invoke-direct {v2, v0, v1}, Lorg/dom4j/io/HTMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 719
    invoke-static {p0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 720
    invoke-virtual {v2, v1}, Lorg/dom4j/io/HTMLWriter;->write(Lorg/dom4j/Document;)V

    .line 721
    invoke-virtual {v2}, Lorg/dom4j/io/HTMLWriter;->flush()V

    .line 723
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrintXHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 686
    const/4 v0, 0x0

    invoke-static {p0, v1, v1, v1, v0}, Lorg/dom4j/io/HTMLWriter;->prettyPrintHTML(Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public endCDATA()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public getOmitElementCloseSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getPreformattedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isPreformattedTag(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadOmitElementCloseSet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    const-string v0, "AREA"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v0, "BASE"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v0, "BR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v0, "COL"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v0, "HR"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v0, "IMG"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v0, "INPUT"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v0, "LINK"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v0, "META"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v0, "P"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v0, "PARAM"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method protected omitElementClose(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->internalGetOmitElementCloseSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setOmitElementCloseSet(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 401
    if-eqz p1, :cond_1

    .line 402
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    .line 403
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->omitElementCloseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_1
    return-void
.end method

.method public setPreformattedTags(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    .line 521
    if-eqz p1, :cond_1

    .line 522
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    if-eqz v0, :cond_0

    .line 524
    iget-object v2, p0, Lorg/dom4j/io/HTMLWriter;->preformattedTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    .line 253
    :goto_0
    sget-object v0, Lorg/dom4j/NodeType;->CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 254
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected writeDeclaration()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 7

    .prologue
    .line 557
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 558
    invoke-direct {p0}, Lorg/dom4j/io/HTMLWriter;->lazyInitNewLinesAfterNTags()V

    .line 561
    :cond_0
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    if-lez v0, :cond_1

    .line 562
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    iget v1, p0, Lorg/dom4j/io/HTMLWriter;->newLineAfterNTags:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    sget-object v1, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 567
    :cond_1
    iget v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/HTMLWriter;->tagsOuput:I

    .line 569
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 571
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    .line 573
    invoke-virtual {p0, v0}, Lorg/dom4j/io/HTMLWriter;->isPreformattedTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v2

    .line 575
    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    .line 576
    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v3

    .line 577
    invoke-virtual {v2}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v4

    .line 581
    iget-object v5, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    new-instance v6, Lorg/dom4j/io/HTMLWriter$FormatState;

    invoke-direct {v6, p0, v0, v3, v4}, Lorg/dom4j/io/HTMLWriter$FormatState;-><init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 587
    :try_start_0
    invoke-super {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 589
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 595
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-direct {p0, v1}, Lorg/dom4j/io/HTMLWriter;->justSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 601
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 602
    const-string v0, ""

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 605
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 608
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 609
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 610
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 607
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/HTMLWriter$FormatState;

    .line 608
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isNewlines()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 609
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->isTrimText()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 610
    invoke-virtual {v0}, Lorg/dom4j/io/HTMLWriter$FormatState;->getIndent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    .line 611
    throw v1

    .line 613
    :cond_3
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    goto :goto_0
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/dom4j/io/HTMLWriter;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isXHTML()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " />"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0, p1}, Lorg/dom4j/io/HTMLWriter;->omitElementClose(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lorg/dom4j/NodeType;->ENTITY_REFERENCE_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 260
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget-object v0, Lorg/dom4j/io/HTMLWriter;->lineSeparator:Ljava/lang/String;

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter;->lastText:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter;->formatStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-super {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
