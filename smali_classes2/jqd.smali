.class public Ljqd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "FACSEG_50300012"

    iput-object v0, p0, Ljqd;->a:Ljava/lang/String;

    .line 20
    const-string v0, "@ERSNE0001"

    iput-object v0, p0, Ljqd;->b:Ljava/lang/String;

    .line 21
    const-string v0, "0"

    iput-object v0, p0, Ljqd;->c:Ljava/lang/String;

    .line 22
    const-string v0, "FACSEG_50300003"

    iput-object v0, p0, Ljqd;->d:Ljava/lang/String;

    .line 25
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljqd;->e:Lmip;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 76
    move v1, v0

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_1

    .line 79
    add-int/lit8 v2, v0, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 83
    const/4 v1, 0x1

    .line 87
    :cond_0
    if-eqz v1, :cond_3

    .line 91
    :cond_1
    return v1

    .line 79
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    .line 115
    const/4 v1, 0x6

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 120
    :cond_0
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 95
    move v0, v1

    move v2, v1

    .line 97
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 98
    add-int/lit8 v3, v0, 0x1

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    if-lt v3, v6, :cond_2

    move v2, v3

    .line 105
    :goto_2
    if-lt v2, v6, :cond_3

    .line 109
    :cond_0
    if-lt v2, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 98
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public a(Ljqk;)Z
    .locals 3

    .prologue
    .line 34
    const-string v0, "\\d{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljqd;->e:Lmip;

    .line 38
    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->k()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, v1}, Ljqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljqm;)Z
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FACSEG_50300012"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljqk;)Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljqm;)Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FACSEG_50300003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljqk;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljqm;)Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Ljqk;)Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Ljqk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljqm;)Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(Ljqk;)Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljqm;)Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1}, Ljqm;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@ERSNE0001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f(Ljqk;)Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Ljqk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljqd;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljqk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
