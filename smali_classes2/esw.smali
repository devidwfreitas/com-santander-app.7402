.class public final Lesw;
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
.method public a(Leqm;)Lesv;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1}, Leqm;->d()Lepu;

    move-result-object v1

    .line 35
    sget-object v2, Lepu;->EAN_13:Lepu;

    if-eq v1, v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-static {p1}, Lesw;->c(Leqm;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 43
    const-string v2, "978"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "979"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :cond_2
    new-instance v0, Lesv;

    invoke-direct {v0, v1}, Lesv;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic b(Leqm;)Lesx;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lesw;->a(Leqm;)Lesv;

    move-result-object v0

    return-object v0
.end method
