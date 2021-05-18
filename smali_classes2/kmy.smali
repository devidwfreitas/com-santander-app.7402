.class public Lkmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "Outros_Comprovantes_TipoDeTransacao_Acao"

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklu;

    .line 163
    iget-object v1, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v1

    invoke-virtual {v0}, Lklu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklu;->d(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v1

    invoke-virtual {v0}, Lklu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lklu;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lklu;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECIONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-virtual {v0}, Lklu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkmb;->a(Ljava/lang/String;)Lkmc;

    .line 169
    iget-object v0, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-virtual {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->g()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lkmy;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->f(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method
