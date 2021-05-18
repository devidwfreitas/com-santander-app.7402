.class public Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Dialog;

.field private d:Lfur;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 38
    const-string v0, "BeneficiarioPagamentoDetalheActivity"

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Lfur;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f04018e

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 54
    const v1, 0x7f090ac7

    invoke-virtual {p0, v1}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 56
    iput-object p0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->i:Landroid/app/Activity;

    .line 58
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0}, Lhau;->C()Lfur;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    .line 59
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Lfur;)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    if-eqz v0, :cond_0

    .line 62
    const v0, 0x7f10078e

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 63
    const v1, 0x7f10078f

    invoke-virtual {p0, v1}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 65
    const v2, 0x7f100790

    invoke-virtual {p0, v2}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 68
    iget-object v3, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    invoke-virtual {v3}, Lfur;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    invoke-virtual {v3}, Lfur;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->d:Lfur;

    invoke-virtual {v3}, Lfur;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v3, 0x7f100791

    invoke-virtual {p0, v3}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 74
    const v4, 0x7f100792

    invoke-virtual {p0, v4}, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 76
    new-instance v5, Lfgg;

    invoke-direct {v5, p0, v0, v2, v1}, Lfgg;-><init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lfgi;

    invoke-direct {v0, p0}, Lfgi;-><init>(Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    return-void
.end method
