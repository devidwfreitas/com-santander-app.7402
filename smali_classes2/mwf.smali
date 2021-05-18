.class public Lmwf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lmwf;->a:Ljava/lang/String;

    .line 18
    return-void

    .line 17
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lmwf;->b()Z

    move-result v1

    .line 22
    invoke-virtual {p0}, Lmwf;->c()Z

    move-result v2

    .line 23
    invoke-virtual {p0}, Lmwf;->d()Z

    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lmwf;->e()Z

    move-result v0

    .line 27
    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    iget-object v2, p0, Lmwf;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v3, "[\\p{InCombiningDiacriticalMarks}]+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    const/16 v2, 0xf

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "santander"

    aput-object v2, v4, v1

    const-string v2, "itau"

    aput-object v2, v4, v0

    const/4 v2, 0x2

    const-string v5, "bradesco"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "brasil"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "bb"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "unibanco"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "caixa"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "cef"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "hsbc"

    aput-object v5, v4, v2

    const/16 v2, 0x9

    const-string v5, "bnb"

    aput-object v5, v4, v2

    const/16 v2, 0xa

    const-string v5, "safra"

    aput-object v5, v4, v2

    const/16 v2, 0xb

    const-string v5, "votorantim"

    aput-object v5, v4, v2

    const/16 v2, 0xc

    const-string v5, "btg"

    aput-object v5, v4, v2

    const/16 v2, 0xd

    const-string v5, "banrisul"

    aput-object v5, v4, v2

    const/16 v2, 0xe

    const-string v5, "brb"

    aput-object v5, v4, v2

    .line 53
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    :goto_1
    return v0

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 58
    goto :goto_1
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 62
    const-string v0, "\\b(?<!(\\/|\\\\))[0-9]{4}(-[0-9]{1})?\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lmwf;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 62
    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "\\b([0-9]{2})\\.?([0-9]{2,})(-|\\.)([0-9]{1})\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lmwf;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmwf;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "\\b\\d{6,9}\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lmwf;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 74
    return v0
.end method
