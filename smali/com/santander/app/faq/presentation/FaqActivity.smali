.class public Lcom/santander/app/faq/presentation/FaqActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Licx;


# static fields
.field private static final e:Ljava/lang/String; = "FaqActivity"


# instance fields
.field private a:Lidj;

.field private b:Landroid/app/Activity;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private f:Landroid/app/Dialog;

.field private g:Landroid/app/Dialog;

.field private w:Lhzt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/faq/presentation/FaqActivity;)Lidj;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->a:Lidj;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    .line 186
    const/4 v1, 0x1

    new-array v1, v1, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v1, v2

    .line 188
    new-instance v2, Licn;

    invoke-direct {v2, p0, p1}, Licn;-><init>(Lcom/santander/app/faq/presentation/FaqActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 195
    return-void
.end method

.method private f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Licm;

    invoke-direct {v0, p0}, Licm;-><init>(Lcom/santander/app/faq/presentation/FaqActivity;)V

    return-object v0
.end method

.method private g()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lico;

    invoke-direct {v0, p0}, Lico;-><init>(Lcom/santander/app/faq/presentation/FaqActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 220
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->f:Landroid/app/Dialog;

    .line 221
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    return-void
.end method

.method public a(Lhzt;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/santander/app/faq/presentation/FaqActivity;->w:Lhzt;

    .line 265
    return-void
.end method

.method public a(Libr;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->c:Landroid/widget/ListView;

    new-instance v1, Licy;

    invoke-virtual {p1}, Libr;->a()Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Licy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "Alerta"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Dialog;

    .line 123
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->f:Landroid/app/Dialog;

    .line 230
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    invoke-static {p0, p1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 235
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 246
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 250
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    .line 251
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    const-string v0, "Alerta"

    const/4 v1, 0x1

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 241
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->g:Landroid/app/Dialog;

    .line 260
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 199
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 200
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->finish()V

    .line 204
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040064

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 74
    const v0, 0x7f100b9c

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->c:Landroid/widget/ListView;

    .line 75
    const v0, 0x7f100b9f

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->d:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f100b9e

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    invoke-direct {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->g()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->A()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lalb;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "R"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/santander/app/faq/presentation/FaqActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    iput-object p0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->b:Landroid/app/Activity;

    .line 101
    new-instance v0, Lidk;

    invoke-direct {v0, p0}, Lidk;-><init>(Licx;)V

    iput-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->a:Lidj;

    .line 103
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmyz;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const v0, 0x7f09089a

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->a(Ljava/lang/String;)V

    .line 119
    :goto_2
    return-void

    .line 89
    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "Error"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    :cond_2
    sget-boolean v0, Lism;->b:Z

    if-nez v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->a:Lidj;

    new-instance v1, Licl;

    invoke-direct {v1, p0}, Licl;-><init>(Lcom/santander/app/faq/presentation/FaqActivity;)V

    invoke-interface {v0, v1}, Lidj;->a(Lfoh;)V

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/santander/app/faq/presentation/FaqActivity;->a:Lidj;

    invoke-interface {v0}, Lidj;->c()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 164
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Libo;

    .line 168
    invoke-static {v0}, Libm;->b(Libo;)V

    .line 170
    invoke-virtual {v0}, Libo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/faleconosco/presentation/FormularioFaleConoscoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v2, "verificar_sistema_response"

    iget-object v3, p0, Lcom/santander/app/faq/presentation/FaqActivity;->w:Lhzt;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    invoke-direct {p0, v1}, Lcom/santander/app/faq/presentation/FaqActivity;->a(Landroid/content/Intent;)V

    .line 178
    :goto_0
    const-string v2, "faq_motivo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    const v0, 0x7f050013

    const v1, 0x7f050015

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/faq/presentation/FaqActivity;->overridePendingTransition(II)V

    .line 182
    return-void

    .line 175
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/faq/presentation/FaqPerguntasActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/faq/presentation/FaqActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/santander/app/faq/presentation/FaqActivity;->finish()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f101208
        :pswitch_0
    .end packed-switch
.end method
