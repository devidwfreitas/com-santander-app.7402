.class final Lepf;
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
    .line 173
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lepo;->j()V

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lepo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Leps;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 183
    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p1, v0}, Leps;->b(Ljava/lang/String;)Leps;

    .line 184
    return-void

    .line 183
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lepf;->a(Leps;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lepf;->a(Lepo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
