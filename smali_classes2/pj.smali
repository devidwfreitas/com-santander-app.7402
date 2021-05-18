.class Lpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lpc;


# direct methods
.method constructor <init>(Lpc;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lpj;->b:Lpc;

    iput-object p2, p0, Lpj;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 639
    iget-object v0, p0, Lpj;->b:Lpc;

    iget-object v1, p0, Lpj;->b:Lpc;

    invoke-static {v1}, Lpc;->K(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpj;->b:Lpc;

    invoke-static {v2}, Lpc;->L(Lpc;)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lpj;->b:Lpc;

    invoke-static {v3}, Lpc;->M(Lpc;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lpc;->a(Lpc;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lpj;->b:Lpc;

    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lpj;->a:Landroid/app/Dialog;

    sget v3, Lla;->dialog_pzr_txt_validacao_valor:I

    .line 641
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpj;->a:Landroid/app/Dialog;

    sget v3, Lla;->dialog_pzr_linha_valor:I

    .line 642
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 640
    invoke-static {v0, v1}, Lpc;->a(Lpc;[Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lpj;->b:Lpc;

    invoke-static {v0}, Lpc;->N(Lpc;)Lace;

    move-result-object v0

    invoke-virtual {v0}, Lace;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lpj;->b:Lpc;

    invoke-static {v0}, Lpc;->O(Lpc;)Lace;

    move-result-object v0

    iget-object v1, p0, Lpj;->b:Lpc;

    invoke-static {v1}, Lpc;->K(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->b(Ljava/lang/Integer;)V

    .line 650
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpj;->b:Lpc;

    invoke-static {v1}, Lpc;->K(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lpj;->b:Lpc;

    invoke-static {v1}, Lpc;->G(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lpj;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 659
    :goto_1
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lpj;->b:Lpc;

    invoke-static {v0}, Lpc;->P(Lpc;)Lace;

    move-result-object v0

    iget-object v1, p0, Lpj;->b:Lpc;

    invoke-static {v1}, Lpc;->K(Lpc;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lace;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v0, p0, Lpj;->b:Lpc;

    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lpj;->a:Landroid/app/Dialog;

    sget v3, Lla;->dialog_pzr_txt_validacao_valor:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lpj;->a:Landroid/app/Dialog;

    sget v3, Lla;->dialog_pzr_linha_valor:I

    .line 657
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    .line 656
    invoke-static {v0, v1}, Lpc;->b(Lpc;[Landroid/view/View;)V

    goto :goto_1
.end method
