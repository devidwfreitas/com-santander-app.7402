.class Lhks;
.super Lhku;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lhkt;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lhku;-><init>(Landroid/view/ViewGroup;Lhkt;)V

    .line 20
    return-void
.end method


# virtual methods
.method a(Lhxl;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    invoke-super {p0, p1}, Lhku;->a(Lhxl;)V

    .line 26
    iget-object v0, p0, Lhks;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lhks;->h:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lhks;->i:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lhks;->e:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "in\u00edcio: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lhks;->h:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor do empr\u00e9stimo: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lhks;->i:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Total de parcelas: %sx"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v0, Lhnk;

    invoke-direct {v0, p1}, Lhnk;-><init>(Lhxl;)V

    .line 35
    iget-object v1, p0, Lhks;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lhnk;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(I)V

    .line 36
    iget-object v1, p0, Lhks;->d:Lcom/santander/app/components/view/SantanderTextView;

    iget-object v2, p0, Lhks;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lhnk;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setTextColor(I)V

    .line 37
    iget-object v1, p0, Lhks;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lhnk;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    return-void
.end method
