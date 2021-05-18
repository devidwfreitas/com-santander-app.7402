.class public Lorg/dom4j/io/OutputFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final STANDARD_INDENT:Ljava/lang/String; = "  "


# instance fields
.field private attributeQuoteChar:C

.field private doXHTML:Z

.field private encoding:Ljava/lang/String;

.field private expandEmptyElements:Z

.field private indent:Ljava/lang/String;

.field private lineSeparator:Ljava/lang/String;

.field private newLineAfterDeclaration:Z

.field private newLineAfterNTags:I

.field private newlines:Z

.field private omitEncoding:Z

.field private padText:Z

.field private suppressDeclaration:Z

.field private trimText:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 40
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 78
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 83
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 89
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 94
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 40
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 78
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 83
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 89
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 94
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 112
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 40
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 78
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 83
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 89
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 94
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 125
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 126
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 40
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 63
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 68
    const-string v0, "\n"

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 78
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 83
    iput-boolean v1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 89
    iput v1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 94
    const/16 v0, 0x22

    iput-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 139
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 140
    iput-boolean p2, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 141
    iput-object p3, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static createCompactFormat()Lorg/dom4j/io/OutputFormat;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 536
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndent(Z)V

    .line 537
    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 538
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 540
    return-object v0
.end method

.method public static createPrettyPrint()Lorg/dom4j/io/OutputFormat;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 518
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    .line 519
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    .line 520
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    .line 521
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 522
    invoke-virtual {v0, v2}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    .line 524
    return-object v0
.end method


# virtual methods
.method public getAttributeQuoteCharacter()C
    .locals 1

    .prologue
    .line 449
    iget-char v0, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getNewLineAfterNTags()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    return v0
.end method

.method public isExpandEmptyElements()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    return v0
.end method

.method public isNewLineAfterDeclaration()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    return v0
.end method

.method public isNewlines()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    return v0
.end method

.method public isOmitEncoding()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    return v0
.end method

.method public isPadText()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    return v0
.end method

.method public isSuppressDeclaration()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    return v0
.end method

.method public isTrimText()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    return v0
.end method

.method public isXHTML()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    return v0
.end method

.method public parseOptions([Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 479
    array-length v1, p1

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_a

    .line 480
    aget-object v2, p1, v0

    const-string v3, "-suppressDeclaration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setSuppressDeclaration(Z)V

    .line 479
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    aget-object v2, p1, v0

    const-string v3, "-omitEncoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setOmitEncoding(Z)V

    goto :goto_1

    .line 484
    :cond_1
    aget-object v2, p1, v0

    const-string v3, "-indent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 485
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setIndent(Ljava/lang/String;)V

    goto :goto_1

    .line 486
    :cond_2
    aget-object v2, p1, v0

    const-string v3, "-indentSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setIndentSize(I)V

    goto :goto_1

    .line 488
    :cond_3
    aget-object v2, p1, v0

    const-string v3, "-expandEmpty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 489
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setExpandEmptyElements(Z)V

    goto :goto_1

    .line 490
    :cond_4
    aget-object v2, p1, v0

    const-string v3, "-encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    .line 492
    :cond_5
    aget-object v2, p1, v0

    const-string v3, "-newlines"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 493
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setNewlines(Z)V

    goto :goto_1

    .line 494
    :cond_6
    aget-object v2, p1, v0

    const-string v3, "-lineSeparator"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/io/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :cond_7
    aget-object v2, p1, v0

    const-string v3, "-trimText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 497
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    goto/16 :goto_1

    .line 498
    :cond_8
    aget-object v2, p1, v0

    const-string v3, "-padText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 499
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setPadText(Z)V

    goto/16 :goto_1

    .line 500
    :cond_9
    aget-object v2, p1, v0

    const-string v3, "-xhtml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 501
    invoke-virtual {p0, v4}, Lorg/dom4j/io/OutputFormat;->setXHTML(Z)V

    goto/16 :goto_1

    .line 507
    :cond_a
    return v0
.end method

.method public setAttributeQuoteCharacter(C)V
    .locals 3

    .prologue
    .line 462
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 463
    :cond_0
    iput-char p1, p0, Lorg/dom4j/io/OutputFormat;->attributeQuoteChar:C

    .line 468
    return-void

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute quote character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->encoding:Ljava/lang/String;

    .line 191
    :cond_0
    return-void
.end method

.method public setExpandEmptyElements(Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->expandEmptyElements:Z

    .line 276
    return-void
.end method

.method public setIndent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 351
    const/4 p1, 0x0

    .line 354
    :cond_0
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setIndent(Z)V
    .locals 1

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    const-string v0, "  "

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIndentSize(I)V
    .locals 3

    .prologue
    .line 381
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 384
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/OutputFormat;->indent:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/dom4j/io/OutputFormat;->lineSeparator:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNewLineAfterDeclaration(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterDeclaration:Z

    .line 249
    return-void
.end method

.method public setNewLineAfterNTags(I)V
    .locals 0

    .prologue
    .line 445
    iput p1, p0, Lorg/dom4j/io/OutputFormat;->newLineAfterNTags:I

    .line 446
    return-void
.end method

.method public setNewlines(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->newlines:Z

    .line 176
    return-void
.end method

.method public setOmitEncoding(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->omitEncoding:Z

    .line 210
    return-void
.end method

.method public setPadText(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->padText:Z

    .line 332
    return-void
.end method

.method public setSuppressDeclaration(Z)V
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->suppressDeclaration:Z

    .line 225
    return-void
.end method

.method public setTrimText(Z)V
    .locals 0

    .prologue
    .line 300
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->trimText:Z

    .line 301
    return-void
.end method

.method public setXHTML(Z)V
    .locals 0

    .prologue
    .line 426
    iput-boolean p1, p0, Lorg/dom4j/io/OutputFormat;->doXHTML:Z

    .line 427
    return-void
.end method
