.class final Leow;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p1}, Lepo;->j()V

    .line 156
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->STRING:Lepr;

    if-ne v0, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1}, Lepo;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Leps;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p1, p2}, Leps;->a(Ljava/lang/Boolean;)Leps;

    .line 166
    return-void
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Leow;->a(Leps;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Leow;->a(Lepo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
