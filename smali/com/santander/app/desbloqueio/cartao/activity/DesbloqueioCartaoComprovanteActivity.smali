.class public Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;
.super Lgoj;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Ljava/lang/String;

.field private E:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lgoj;-><init>()V

    .line 31
    const-string v0, "DesbloqueioCartaoComprovanteActivity"

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->E:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    return-object v0
.end method

.method private a(Lhcs;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    invoke-virtual {v0}, Lhct;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    invoke-virtual {v0}, Lhct;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    invoke-virtual {v0}, Lhct;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhcs;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhct;

    invoke-virtual {v0}, Lhct;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhcs;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lhcs;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhcs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 68
    const v0, 0x7f10053c

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->b:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f1006d0

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->c:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f1006d2

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->f:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f1006d4

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->g:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f1006d6

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->x:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1001a1

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->y:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f1006d7

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->z:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->A:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->B:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->C:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cartaoDesloqueioModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhcs;

    .line 87
    invoke-direct {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a(Lhcs;)V

    .line 89
    invoke-virtual {v0}, Lhcs;->d()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0}, Lhcs;->e()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Desbloqueio de Cart\u00e3o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->D:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->B:Landroid/widget/LinearLayout;

    new-instance v1, Lhci;

    invoke-direct {v1, p0}, Lhci;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->A:Landroid/widget/LinearLayout;

    new-instance v1, Lhcj;

    invoke-direct {v1, p0}, Lhcj;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->C:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 154
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lgoj;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f040151

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->setContentView(I)V

    .line 52
    iput-object p0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->E:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 60
    const-string v1, "Desbloqueio de Cart\u00e3o"

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->c()V

    .line 63
    const-string v0, "Cartoes_DesbloqueioDeCartao"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lgoj;->onResume()V

    .line 142
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoComprovanteActivity;->a()V

    .line 143
    return-void
.end method
