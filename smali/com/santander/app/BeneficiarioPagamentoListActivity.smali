.class public Lcom/santander/app/BeneficiarioPagamentoListActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/support/v7/view/ActionMode;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/app/Activity;

.field private f:Landroid/app/Dialog;

.field private g:Lfok;

.field private w:I

.field private x:Lfuq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 49
    const-string v0, "BeneficiarioPagamentoListActivity"

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->b:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->w:I

    .line 63
    new-instance v0, Lfuq;

    invoke-direct {v0}, Lfuq;-><init>()V

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->x:Lfuq;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->f:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfok;)Lfok;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->g:Lfok;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfuq;)Lfuq;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->x:Lfuq;

    return-object p1
.end method

.method private a(Lfur;)V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lfgl;

    invoke-direct {v0, p0, p1}, Lfgl;-><init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;Lfur;)V

    .line 224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    const-string v2, "Voc\u00ea realmente deseja remover esse benefici\u00e1rio?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Eliminar"

    .line 226
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancelar"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfuq;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->x:Lfuq;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/BeneficiarioPagamentoListActivity;)Lfok;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->g:Lfok;

    return-object v0
.end method


# virtual methods
.method public a(I)Lfur;
    .locals 1

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->x:Lfuq;

    invoke-virtual {v0}, Lfuq;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfur;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 256
    .line 258
    iget v2, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->w:I

    invoke-virtual {p0, v2}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(I)Lfur;

    move-result-object v2

    .line 259
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 261
    :pswitch_0
    if-eqz v2, :cond_0

    .line 262
    invoke-direct {p0, v2}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(Lfur;)V

    .line 263
    iget-object v2, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d:Landroid/widget/ListView;

    iget v3, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->w:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 264
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 270
    if-eqz v2, :cond_0

    .line 271
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e:Landroid/app/Activity;

    const-class v4, Lcom/santander/app/BeneficiarioPagamentoDetalheActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    sget-object v3, Lfus;->UPDATE:Lfus;

    invoke-virtual {v2, v3}, Lfur;->a(Lfus;)V

    .line 273
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhau;->a(Lfur;)V

    .line 274
    invoke-virtual {p0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 281
    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v1

    invoke-virtual {v1, v2}, Lhau;->a(Lfur;)V

    .line 283
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e:Landroid/app/Activity;

    const-class v3, Lcom/santander/app/FazerPagamentoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x7f101201
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 233
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 75
    const v0, 0x7f1004f0

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d:Landroid/widget/ListView;

    .line 76
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iput-object p0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->e:Landroid/app/Activity;

    .line 81
    const v0, 0x7f090ac7

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lfgo;

    invoke-direct {v0, p0}, Lfgo;-><init>(Lcom/santander/app/BeneficiarioPagamentoListActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfgo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 239
    const v1, 0x7f120004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 242
    const v0, 0x7f101201

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c:Landroid/support/v7/view/ActionMode;

    .line 297
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 311
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->a(I)Lfur;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string v2, "beneficiarioSelecionado"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->finish()V

    .line 320
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 93
    :cond_0
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->w:I

    .line 95
    invoke-virtual {p0, p0}, Lcom/santander/app/BeneficiarioPagamentoListActivity;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/BeneficiarioPagamentoListActivity;->c:Landroid/support/v7/view/ActionMode;

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
