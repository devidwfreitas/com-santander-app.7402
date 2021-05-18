.class final Leou;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/util/Locale;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v2, Lepr;->NULL:Lepr;

    if-ne v0, v2, :cond_0

    .line 681
    invoke-virtual {p1}, Lepo;->j()V

    .line 703
    :goto_0
    return-object v1

    .line 684
    :cond_0
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 693
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 695
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 696
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 698
    :goto_3
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 699
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    if-nez v3, :cond_2

    .line 701
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_2
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 677
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Leou;->a(Leps;Ljava/util/Locale;)V

    return-void
.end method

.method public a(Leps;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 708
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 709
    return-void

    .line 708
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0, p1}, Leou;->a(Lepo;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
