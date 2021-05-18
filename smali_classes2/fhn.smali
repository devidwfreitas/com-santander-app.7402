.class public Lfhn;
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
    .line 73
    iput-object p1, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f1008ae

    if-ne p2, v0, :cond_1

    .line 83
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    new-instance v1, Lguk;

    const-string v2, "F"

    invoke-direct {v1, v2}, Lguk;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;

    .line 88
    :goto_0
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v0

    iget-object v1, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lguk;->a(Landroid/widget/EditText;)V

    .line 89
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v0}, Lcom/santander/app/FazerPagamentoBoletoVR;->b(Lcom/santander/app/FazerPagamentoBoletoVR;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    invoke-static {v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;)Lguk;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lfhn;->a:Lcom/santander/app/FazerPagamentoBoletoVR;

    new-instance v1, Lguk;

    const-string v2, "J"

    invoke-direct {v1, v2}, Lguk;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/santander/app/FazerPagamentoBoletoVR;->a(Lcom/santander/app/FazerPagamentoBoletoVR;Lguk;)Lguk;

    goto :goto_0
.end method
