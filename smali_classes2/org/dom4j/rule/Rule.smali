.class public Lorg/dom4j/rule/Rule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private action:Lorg/dom4j/rule/Action;

.field private appearenceCount:I

.field private importPrecedence:I

.field private mode:Ljava/lang/String;

.field private pattern:Lorg/dom4j/rule/Pattern;

.field private priority:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 59
    invoke-interface {p1}, Lorg/dom4j/rule/Pattern;->getPriority()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;)V

    .line 64
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    .line 76
    iget v0, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    .line 77
    iget-wide v0, p1, Lorg/dom4j/rule/Rule;->priority:D

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 78
    iget v0, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    .line 79
    iget-object v0, p1, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 80
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 81
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 96
    instance-of v0, p1, Lorg/dom4j/rule/Rule;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lorg/dom4j/rule/Rule;)I
    .locals 4

    .prologue
    .line 111
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    sub-int/2addr v0, v1

    .line 113
    if-nez v0, :cond_0

    .line 114
    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    iget-wide v2, p1, Lorg/dom4j/rule/Rule;->priority:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iget v1, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    sub-int/2addr v0, v1

    .line 121
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    instance-of v1, p1, Lorg/dom4j/rule/Rule;

    if-eqz v1, :cond_0

    .line 85
    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 88
    :cond_0
    return v0
.end method

.method public getAction()Lorg/dom4j/rule/Action;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-object v0
.end method

.method public getAppearenceCount()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return v0
.end method

.method public getImportPrecedence()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return v0
.end method

.method public final getMatchType()Lorg/dom4j/NodeType;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchType()Lorg/dom4j/NodeType;

    move-result-object v0

    return-object v0
.end method

.method public final getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-wide v0
.end method

.method public getUnionRules()[Lorg/dom4j/rule/Rule;
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getUnionPatterns()[Lorg/dom4j/rule/Pattern;

    move-result-object v2

    .line 150
    if-nez v2, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 161
    :cond_0
    return-object v0

    .line 154
    :cond_1
    array-length v3, v2

    .line 155
    new-array v0, v3, [Lorg/dom4j/rule/Rule;

    .line 157
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 158
    new-instance v4, Lorg/dom4j/rule/Rule;

    aget-object v5, v2, v1

    invoke-direct {v4, p0, v5}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V

    aput-object v4, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lorg/dom4j/Node;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0, p1}, Lorg/dom4j/rule/Pattern;->matches(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public setAction(Lorg/dom4j/rule/Action;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 294
    return-void
.end method

.method public setAppearenceCount(I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    .line 258
    return-void
.end method

.method public setImportPrecedence(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    .line 222
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setPattern(Lorg/dom4j/rule/Pattern;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 276
    return-void
.end method

.method public setPriority(D)V
    .locals 1

    .prologue
    .line 239
    iput-wide p1, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 240
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getPattern()Lorg/dom4j/rule/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
