.class public Lorg/apache/commons/cli/HelpFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ARG_NAME:Ljava/lang/String; = "arg"

.field public static final DEFAULT_DESC_PAD:I = 0x3

.field public static final DEFAULT_LEFT_PAD:I = 0x1

.field public static final DEFAULT_LONG_OPT_PREFIX:Ljava/lang/String; = "--"

.field public static final DEFAULT_OPT_PREFIX:Ljava/lang/String; = "-"

.field public static final DEFAULT_SYNTAX_PREFIX:Ljava/lang/String; = "usage: "

.field public static final DEFAULT_WIDTH:I = 0x4a


# instance fields
.field public defaultArgName:Ljava/lang/String;

.field public defaultDescPad:I

.field public defaultLeftPad:I

.field public defaultLongOptPrefix:Ljava/lang/String;

.field public defaultNewLine:Ljava/lang/String;

.field public defaultOptPrefix:Ljava/lang/String;

.field public defaultSyntaxPrefix:Ljava/lang/String;

.field public defaultWidth:I

.field protected optionComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x4a

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    .line 96
    const-string v0, "usage: "

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    .line 104
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    .line 112
    const-string v0, "-"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    .line 120
    const-string v0, "--"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    .line 128
    const-string v0, "arg"

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultArgName:Ljava/lang/String;

    .line 135
    new-instance v0, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;-><init>(Lorg/apache/commons/cli/HelpFormatter$1;)V

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    .line 962
    return-void
.end method

.method private static appendOption(Ljava/lang/StringBuffer;Lorg/apache/commons/cli/Option;Z)V
    .locals 2

    .prologue
    .line 607
    if-nez p2, :cond_0

    .line 609
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 614
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->hasArgName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    const-string v0, " <"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getArgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    :cond_1
    if-nez p2, :cond_2

    .line 630
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    :cond_2
    return-void

    .line 618
    :cond_3
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private appendOptionGroup(Ljava/lang/StringBuffer;Lorg/apache/commons/cli/OptionGroup;)V
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p2}, Lorg/apache/commons/cli/OptionGroup;->isRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/apache/commons/cli/OptionGroup;->getOptions()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    invoke-virtual {p0}, Lorg/apache/commons/cli/HelpFormatter;->getOptionComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 581
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/cli/Option;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lorg/apache/commons/cli/HelpFormatter;->appendOption(Ljava/lang/StringBuffer;Lorg/apache/commons/cli/Option;Z)V

    .line 586
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p2}, Lorg/apache/commons/cli/OptionGroup;->isRequired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_3
    return-void
.end method


# virtual methods
.method protected createPadding(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 921
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 923
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 925
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findWrapPos(Ljava/lang/String;II)I
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v1, -0x1

    .line 868
    .line 871
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-le v0, p2, :cond_1

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_3

    if-gt v0, p2, :cond_3

    .line 874
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 909
    :cond_2
    :goto_0
    return v1

    .line 876
    :cond_3
    add-int v0, p3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 883
    add-int v0, p3, p2

    .line 888
    :goto_1
    if-lt v0, p3, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_4

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_4

    .line 890
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 894
    :cond_4
    if-le v0, p3, :cond_5

    move v1, v0

    .line 896
    goto :goto_0

    .line 901
    :cond_5
    add-int v0, p3, p2

    .line 904
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v3, :cond_6

    if-eq v2, v4, :cond_6

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 909
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_7

    move v0, v1

    :cond_7
    move v1, v0

    goto :goto_0
.end method

.method public getArgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultArgName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescPadding()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    return v0
.end method

.method public getLongOptPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    return-object v0
.end method

.method public getOptPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getSyntaxPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    return v0
.end method

.method public printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 397
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V

    .line 398
    return-void
.end method

.method public printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 416
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 418
    iget v6, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    iget v7, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V

    .line 419
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 420
    return-void
.end method

.method public printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;)V
    .locals 10

    .prologue
    .line 443
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V

    .line 444
    return-void
.end method

