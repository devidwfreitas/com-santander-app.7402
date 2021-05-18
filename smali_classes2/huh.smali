.class public Lhuh;
.super Lhug;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;

.field private c:Lcom/santander/app/components/view/SantanderTextView;

.field private d:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bf

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Lhug;-><init>(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lhuh;->itemView:Landroid/view/View;

    const v1, 0x7f100460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuh;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 30
    iget-object v0, p0, Lhuh;->itemView:Landroid/view/View;

    const v1, 0x7f100469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuh;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 31
    iget-object v0, p0, Lhuh;->itemView:Landroid/view/View;

    const v1, 0x7f100461

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuh;->c:Lcom/santander/app/components/view/SantanderTextView;

    .line 32
    iget-object v0, p0, Lhuh;->itemView:Landroid/view/View;

    const v1, 0x7f10046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuh;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lhuk;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    iget-object v0, p0, Lhuh;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lhuk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lhuh;->b:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Contrato: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lhuk;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lhuh;->c:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Valor : R$ %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lhuk;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p1}, Lhuk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lhuk;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lhuh;->d:Lcom/santander/app/components/view/SantanderTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lhuh;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v4}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lhuh;->d:Lcom/santander/app/components/view/SantanderTextView;

    const-string v1, "Ag\u00eancia e Conta Vinculada: %s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lhuk;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lhuk;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
