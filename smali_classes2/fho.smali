.class public Lfho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/FazerPagamentoBoletoVR;


# direct methods
.method public constructor <init>(Lcom/santander/app/FazerPagamentoBoletoVR;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->c(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->c(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f1008b3

    if-ne p2, v0, :cond_1

    .line 105
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    new-instance v1, Lguk;

    const-string v2, "F"

    invoke-direct {v1, v2}, Lguk;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;

    .line 110
    :goto_0
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->c(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v0

    iget-object v1, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lguk;->a(Landroid/widget/EditText;)V

    .line 111
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->d(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->c(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lfho;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    new-instance v1, Lguk;

    const-string v2, "J"

    invoke-direct {v1, v2}, Lguk;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;

    goto :goto_0
.end method
