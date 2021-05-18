.class public final Lete;
.super Letb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Letb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leqm;)Letd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {p1}, Lete;->c(Leqm;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "smsto:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SMSTO:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mmsto:"

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MMSTO:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 45
    if-ltz v3, :cond_1

    .line 46
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    :goto_1
    new-instance v3, Letd;

    invoke-direct {v3, v2, v1, v1, v0}, Letd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic b(Leqm;)Lesx;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lete;->a(Leqm;)Letd;

    move-result-object v0

    return-object v0
.end method
