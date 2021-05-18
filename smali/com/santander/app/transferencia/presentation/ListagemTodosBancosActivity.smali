.class public Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ListagemTodosBancosActivity"


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmkq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/EditText;

.field private e:Lmpj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 61
    const v0, 0x7f100fd1

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->d:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f100fd2

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    .line 64
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 67
    new-instance v0, Lmpj;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->b()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmpj;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->e:Lmpj;

    .line 68
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->e:Lmpj;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lmop;

    invoke-direct {v1, p0}, Lmop;-><init>(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->e:Lmpj;

    invoke-virtual {v0, p1}, Lmpj;->a(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lmoq;

    invoke-direct {v0, p0}, Lmoq;-><init>(Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040309

    invoke-virtual {p0, v0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 50
    const v1, 0x7f090b0d

    invoke-virtual {p0, v1}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "todosBancos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->c:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Lcom/santander/app/transferencia/presentation/ListagemTodosBancosActivity;->a()V

    .line 57
    return-void
.end method
