.class Lpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnh;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lpy;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 1298
    check-cast p1, Lne;

    .line 1300
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lpy;->a:Lpc;

    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1301
    iget-object v0, p0, Lpy;->a:Lpc;

    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1302
    sget v1, Llc;->layout_cdb_progressivo:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1304
    sget v0, Lla;->cdb_progressivo_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    sget v0, Lla;->cdb_progressivo_titulo:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Llg;->app_dialogo_rentabilidade:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1307
    sget v0, Lla;->cdb_progressivo_lista:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 1308
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lpy;->a:Lpc;

    invoke-virtual {v4}, Lpc;->e()Lack;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1310
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1311
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1312
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1314
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    invoke-virtual {p1}, Lne;->b()Lnd;

    move-result-object v1

    invoke-virtual {v1}, Lnd;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnc;

    .line 1316
    invoke-virtual {v1}, Lnc;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lnc;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1317
    invoke-virtual {v1}, Lnc;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lnc;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1318
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1321
    :cond_1
    new-instance v1, Lni;

    iget-object v5, p0, Lpy;->a:Lpc;

    invoke-virtual {v5}, Lpc;->e()Lack;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lni;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1323
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1325
    iget-object v0, p0, Lpy;->a:Lpc;

    invoke-static {v0}, Lpc;->aq(Lpc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1327
    sget v0, Lla;->dialog_pzr_btn_fechar:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1328
    new-instance v2, Lpz;

    invoke-direct {v2, p0, v1}, Lpz;-><init>(Lpy;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1334
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lpy;->a:Lpc;

    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    new-instance v1, Lqa;

    invoke-direct {v1, p0}, Lqa;-><init>(Lpy;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 1350
    return-void
.end method
