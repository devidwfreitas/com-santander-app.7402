.class public Lorg/apache/commons/exec/CommandLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arguments:Ljava/util/Vector;

.field private final executable:Ljava/lang/String;

.field private final isFile:Z

.field private substitutionMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/exec/CommandLine;->isFile:Z

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/exec/CommandLine;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->executable:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/exec/CommandLine;->isFile:Z

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/exec/CommandLine;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->executable:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/exec/CommandLine;)V
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    .line 121
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->getExecutable()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->executable:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->isFile()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/exec/CommandLine;->isFile:Z

    .line 123
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    iget-object v1, p1, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->getSubstitutionMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/exec/CommandLine;->substitutionMap:Ljava/util/Map;

    .line 128
    iget-object v0, p1, Lorg/apache/commons/exec/CommandLine;->substitutionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lorg/apache/commons/exec/CommandLine;->substitutionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/exec/CommandLine;->getSubstitutionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private expandArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/exec/CommandLine;->getSubstitutionMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/exec/util/StringUtils;->stringSubstitution(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExecutable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executable can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executable can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/exec/util/StringUtils;->fixFileSeparatorChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/exec/CommandLine;->parse(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/exec/CommandLine;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/commons/exec/CommandLine;
    .locals 4

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command line can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command line can not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/exec/CommandLine;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Lorg/apache/commons/exec/CommandLine;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-direct {v2, v0}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, p1}, Lorg/apache/commons/exec/CommandLine;->setSubstitutionMap(Ljava/util/Map;)V

    .line 86
    const/4 v0, 0x1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 87
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    return-object v2
.end method

.method private static translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 333
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    .line 344
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v0, "\"\' "

    invoke-direct {v6, p0, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 346
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v0

    move v3, v1

    move v0, v1

    .line 349
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 350
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 351
    packed-switch v3, :pswitch_data_0

    .line 369
    const-string v9, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v4

    :cond_2
    :goto_2
    move v0, v1

    .line 381
    goto :goto_1

    .line 353
    :pswitch_0
    const-string v9, "\'"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v4

    move v3, v1

    .line 355
    goto :goto_1

    .line 357
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 361
    :pswitch_1
    const-string v9, "\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v0, v4

    move v3, v1

    .line 363
    goto :goto_1

    .line 365
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 371
    :cond_5
    const-string v9, "\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v3, v5

    .line 372
    goto :goto_2

    .line 373
    :cond_6
    const-string v9, " "

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 374
    if-nez v0, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 376
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_2

    .line 379
    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 386
    :cond_9
    if-nez v0, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 390
    :cond_b
    if-eq v3, v4, :cond_c

    if-ne v3, v5, :cond_d

    .line 391
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unbalanced quotes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_d
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 396
    invoke-virtual {v7, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    move-result-object v0

    return-object v0
.end method

.method public addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;
    .locals 3

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 248
    :goto_0
    return-object p0

    .line 242
    :cond_0
    if-eqz p2, :cond_1

    .line 244
    invoke-static {p1}, Lorg/apache/commons/exec/util/StringUtils;->quoteArgument(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    new-instance v1, Lorg/apache/commons/exec/CommandLine$Argument;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/apache/commons/exec/CommandLine$Argument;-><init>(Lorg/apache/commons/exec/CommandLine;Ljava/lang/String;ZLorg/apache/commons/exec/CommandLine$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addArguments(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/CommandLine;->addArguments(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    move-result-object v0

    return-object v0
.end method

.method public addArguments(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-static {p1}, Lorg/apache/commons/exec/CommandLine;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/exec/CommandLine;->addArguments([Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 212
    :cond_0
    return-object p0
.end method

.method public addArguments([Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/exec/CommandLine;->addArguments([Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    move-result-object v0

    return-object v0
.end method

.method public addArguments([Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;
    .locals 2

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 178
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;Z)Lorg/apache/commons/exec/CommandLine;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-object p0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/exec/CommandLine$Argument;

    .line 264
    invoke-static {v0}, Lorg/apache/commons/exec/CommandLine$Argument;->access$100(Lorg/apache/commons/exec/CommandLine$Argument;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/exec/CommandLine;->expandArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v0}, Lorg/apache/commons/exec/CommandLine$Argument;->access$200(Lorg/apache/commons/exec/CommandLine$Argument;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/apache/commons/exec/util/StringUtils;->quoteArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v1

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 265
    goto :goto_1

    .line 268
    :cond_1
    return-object v3
.end method

.method public getExecutable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->executable:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/exec/CommandLine;->expandArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/exec/util/StringUtils;->fixFileSeparatorChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubstitutionMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->substitutionMap:Ljava/util/Map;

    return-object v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/apache/commons/exec/CommandLine;->isFile:Z

    return v0
.end method

.method public setSubstitutionMap(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lorg/apache/commons/exec/CommandLine;->substitutionMap:Ljava/util/Map;

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/exec/CommandLine;->toStrings()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v1, v2}, Lorg/apache/commons/exec/util/StringUtils;->toString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStrings()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v0, p0, Lorg/apache/commons/exec/CommandLine;->arguments:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/exec/CommandLine;->getExecutable()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 296
    invoke-virtual {p0}, Lorg/apache/commons/exec/CommandLine;->getArguments()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    return-object v0
.end method
