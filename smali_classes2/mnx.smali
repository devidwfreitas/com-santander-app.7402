.class public Lmnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->a(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->b(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->c(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/DateCircleButton;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    const-string v1, "Data in\u00edcio"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->b(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->e(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lmny;

    invoke-direct {v1, p0}, Lmny;-><init>(Lmnx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 157
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmlo;->b(Z)V

    .line 158
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->g(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    .line 172
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->b(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    const-string v1, "Agendar"

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewInfo(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->c(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/DateCircleButton;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->d(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lcom/santander/app/components/view/DateCircleButton;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/DateCircleButton;->setTextViewDate(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->e(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lmnz;

    invoke-direct {v1, p0}, Lmnz;-><init>(Lmnx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 169
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->f(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)Lmlo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmlo;->b(Z)V

    .line 170
    iget-object v0, p0, Lmnx;->a:Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;->h(Lcom/santander/app/transferencia/presentation/FormaTransferenciaActivity;)V

    goto :goto_0
.end method
