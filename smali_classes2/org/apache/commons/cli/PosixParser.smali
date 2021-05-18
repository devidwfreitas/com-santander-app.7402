.class public Lorg/apache/commons/cli/PosixParser;
.super Lorg/apache/commons/cli/Parser;
.source "SourceFile"


# instance fields
.field private currentOption:Lorg/apache/commons/cli/Option;

.field private eatTheRest:Z

.field private options:Lorg/apache/commons/cli/Options;

.field private tokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/commons/cli/Parser;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    return-void
.end method

.method private gobble(Ljava/util/Iterator;)V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/apache/commons/cli/PosixParser;->eatTheRest:Z

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/cli/PosixParser;->eatTheRest:Z

    .line 54
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method private processNonOptionToken(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 184
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    invoke-virtual {v0}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/cli/PosixParser;->eatTheRest:Z

    .line 187
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    const-string v1, "--"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method private processOptionToken(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 207
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    invoke-virtual {v0, p1}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/cli/PosixParser;->eatTheRest:Z

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    invoke-virtual {v0, p1}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    invoke-virtual {v0, p1}, Lorg/apache/commons/cli/Options;->getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method


# virtual methods
.method protected burstToken(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 248
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    invoke-virtual {v3, v2}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v3, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    invoke-virtual {v3, v2}, Lorg/apache/commons/cli/Options;->getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    .line 257
    iget-object v2, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    invoke-virtual {v2}, Lorg/apache/commons/cli/Option;->hasArg()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-eq v2, v3, :cond_3

    .line 259
    iget-object v1, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    :goto_1
    return-void

    .line 264
    :cond_1
    if-eqz p2, :cond_2

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/cli/PosixParser;->processNonOptionToken(Ljava/lang/String;Z)V

    goto :goto_1

    .line 271
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected flatten(Lorg/apache/commons/cli/Options;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/cli/PosixParser;->init()V

    .line 98
    iput-object p1, p0, Lorg/apache/commons/cli/PosixParser;->options:Lorg/apache/commons/cli/Options;

    .line 101
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 104
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 113
    if-ne v3, v5, :cond_1

    move-object v1, v0

    .line 115
    :goto_1
    invoke-virtual {p1, v1}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/cli/PosixParser;->processNonOptionToken(Ljava/lang/String;Z)V

    .line 153
    :cond_0
    :goto_2
    invoke-direct {p0, v2}, Lorg/apache/commons/cli/PosixParser;->gobble(Ljava/util/Iterator;)V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/commons/cli/Options;->getOption(Ljava/lang/String;)Lorg/apache/commons/cli/Option;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/cli/PosixParser;->currentOption:Lorg/apache/commons/cli/Option;

    .line 123
    iget-object v4, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    if-eq v3, v5, :cond_0

    .line 126
    iget-object v1, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_3
    const-string v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    :cond_4
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    invoke-virtual {p1, v0}, Lorg/apache/commons/cli/Options;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    :cond_5
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/cli/PosixParser;->processOptionToken(Ljava/lang/String;Z)V

    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/cli/PosixParser;->burstToken(Ljava/lang/String;Z)V

    goto :goto_2

    .line 150
    :cond_7
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/cli/PosixParser;->processNonOptionToken(Ljava/lang/String;Z)V

    goto :goto_2

    .line 156
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/cli/PosixParser;->tokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
