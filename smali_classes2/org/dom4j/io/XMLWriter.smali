.class public Lorg/dom4j/io/XMLWriter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

.field private static final PAD_TEXT:Ljava/lang/String; = " "


# instance fields
.field private autoFlush:Z

.field private buffer:Ljava/lang/StringBuffer;

.field private charsAdded:Z

.field private escapeText:Z

.field private format:Lorg/dom4j/io/OutputFormat;

.field private inDTD:Z

.field private indentLevel:I

.field private lastChar:C

.field private lastElementClosed:Z

.field protected lastOutputNodeType:Lorg/dom4j/NodeType;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private maximumAllowedCharacter:I

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;

.field private namespacesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected preserve:Z

.field private resolveEntityRefs:Z

.field private showCommentsInDTDs:Z

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    sput-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 57
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 74
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 84
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 94
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 100
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 110
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 158
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 159
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 160
    iput-boolean v3, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 161
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 57
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 74
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 84
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 94
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 100
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 110
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 165
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 166
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 167
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 168
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/dom4j/io/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 57
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 74
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 84
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 94
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 100
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 110
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 173
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 174
    invoke-virtual {p2}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 175
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 176
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/dom4j/io/XMLWriter;->DEFAULT_FORMAT:Lorg/dom4j/io/OutputFormat;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 57
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 74
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 84
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 94
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 100
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 110
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 152
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 153
    iput-object p2, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 154
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 57
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 69
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 74
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 84
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 94
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 100
    iput v1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    .line 110
    iput-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 180
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    .line 181
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 182
    iput-boolean v2, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 183
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 184
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    .prologue
    .line 688
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_7

    .line 702
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 705
    :goto_1
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 706
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    sget-object v2, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-nez v0, :cond_3

    .line 707
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 716
    :cond_2
    :goto_2
    const-string v0, ""

    .line 717
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 719
    :goto_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 720
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 722
    const-string v0, " "

    goto :goto_3

    .line 708
    :cond_3
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    if-eqz v0, :cond_4

    iget-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0

    .line 710
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    sget-object v2, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-char v0, p1, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 725
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 728
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 729
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    iput-char v0, p0, Lorg/dom4j/io/XMLWriter;->lastChar:C

    .line 730
    sget-object v0, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 732
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 274
    return-void
.end method

