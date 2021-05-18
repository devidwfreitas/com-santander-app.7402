.class public Lkmx;
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
    .line 119
    iput-object p1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

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
    const/16 v2, 0x8

    .line 123
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "Outros_Comprovantes_Periodo_Acao"

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lklu;->e(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->f(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->g(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 133
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->f(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->g(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 138
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->f(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->d(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lklu;

    move-result-object v0

    iget-object v1, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v1}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->b(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Lkni;

    move-result-object v1

    invoke-interface {v1}, Lkni;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklu;->g(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lkmx;->a:Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;

    invoke-static {v0}, Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;->e(Lcom/santander/app/segundaviacomprovantes/presentation/SegundaViaActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
    .line 150
    return-void
.end method
