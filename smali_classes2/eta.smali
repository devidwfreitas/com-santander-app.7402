.class public final Leta;
.super Letb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Letb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leqm;)Lesz;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Leqm;->d()Lepu;

    move-result-object v2

    .line 34
    sget-object v1, Lepu;->UPC_A:Lepu;

    if-eq v2, v1, :cond_1

    sget-object v1, Lepu;->UPC_E:Lepu;

    if-eq v2, v1, :cond_1

    sget-object v1, Lepu;->EAN_8:Lepu;

    if-eq v2, v1, :cond_1

    sget-object v1, Lepu;->EAN_13:Lepu;

    if-eq v2, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-static {p1}, Leta;->c(Leqm;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Leta;->a(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    sget-object v0, Lepu;->UPC_E:Lepu;

    if-ne v2, v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 47
    invoke-static {v1}, Lexf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_1
    new-instance v2, Lesz;

    invoke-direct {v2, v1, v0}, Lesz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 49
    goto :goto_1
.end method

.method public synthetic b(Leqm;)Lesx;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Leta;->a(Leqm;)Lesz;

    move-result-object v0

    return-object v0
.end method
