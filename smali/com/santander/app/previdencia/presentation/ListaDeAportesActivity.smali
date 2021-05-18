.class public Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lkeq;


# instance fields
.field private a:Lkfu;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;)Lkfu;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->a:Lkfu;

    return-object v0
.end method

.method private d()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lkep;

    invoke-direct {v0, p0}, Lkep;-><init>(Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/previdencia/presentation/SemPrevidenciaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public a(Lkcy;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lkez;

    invoke-direct {v1, p0, p1}, Lkez;-><init>(Landroid/content/Context;Lkcy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public a(Lkdg;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/previdencia/presentation/AporteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v1, "aporte"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->c:Landroid/app/Dialog;

    .line 89
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->c:Landroid/app/Dialog;

    .line 97
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->finish()V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 43
    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 45
    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f100364

    invoke-virtual {p0, v0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->b:Landroid/widget/ListView;

    .line 48
    iget-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->b:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->d()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    new-instance v0, Lkfv;

    invoke-direct {v0, p0}, Lkfv;-><init>(Lkeq;)V

    iput-object v0, p0, Lcom/santander/app/previdencia/presentation/ListaDeAportesActivity;->a:Lkfu;

    .line 51
    return-void
.end method
