.class public final Letf;
.super Letb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Letb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leqm;)Leso;
    .locals 7

    .prologue
    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {p1}, Letf;->c(Leqm;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-object v2

    .line 35
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 39
    if-ltz v1, :cond_2

    .line 40
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 43
    if-ltz v1, :cond_1

    .line 44
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    .line 48
    :goto_1
    new-instance v0, Leso;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v6

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Leso;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v5, v2

    move-object v4, v2

    move-object v3, v0

    goto :goto_1
.end method

.method public synthetic b(Leqm;)Lesx;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Letf;->a(Leqm;)Leso;

    move-result-object v0

    return-object v0
.end method
