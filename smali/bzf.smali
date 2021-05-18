.class final Lbzf;
.super Lbyu;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbhl;


# direct methods
.method constructor <init>(Lbhl;Lbhl;)V
    .locals 0

    .prologue
    .line 186
    iput-object p2, p0, Lbzf;->a:Lbhl;

    invoke-direct {p0, p1}, Lbyu;-><init>(Lbhl;)V

    return-void
.end method


# virtual methods
.method public a(Lbmr;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lbzf;->a:Lbhl;

    invoke-static {v0}, Lbze;->b(Lbhl;)V

    .line 207
    return-void
.end method

.method public a(Lbmr;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 189
    if-eqz p2, :cond_1

    .line 190
    invoke-static {p2}, Lbze;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    const-string v1, "post"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    :cond_0
    invoke-static {p2}, Lbze;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lbzf;->a:Lbhl;

    invoke-static {v1, v0}, Lbze;->b(Lbhl;Ljava/lang/String;)V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lbzf;->a:Lbhl;

    invoke-static {v0}, Lbze;->b(Lbhl;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lbzf;->a:Lbhl;

    new-instance v1, Lbhp;

    const-string v2, "UnknownError"

    invoke-direct {v1, v2}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lbze;->a(Lbhl;Lbhp;)V

    goto :goto_0
.end method

.method public a(Lbmr;Lbhp;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lbzf;->a:Lbhl;

    invoke-static {v0, p2}, Lbze;->a(Lbhl;Lbhp;)V

    .line 212
    return-void
.end method