.method public comment([CII)V
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->showCommentsInDTDs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    if-nez v0, :cond_1

    .line 849
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 850
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 859
    :cond_2
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 1506
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method protected defaultMaximumAllowedCharacter()I
    .locals 2

    .prologue
    .line 1777
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1779
    if-eqz v0, :cond_0

    .line 1780
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    const/16 v0, 0x7f

    .line 1786
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public endCDATA()V
    .locals 2

    .prologue
    .line 818
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 826
    :cond_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public endDTD()V
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 799
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 802
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 605
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->endDocument()V

    .line 607
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 659
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 661
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 663
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 671
    :cond_0
    invoke-virtual {p0, p3}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 676
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 679
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 844
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 628
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->endPrefixMapping(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method protected escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1668
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v6

    .line 1673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v1, v4

    move v5, v4

    move-object v0, v3

    .line 1675
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1677
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1679
    sparse-switch v2, :sswitch_data_0

    .line 1720
    const/16 v8, 0x20

    if-lt v2, v8, :cond_0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1721
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1727
    :goto_1
    if-eqz v2, :cond_6

    .line 1728
    if-nez v0, :cond_1

    .line 1729
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1732
    :cond_1
    iget-object v8, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v9, v5, v1

    invoke-virtual {v8, v0, v1, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1733
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    add-int/lit8 v1, v5, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 1675
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v10, v0

    move-object v0, v1

    move v1, v10

    goto :goto_0

    .line 1681
    :sswitch_0
    const-string v2, "&lt;"

    goto :goto_1

    .line 1686
    :sswitch_1
    const-string v2, "&gt;"

    goto :goto_1

    .line 1692
    :sswitch_2
    const/16 v2, 0x27

    if-ne v6, v2, :cond_7

    .line 1693
    const-string v2, "&apos;"

    goto :goto_1

    .line 1700
    :sswitch_3
    const/16 v2, 0x22

    if-ne v6, v2, :cond_7

    .line 1701
    const-string v2, "&quot;"

    goto :goto_1

    .line 1707
    :sswitch_4
    const-string v2, "&amp;"

    goto :goto_1

    :sswitch_5
    move-object v2, v3

    .line 1716
    goto :goto_1

    .line 1738
    :cond_2
    if-nez v1, :cond_3

    .line 1753
    :goto_3
    return-object p1

    .line 1742
    :cond_3
    if-ge v1, v7, :cond_5

    .line 1743
    if-nez v0, :cond_4

    .line 1744
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1747
    :cond_4
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v3, v5, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1750
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1751
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_6
    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_7
    move-object v2, v3

    goto :goto_1

    .line 1679
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_3
        0x26 -> :sswitch_4
        0x27 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1578
    .line 1581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v1, v4

    move v5, v4

    move-object v0, v3

    .line 1583
    :goto_0
    if-ge v5, v6, :cond_2

    .line 1585
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1587
    sparse-switch v2, :sswitch_data_0

    .line 1616
    const/16 v7, 0x20

    if-lt v2, v7, :cond_0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->shouldEncodeChar(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1617
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    :goto_1
    if-eqz v2, :cond_6

    .line 1624
    if-nez v0, :cond_1

    .line 1625
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1628
    :cond_1
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v8, v5, v1

    invoke-virtual {v7, v0, v1, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1629
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1630
    add-int/lit8 v1, v5, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 1583
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto :goto_0

    .line 1589
    :sswitch_0
    const-string v2, "&lt;"

    goto :goto_1

    .line 1594
    :sswitch_1
    const-string v2, "&gt;"

    goto :goto_1

    .line 1599
    :sswitch_2
    const-string v2, "&amp;"

    goto :goto_1

    .line 1608
    :sswitch_3
    iget-boolean v7, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-eqz v7, :cond_7

    .line 1609
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1634
    :cond_2
    if-nez v1, :cond_3

    .line 1649
    :goto_3
    return-object p1

    .line 1638
    :cond_3
    if-ge v1, v6, :cond_5

    .line 1639
    if-nez v0, :cond_4

    .line 1640
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1643
    :cond_4
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    sub-int v3, v5, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1646
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1647
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3

    :cond_6
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_2

    :cond_7
    move-object v2, v3

    goto :goto_1

    .line 1587
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 265
    return-void
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getMaximumAllowedCharacter()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->defaultMaximumAllowedCharacter()I

    move-result v0

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    .line 242
    :cond_0
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    return v0
.end method

.method protected getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 564
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 565
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    .line 570
    :goto_1
    return-object v0

    .line 564
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected handleException(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 1804
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 742
    return-void
.end method

.method protected indent()V
    .locals 3

    .prologue
    .line 1474
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getIndent()Ljava/lang/String;

    move-result-object v1

    .line 1476
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1477
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    if-ge v0, v2, :cond_0

    .line 1478
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :cond_0
    return-void
.end method

.method protected installLexicalHandler()V
    .locals 3

    .prologue
    .line 1308
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 1310
    if-nez v1, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No parent for filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1317
    :try_start_0
    sget-object v2, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :cond_1
    return-void

    .line 1322
    :catch_0
    move-exception v2

    .line 1315
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected final isElementSpacePreserved(Lorg/dom4j/Element;)Z
    .locals 3

    .prologue
    .line 948
    const-string v0, "space"

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 949
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 951
    if-eqz v1, :cond_0

    .line 952
    const-string v0, "xml"

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "preserve"

    invoke-interface {v1}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    const/4 v0, 0x1

    .line 960
    :cond_0
    :goto_0
    return v0

    .line 956
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscapeText()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    return v0
.end method

.method protected isExpandEmptyElements()Z
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    return v0
.end method

.method protected isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z
    .locals 1

    .prologue
    .line 1790
    if-eqz p1, :cond_0

    sget-object v0, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq p1, v0, :cond_0

    .line 1791
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1793
    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    const/4 v0, 0x1

    .line 1800
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 769
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->installLexicalHandler()V

    .line 544
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    .line 545
    return-void
.end method

.method public println()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 748
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 749
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 755
    sget-object v0, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 757
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public resolveEntityRefs()Z
    .locals 1

    .prologue
    .line 1822
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    return v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 591
    return-void
.end method

.method public setEscapeText(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    .line 217
    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 228
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 2

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null lexical handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 579
    return-void
.end method

.method public setMaximumAllowedCharacter(I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lorg/dom4j/io/XMLWriter;->maximumAllowedCharacter:I

    .line 256
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->createWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 195
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 550
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    sget-object v1, Lorg/dom4j/io/XMLWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/dom4j/io/XMLWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 559
    :goto_1
    return-void

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setResolveEntityRefs(Z)V
    .locals 0

    .prologue
    .line 1826
    iput-boolean p1, p0, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs:Z

    .line 1827
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    .line 189
    return-void
.end method

.method protected shouldEncodeChar(C)Z
    .locals 1

    .prologue
    .line 1764
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->getMaximumAllowedCharacter()I

    move-result v0

    .line 1766
    if-lez v0, :cond_0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 2

    .prologue
    .line 806
    :try_start_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 814
    :cond_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->inDTD:Z

    .line 786
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/dom4j/io/XMLWriter;->writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 596
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 597
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 635
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->charsAdded:Z

    .line 637
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 638
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 639
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeNamespaces()V

    .line 642
    invoke-virtual {p0, p4}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    .line 643
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 644
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 645
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->lastElementClosed:Z

    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 830
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 838
    :cond_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->handleException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    .line 622
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 775
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public write(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 495
    instance-of v0, p1, Lorg/dom4j/Node;

    if-eqz v0, :cond_1

    .line 496
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Node;)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 498
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 500
    check-cast p1, Ljava/util/List;

    .line 502
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 503
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->write(Ljava/lang/Object;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    :cond_3
    if-eqz p1, :cond_0

    .line 506
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 454
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 457
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Attribute;)V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    .line 294
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 297
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .locals 1

    .prologue
    .line 364
    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 369
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Comment;)V
    .locals 1

    .prologue
    .line 378
    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    .line 380
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 383
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writeDeclaration()V

    .line 321
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 323
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    .line 326
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Document;->nodeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 327
    invoke-interface {p1, v0}, Lorg/dom4j/Document;->node(I)Lorg/dom4j/Node;

    move-result-object v2

    .line 328
    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 333
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 336
    :cond_2
    return-void
.end method

.method public write(Lorg/dom4j/DocumentType;)V
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    .line 394
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 397
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 352
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 355
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    .line 408
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 411
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Namespace;)V
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 422
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 425
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 482
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 485
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    .line 437
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 440
    :cond_0
    return-void
.end method

.method public write(Lorg/dom4j/Text;)V
    .locals 1

    .prologue
    .line 466
    invoke-interface {p1}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 471
    :cond_0
    return-void
.end method

.method protected writeAttribute(Lorg/dom4j/Attribute;)V
    .locals 2

    .prologue
    .line 1443
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1448
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1450
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1453
    sget-object v0, Lorg/dom4j/NodeType;->ATTRIBUTE_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1454
    return-void
.end method

.method protected writeAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v0

    .line 1465
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1466
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1467
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1468
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1469
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1470
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1471
    return-void
.end method

.method protected writeAttributes(Lorg/dom4j/Element;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1396
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 1397
    invoke-interface {p1, v0}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 1398
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    .line 1400
    if-eqz v3, :cond_0

    sget-object v4, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_0

    sget-object v4, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    if-eq v3, v4, :cond_0

    .line 1402
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1403
    iget-object v5, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v5, v4}, Lorg/dom4j/tree/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    invoke-virtual {v3}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1406
    invoke-virtual {p0, v3}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 1407
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 1414
    :cond_0
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1416
    const-string v4, "xmlns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1417
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1419
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3}, Lorg/dom4j/tree/NamespaceStack;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1420
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1421
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v4, v3, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p0, v3, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    :cond_2
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1425
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3}, Lorg/dom4j/tree/NamespaceStack;->getDefaultNamespace()Lorg/dom4j/Namespace;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1426
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1427
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v3, v6, v2}, Lorg/dom4j/tree/NamespaceStack;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-virtual {p0, v6, v2}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1431
    :cond_3
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v3}, Lorg/dom4j/io/OutputFormat;->getAttributeQuoteCharacter()C

    move-result v3

    .line 1432
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1433
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {v2}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1434
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1435
    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 1436
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/XMLWriter;->writeEscapeAttributeEntities(Ljava/lang/String;)V

    .line 1437
    iget-object v2, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 1440
    :cond_4
    return-void
.end method

.method protected writeAttributes(Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1458
    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/xml/sax/Attributes;I)V

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    return-void
.end method

.method protected writeCDATA(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1113
    if-eqz p1, :cond_0

    .line 1114
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1119
    sget-object v0, Lorg/dom4j/NodeType;->CDATA_SECTION_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1120
    return-void
.end method

.method protected writeClose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1551
    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 535
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeClose(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method protected writeComment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    .line 1375
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 1378
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1382
    sget-object v0, Lorg/dom4j/NodeType;->COMMENT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1383
    return-void
.end method

.method protected writeDeclaration()V
    .locals 4

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1521
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isSuppressDeclaration()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1523
    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1524
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?xml version=\"1.0\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " encoding=\"UTF-8\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1530
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1541
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewLineAfterDeclaration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->println()V

    .line 1545
    :cond_1
    return-void

    .line 1532
    :cond_2
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<?xml version=\"1.0\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isOmitEncoding()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1535
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " encoding=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1538
    :cond_3
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1330
    const/4 v0, 0x0

    .line 1332
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, "<!DOCTYPE "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1333
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1335
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1336
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1339
    const/4 v0, 0x1

    .line 1342
    :cond_0
    if-eqz p3, :cond_2

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1343
    if-nez v0, :cond_1

    .line 1344
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " SYSTEM"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1347
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1352
    :cond_2
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1354
    return-void
.end method

.method protected writeDocType(Lorg/dom4j/DocumentType;)V
    .locals 1

    .prologue
    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1, v0}, Lorg/dom4j/DocumentType;->write(Ljava/io/Writer;)V

    .line 1125
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1127
    :cond_0
    return-void
.end method

.method protected writeElement(Lorg/dom4j/Element;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v4

    .line 866
    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    .line 868
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 869
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    .line 871
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v6

    .line 875
    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v0

    .line 877
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v1, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 879
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    .line 883
    :cond_0
    const/4 v1, 0x1

    move v3, v2

    .line 885
    :goto_0
    if-ge v3, v4, :cond_4

    .line 886
    invoke-interface {p1, v3}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 888
    instance-of v7, v0, Lorg/dom4j/Namespace;

    if-eqz v7, :cond_2

    .line 889
    check-cast v0, Lorg/dom4j/Namespace;

    .line 891
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->isNamespaceDeclaration(Lorg/dom4j/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 892
    iget-object v7, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v7, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 893
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Lorg/dom4j/Namespace;)V

    :cond_1
    move v0, v1

    .line 885
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 895
    :cond_2
    instance-of v7, v0, Lorg/dom4j/Element;

    if-eqz v7, :cond_3

    move v0, v2

    .line 896
    goto :goto_1

    .line 897
    :cond_3
    instance-of v0, v0, Lorg/dom4j/Comment;

    if-eqz v0, :cond_8

    move v0, v2

    .line 898
    goto :goto_1

    .line 902
    :cond_4
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 904
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 906
    if-gtz v4, :cond_5

    .line 907
    invoke-virtual {p0, v5}, Lorg/dom4j/io/XMLWriter;->writeEmptyElementClose(Ljava/lang/String;)V

    .line 933
    :goto_2
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 934
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto :goto_2

    .line 909
    :cond_5
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 911
    if-eqz v1, :cond_6

    .line 914
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    .line 927
    :goto_3
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 917
    :cond_6
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 919
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElementContent(Lorg/dom4j/Element;)V

    .line 921
    iget v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/dom4j/io/XMLWriter;->indentLevel:I

    .line 923
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 924
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->indent()V

    goto :goto_3

    .line 937
    :cond_7
    sget-object v0, Lorg/dom4j/NodeType;->ELEMENT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 938
    return-void

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method protected writeElementContent(Lorg/dom4j/Element;)V
    .locals 12

    .prologue
    const/16 v5, 0x61

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 974
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    .line 975
    iget-boolean v8, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 977
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->isElementSpacePreserved(Lorg/dom4j/Element;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 979
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 982
    :cond_0
    :goto_0
    if-eqz v0, :cond_f

    .line 989
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v9

    move v7, v2

    move-object v3, v6

    move-object v4, v6

    :goto_1
    if-ge v7, v9, :cond_a

    .line 990
    invoke-interface {p1, v7}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 992
    instance-of v10, v0, Lorg/dom4j/Text;

    if-eqz v10, :cond_4

    .line 993
    if-nez v4, :cond_2

    .line 994
    check-cast v0, Lorg/dom4j/Text;

    move v11, v1

    move-object v1, v3

    move-object v3, v0

    move v0, v11

    .line 989
    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 979
    goto :goto_0

    .line 996
    :cond_2
    if-nez v3, :cond_3

    .line 997
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1000
    :cond_3
    check-cast v0, Lorg/dom4j/Text;

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    .line 1003
    :cond_4
    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1007
    if-eqz v3, :cond_7

    .line 1008
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1013
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1014
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1018
    :cond_5
    if-eqz v4, :cond_13

    .line 1019
    if-eqz v3, :cond_8

    .line 1020
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    move-object v3, v6

    .line 1026
    :goto_4
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1030
    if-eqz v3, :cond_9

    .line 1031
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1037
    :goto_5
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1038
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    move-object v1, v3

    move-object v3, v6

    .line 1046
    :goto_6
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    move v0, v2

    goto :goto_2

    .line 1009
    :cond_7
    if-eqz v4, :cond_14

    .line 1010
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1023
    :cond_8
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 1032
    :cond_9
    if-eqz v4, :cond_12

    .line 1033
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1034
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1050
    :cond_a
    if-eqz v4, :cond_c

    .line 1051
    if-nez v1, :cond_b

    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1055
    if-eqz v3, :cond_d

    .line 1056
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 1061
    :goto_7
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1062
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1066
    :cond_b
    if-eqz v3, :cond_e

    .line 1067
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    .line 1107
    :cond_c
    :goto_8
    iput-boolean v8, p0, Lorg/dom4j/io/XMLWriter;->preserve:Z

    .line 1108
    return-void

    .line 1058
    :cond_d
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 1070
    :cond_e
    invoke-interface {v4}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 1078
    :cond_f
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeCount()I

    move-result v3

    move-object v1, v6

    :goto_9
    if-ge v2, v3, :cond_c

    .line 1079
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v0

    .line 1081
    instance-of v4, v0, Lorg/dom4j/Text;

    if-eqz v4, :cond_10

    .line 1082
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    .line 1078
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_9

    .line 1085
    :cond_10
    if-eqz v1, :cond_11

    iget-object v4, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v4}, Lorg/dom4j/io/OutputFormat;->isPadText()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1088
    invoke-interface {v1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1091
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1092
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1096
    :cond_11
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeNode(Lorg/dom4j/Node;)V

    move-object v0, v6

    .line 1102
    goto :goto_a

    :cond_12
    move v1, v5

    goto/16 :goto_5

    :cond_13
    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_6

    :cond_14
    move v1, v5

    goto/16 :goto_3
.end method

.method protected writeEmptyElementClose(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isExpandEmptyElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1563
    :goto_0
    return-void

    .line 1559
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "></"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1561
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEntity(Lorg/dom4j/Entity;)V
    .locals 2

    .prologue
    .line 1357
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->resolveEntityRefs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 1362
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeEntityRef(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1365
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1369
    sget-object v0, Lorg/dom4j/NodeType;->ENTITY_REFERENCE_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1370
    return-void
.end method

.method protected writeEscapeAttributeEntities(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1653
    if-eqz p1, :cond_0

    .line 1654
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1657
    :cond_0
    return-void
.end method

.method protected writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns:"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1171
    :goto_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1173
    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeNamespace(Lorg/dom4j/Namespace;)V
    .locals 2

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    return-void
.end method

.method protected writeNamespaces()V
    .locals 3

    .prologue
    .line 1141
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1143
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1147
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XMLWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->namespacesMap:Ljava/util/Map;

    .line 1152
    :cond_1
    return-void
.end method

.method protected writeNode(Lorg/dom4j/Node;)V
    .locals 3

    .prologue
    .line 1247
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeTypeEnum()Lorg/dom4j/NodeType;

    move-result-object v0

    .line 1249
    sget-object v1, Lorg/dom4j/io/XMLWriter$1;->$SwitchMap$org$dom4j$NodeType:[I

    invoke-virtual {v0}, Lorg/dom4j/NodeType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1303
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1251
    :pswitch_0
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeElement(Lorg/dom4j/Element;)V

    .line 1305
    :goto_0
    :pswitch_1
    return-void

    .line 1256
    :pswitch_2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttribute(Lorg/dom4j/Attribute;)V

    goto :goto_0

    .line 1261
    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeNodeText(Lorg/dom4j/Node;)V

    goto :goto_0

    .line 1267
    :pswitch_4
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeCDATA(Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    :pswitch_5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeEntity(Lorg/dom4j/Entity;)V

    goto :goto_0

    .line 1277
    :pswitch_6
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_0

    .line 1282
    :pswitch_7
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->writeComment(Ljava/lang/String;)V

    goto :goto_0

    .line 1287
    :pswitch_8
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_0

    .line 1292
    :pswitch_9
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeDocType(Lorg/dom4j/DocumentType;)V

    goto :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method

.method protected writeNodeText(Lorg/dom4j/Node;)V
    .locals 2

    .prologue
    .line 1234
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1237
    iget-boolean v1, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v1, :cond_0

    .line 1238
    invoke-virtual {p0, v0}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    :cond_0
    sget-object v1, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    iput-object v1, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1242
    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1244
    :cond_1
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->writeAttributes(Lorg/dom4j/Element;)V

    .line 523
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method protected writePrintln()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isNewlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v1}, Lorg/dom4j/io/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1494
    :cond_0
    return-void
.end method

.method protected writeProcessingInstruction(Lorg/dom4j/ProcessingInstruction;)V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lorg/dom4j/io/XMLWriter;->writePrintln()V

    .line 1185
    sget-object v0, Lorg/dom4j/NodeType;->PROCESSING_INSTRUCTION_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1186
    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1189
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1190
    iget-boolean v0, p0, Lorg/dom4j/io/XMLWriter;->escapeText:Z

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XMLWriter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1199
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->format:Lorg/dom4j/io/OutputFormat;

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->isTrimText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1200
    const/4 v0, 0x1

    .line 1201
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1203
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1204
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1206
    if-eqz v0, :cond_2

    .line 1207
    const/4 v0, 0x0

    .line 1209
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    sget-object v4, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    if-ne v3, v4, :cond_1

    .line 1210
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1216
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1217
    sget-object v2, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    iput-object v2, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    goto :goto_0

    .line 1213
    :cond_2
    iget-object v3, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1220
    :cond_3
    sget-object v0, Lorg/dom4j/NodeType;->TEXT_NODE:Lorg/dom4j/NodeType;

    iput-object v0, p0, Lorg/dom4j/io/XMLWriter;->lastOutputNodeType:Lorg/dom4j/NodeType;

    .line 1221
    iget-object v0, p0, Lorg/dom4j/io/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1224
    :cond_4
    return-void
.end method
