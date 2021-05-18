.class Ljvs;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljvq;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljvq;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Ljvs;->a:Ljvq;

    .line 112
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    invoke-direct {p0, p2}, Ljvs;->a(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Ljvs;->a()V

    .line 115
    return-void
.end method

.method static synthetic a(Ljvs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljvs;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Ljvs;->d:Landroid/widget/TextView;

    new-instance v1, Ljvt;

    invoke-direct {v1, p0}, Ljvt;-><init>(Ljvs;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f100f64

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljvs;->b:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f100f65

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljvs;->c:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f100f66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljvs;->d:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Ljvs;->d:Landroid/widget/TextView;

    iget-object v1, p0, Ljvs;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 122
    return-void
.end method

.method private a(Ljsr;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 151
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Valor a receber "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgku;->c(Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void
.end method

.method static synthetic a(Ljvs;Ljsr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljvs;->a(Ljsr;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljvs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljvs;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Ljvs;->a:Ljvq;

    invoke-virtual {v0}, Ljvq;->a()V

    .line 135
    new-instance v1, Ljuf;

    new-instance v0, Ljvu;

    invoke-direct {v0, p0}, Ljvu;-><init>(Ljvs;)V

    invoke-direct {v1, v0}, Ljuf;-><init>(Ljug;)V

    .line 144
    iget-object v0, p0, Ljvs;->a:Ljvq;

    invoke-static {v0}, Ljvq;->c(Ljvq;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljvs;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsr;

    invoke-virtual {v1, v0}, Ljuf;->a(Ljsr;)V

    .line 145
    iget-object v0, p0, Ljvs;->a:Ljvq;

    invoke-static {v0}, Ljvq;->b(Ljvq;)Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/pagamentos/titulos/presentation/FormaPagamentosDDAActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "alterar-valor"

    invoke-virtual {v1, v0, v2}, Ljuf;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic c(Ljvs;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljvs;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Ljvs;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljvs;->b()V

    return-void
.end method
