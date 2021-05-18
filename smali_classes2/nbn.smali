.class Lnbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lnbg;


# direct methods
.method constructor <init>(Lnbg;Z)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lnbn;->b:Lnbg;

    iput-boolean p2, p0, Lnbn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 158
    check-cast p1, Lnax;

    .line 159
    iget-object v0, p0, Lnbn;->b:Lnbg;

    invoke-static {v0}, Lnbg;->a(Lnbg;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Lnax;->getTokenTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->i(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lmzr;->k()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lmzr;->l()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lmzr;->j()Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-boolean v3, p0, Lnbn;->a:Z

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lnbn;->b:Lnbg;

    invoke-static {v3, v0}, Lnbg;->b(Lnbg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v1}, Lnaq;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 171
    iget-object v3, p0, Lnbn;->b:Lnbg;

    invoke-static {v3}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v3

    invoke-interface {v3, v1}, Lndw;->a(Ljava/lang/String;)V

    .line 179
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 180
    iget-object v1, p0, Lnbn;->b:Lnbg;

    invoke-static {v1}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v1

    invoke-interface {v1, v0}, Lndw;->b(Ljava/lang/String;)V

    .line 184
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 185
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    array-length v1, v0

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 187
    iget-object v1, p0, Lnbn;->b:Lnbg;

    invoke-static {v1}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v1

    invoke-interface {v1, v0}, Lndw;->a([Ljava/lang/String;)V

    .line 195
    :goto_2
    return-void

    .line 173
    :cond_1
    iget-object v3, p0, Lnbn;->b:Lnbg;

    invoke-static {v3}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lndw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lnbn;->b:Lnbg;

    invoke-static {v1}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v1, v3}, Lndw;->a(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lnbn;->b:Lnbg;

    invoke-static {v1}, Lnbg;->e(Lnbg;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "Alerta"

    const-string v4, "Erro ao obter o c\u00f3digo do cart\u00e3o de seguran\u00e7a. Por favor tente novamente em instantes."

    invoke-static {v1, v3, v4, v5}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lnbn;->b:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lndw;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object v0, p0, Lnbn;->b:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->b()V

    goto :goto_2

    .line 193
    :cond_5
    iget-object v0, p0, Lnbn;->b:Lnbg;

    invoke-static {v0}, Lnbg;->b(Lnbg;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->b()V

    goto :goto_2
.end method
