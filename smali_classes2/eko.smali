.class Leko;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lekn;


# direct methods
.method constructor <init>(Lekn;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Leko;->a:Lekn;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 189
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Leko;->a:Lekn;

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p1}, Lepo;->j()V

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Leko;->a:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
