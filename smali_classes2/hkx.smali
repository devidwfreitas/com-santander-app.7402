.class Lhkx;
.super Lhku;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lhkt;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lhku;-><init>(Landroid/view/ViewGroup;Lhkt;)V

    .line 21
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lhkx;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lhkx;->e:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "in\u00edcio: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcelas em aberto: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lhkx;->k:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcelas em aberto: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lhkx;->k:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcelas em atraso: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->w()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lhkx;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lhkx;->g:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Data de cancelamento: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->x()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Total de parcelas: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lhkx;->g:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lhkx;->g:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Prazo para aprova\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Total de parcelas: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcelas em aberto: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Total de parcelas: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lhkx;->b:Lhxl;

    invoke-interface {v0}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Total de parcelas: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lhkx;->f:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "In\u00edcio: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lhkx;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lhkx;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcela: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lhkx;->j:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Parcelas em aberto: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lhkx;->b:Lhxl;

    invoke-interface {v3}, Lhxl;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lhxl;)V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0, p1}, Lhku;->a(Lhxl;)V

    .line 27
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 28
    invoke-direct {p0}, Lhkx;->d()V

    .line 43
    :cond_0
    :goto_0
    new-instance v0, Lhnk;

    invoke-direct {v0, p1}, Lhnk;-><init>(Lhxl;)V

    .line 44
    iget-object v1, p0, Lhkx;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lhnk;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 45
    iget-object v1, p0, Lhkx;->d:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v2, p0, Lhkx;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lhnk;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 46
    iget-object v1, p0, Lhkx;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lhnk;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    return-void

    .line 29
    :cond_1
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 30
    invoke-direct {p0}, Lhkx;->e()V

    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 32
    invoke-direct {p0}, Lhkx;->f()V

    goto :goto_0

    .line 33
    :cond_3
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 34
    invoke-direct {p0}, Lhkx;->g()V

    goto :goto_0

    .line 35
    :cond_4
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 36
    invoke-direct {p0}, Lhkx;->h()V

    goto :goto_0

    .line 37
    :cond_5
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 38
    invoke-direct {p0}, Lhkx;->i()V

    goto :goto_0

    .line 39
    :cond_6
    invoke-interface {p1}, Lhxl;->b()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 40
    invoke-direct {p0}, Lhkx;->j()V

    goto :goto_0
.end method
