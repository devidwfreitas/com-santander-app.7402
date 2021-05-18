.class public Ljvq;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljvs;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljsr;",
            ">;"
        }
    .end annotation
.end field

.field private c:Laoa;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;",
            "Ljava/util/List",
            "<",
            "Ljsr;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Ljvq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    .line 40
    iput-object p2, p0, Ljvq;->b:Ljava/util/List;

    .line 41
    iput-boolean v0, p0, Ljvq;->d:Z

    .line 42
    iput-boolean v0, p0, Ljvq;->e:Z

    .line 43
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 98
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Ljvq;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Ljvq;->e:Z

    return v0
.end method

.method static synthetic b(Ljvq;)Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljvq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    return-object v0
.end method

.method static synthetic c(Ljvq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljvq;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljvs;
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    new-instance v1, Ljvs;

    invoke-direct {v1, p0, v0}, Ljvs;-><init>(Ljvq;Landroid/view/View;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljvq;->c:Laoa;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljvq;->e:Z

    .line 92
    iget-object v0, p0, Ljvq;->c:Laoa;

    invoke-virtual {v0}, Laoa;->c()V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Ljvs;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-object v0, p0, Ljvq;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsr;

    .line 54
    invoke-virtual {v0}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v1

    .line 55
    invoke-static {p1}, Ljvs;->a(Ljvs;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Benefici\u00e1rio"

    invoke-direct {p0, v1, v3}, Ljvq;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Ljvs;->b(Ljvs;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "Valor a receber "

    invoke-direct {p0, v1, v3}, Ljvq;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "R$ "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Ljsr;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p1}, Ljvs;->c(Ljvs;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-static {p1}, Ljvs;->c(Ljvs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {p1}, Ljvs;->c(Ljvs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-static {p1}, Ljvs;->c(Ljvs;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    iget-boolean v0, p0, Ljvq;->d:Z

    if-eqz v0, :cond_0

    .line 64
    iput-boolean v5, p0, Ljvq;->d:Z

    .line 65
    new-instance v0, Laoj;

    invoke-static {p1}, Ljvs;->c(Ljvs;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-direct {v0, v1, v2}, Laoj;-><init>(Landroid/view/View;I)V

    const-string v1, "Para alterar o valor, clique aqui."

    .line 66
    invoke-virtual {v0, v1}, Laoj;->a(Ljava/lang/CharSequence;)Laoj;

    move-result-object v0

    const/16 v1, 0x50

    .line 67
    invoke-virtual {v0, v1}, Laoj;->i(I)Laoj;

    move-result-object v0

    iget-object v1, p0, Ljvq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    .line 68
    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->a(I)Laoj;

    move-result-object v0

    iget-object v1, p0, Ljvq;->a:Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    .line 69
    invoke-virtual {v1}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoj;->l(I)Laoj;

    move-result-object v0

    const v1, 0x800003

    .line 70
    invoke-virtual {v0, v1}, Laoj;->n(I)Laoj;

    move-result-object v0

    new-instance v1, Ljvr;

    invoke-direct {v1, p0}, Ljvr;-><init>(Ljvq;)V

    .line 71
    invoke-virtual {v0, v1}, Laoj;->a(Laom;)Laoj;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Laoj;->a()Laoa;

    move-result-object v0

    iput-object v0, p0, Ljvq;->c:Laoa;

    .line 79
    iget-object v0, p0, Ljvq;->c:Laoa;

    invoke-virtual {v0}, Laoa;->b()V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ljvq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljvs;

    invoke-virtual {p0, p1, p2}, Ljvq;->a(Ljvs;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Ljvq;->a(Landroid/view/ViewGroup;I)Ljvs;

    move-result-object v0

    return-object v0
.end method