.method public printHelp(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;IILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 470
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmdLineSyntax not provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    if-eqz p9, :cond_4

    .line 477
    invoke-virtual {p0, p1, p2, p3, p5}, Lorg/apache/commons/cli/HelpFormatter;->printUsage(Ljava/io/PrintWriter;ILjava/lang/String;Lorg/apache/commons/cli/Options;)V

    .line 484
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 486
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/commons/cli/HelpFormatter;->printWrapped(Ljava/io/PrintWriter;ILjava/lang/String;)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p7

    .line 489
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/cli/HelpFormatter;->printOptions(Ljava/io/PrintWriter;ILorg/apache/commons/cli/Options;II)V

    .line 491
    if-eqz p8, :cond_3

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 493
    invoke-virtual {p0, p1, p2, p8}, Lorg/apache/commons/cli/HelpFormatter;->printWrapped(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 495
    :cond_3
    return-void

    .line 481
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/cli/HelpFormatter;->printUsage(Ljava/io/PrintWriter;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public printHelp(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 364
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V

    .line 365
    return-void
.end method

.method public printHelp(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 381
    iget v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V

    .line 382
    return-void
.end method

.method public printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 334
    iget v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V

    .line 335
    return-void
.end method

.method public printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 349
    iget v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(ILjava/lang/String;Ljava/lang/String;Lorg/apache/commons/cli/Options;Ljava/lang/String;Z)V

    .line 350
    return-void
.end method

.method public printOptions(Ljava/io/PrintWriter;ILorg/apache/commons/cli/Options;II)V
    .locals 6

    .prologue
    .line 664
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 666
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/cli/HelpFormatter;->renderOptions(Ljava/lang/StringBuffer;ILorg/apache/commons/cli/Options;II)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public printUsage(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 644
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 646
    iget-object v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/cli/HelpFormatter;->printWrapped(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 647
    return-void
.end method

.method public printUsage(Ljava/io/PrintWriter;ILjava/lang/String;Lorg/apache/commons/cli/Options;)V
    .locals 5

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 512
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/apache/commons/cli/Options;->getOptions()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 518
    invoke-virtual {p0}, Lorg/apache/commons/cli/HelpFormatter;->getOptionComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 520
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/cli/Option;

    .line 526
    invoke-virtual {p4, v0}, Lorg/apache/commons/cli/Options;->getOptionGroup(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    move-result-object v4

    .line 529
    if-eqz v4, :cond_2

    .line 532
    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/cli/HelpFormatter;->appendOptionGroup(Ljava/lang/StringBuffer;Lorg/apache/commons/cli/OptionGroup;)V

    .line 552
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->isRequired()Z

    move-result v4

    invoke-static {v1, v0, v4}, Lorg/apache/commons/cli/HelpFormatter;->appendOption(Ljava/lang/StringBuffer;Lorg/apache/commons/cli/Option;Z)V

    goto :goto_1

    .line 560
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/cli/HelpFormatter;->printWrapped(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 561
    return-void
.end method

.method public printWrapped(Ljava/io/PrintWriter;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 694
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/cli/HelpFormatter;->renderWrappedText(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public printWrapped(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/cli/HelpFormatter;->printWrapped(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 680
    return-void
.end method

.method protected renderOptions(Ljava/lang/StringBuffer;ILorg/apache/commons/cli/Options;II)Ljava/lang/StringBuffer;
    .locals 12

    .prologue
    .line 716
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v3

    .line 717
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v5

    .line 723
    const/4 v1, 0x0

    .line 725
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-virtual {p3}, Lorg/apache/commons/cli/Options;->helpOptions()Ljava/util/List;

    move-result-object v4

    .line 729
    invoke-virtual {p0}, Lorg/apache/commons/cli/HelpFormatter;->getOptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 731
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 733
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/cli/Option;

    .line 734
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 736
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 738
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 752
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->hasArgName()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 754
    const-string v9, " <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getArgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v9, ">"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_1
    :goto_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    :goto_3
    move v2, v1

    .line 764
    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getOpt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->hasLongOpt()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 746
    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getLongOpt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 758
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    move v1, v2

    .line 763
    goto :goto_3

    .line 766
    :cond_5
    const/4 v1, 0x0

    .line 768
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 770
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/cli/Option;

    .line 771
    new-instance v8, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v3, v2, :cond_6

    .line 775
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 778
    :cond_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 780
    add-int v3, v2, p5

    .line 782
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 784
    invoke-virtual {v1}, Lorg/apache/commons/cli/Option;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v3, v1}, Lorg/apache/commons/cli/HelpFormatter;->renderWrappedText(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 789
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 791
    iget-object v1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    move v3, v4

    .line 793
    goto :goto_4

    .line 795
    :cond_9
    return-object p1
.end method

.method protected renderWrappedText(Ljava/lang/StringBuffer;IILjava/lang/String;)Ljava/lang/StringBuffer;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 812
    invoke-virtual {p0, p4, p2, v4}, Lorg/apache/commons/cli/HelpFormatter;->findWrapPos(Ljava/lang/String;II)I

    move-result v0

    .line 814
    if-ne v0, v5, :cond_0

    .line 816
    invoke-virtual {p0, p4}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    :goto_0
    return-object p1

    .line 820
    :cond_0
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    if-lt p3, p2, :cond_1

    .line 825
    const/4 p3, 0x1

    .line 830
    :cond_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/cli/HelpFormatter;->createPadding(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 835
    invoke-virtual {p0, p4, p2, v4}, Lorg/apache/commons/cli/HelpFormatter;->findWrapPos(Ljava/lang/String;II)I

    move-result v0

    .line 837
    if-ne v0, v5, :cond_2

    .line 839
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_3

    add-int/lit8 v2, p3, -0x1

    if-ne v0, v2, :cond_3

    move v0, p2

    .line 849
    :cond_3
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/cli/HelpFormatter;->rtrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected rtrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 940
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-object p1

    .line 945
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 947
    :goto_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 952
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setArgName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultArgName:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setDescPadding(I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultDescPad:I

    .line 185
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLeftPad:I

    .line 165
    return-void
.end method

.method public setLongOptPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultLongOptPrefix:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultNewLine:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setOptPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultOptPrefix:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setOptionComparator(Ljava/util/Comparator;)V
    .locals 2

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/cli/HelpFormatter$OptionComparator;-><init>(Lorg/apache/commons/cli/HelpFormatter$1;)V

    iput-object v0, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->optionComparator:Ljava/util/Comparator;

    goto :goto_0
.end method

.method public setSyntaxPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultSyntaxPrefix:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lorg/apache/commons/cli/HelpFormatter;->defaultWidth:I

    .line 145
    return-void
.end method
