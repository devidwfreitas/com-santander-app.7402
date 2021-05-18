.class public Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Ljly;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljmf;

.field private c:Lcom/santander/app/components/view/SantanderEditText;

.field private d:Ljmj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->c:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->d:Ljmj;

    invoke-interface {v1, v0}, Ljmj;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public a(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 135
    const-string v1, "longitude"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 137
    if-eqz p5, :cond_1

    .line 138
    const-string v1, "placeId"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "infoType"

    sget-object v2, Ljlk;->endereco:Ljlk;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->finish()V

    .line 150
    return-void

    .line 140
    :cond_1
    if-eqz p6, :cond_0

    .line 142
    const-string v1, "agenciaId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "agenciaDados"

    iget-object v2, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->d:Ljmj;

    invoke-interface {v2}, Ljmj;->b()Ljlq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    const-string v1, "infoType"

    sget-object v2, Ljlk;->agencia:Ljlk;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {p0, p1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 122
    new-instance v1, Ljlx;

    invoke-direct {v1, p0, p0}, Ljlx;-><init>(Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljlj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->b:Ljmf;

    invoke-virtual {v0, p1}, Ljmf;->a(Ljava/util/ArrayList;)V

    .line 110
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->b:Ljmf;

    invoke-virtual {v0}, Ljmf;->notifyDataSetChanged()V

    .line 111
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->d:Ljmj;

    invoke-interface {v0}, Ljmj;->a()V

    .line 165
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 170
    :goto_0
    if-ge p2, p3, :cond_1

    .line 171
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, ""

    .line 175
    :goto_1
    return-object v0

    .line 170
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 55
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 60
    const v0, 0x7f100071

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f09072c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 67
    new-instance v0, Ljmk;

    invoke-direct {v0, p0, p0}, Ljmk;-><init>(Landroid/content/Context;Ljly;)V

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->d:Ljmj;

    .line 69
    const v0, 0x7f100a79

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 70
    const v0, 0x7f100a78

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderEditText;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->c:Lcom/santander/app/components/view/SantanderEditText;

    .line 71
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->c:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 72
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->c:Lcom/santander/app/components/view/SantanderEditText;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->c:Lcom/santander/app/components/view/SantanderEditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 75
    new-instance v0, Ljmf;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->d:Ljmj;

    invoke-direct {v0, v1}, Ljmf;-><init>(Ljmj;)V

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->b:Ljmf;

    .line 77
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 80
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->b:Ljmf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->a()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/BuscaLocalizadorAgenciaActivity;->finish()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
