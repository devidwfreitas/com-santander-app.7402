.class public Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lixl;


# static fields
.field private static x:Landroid/app/Activity;

.field private static y:Landroid/app/Dialog;


# instance fields
.field private a:Ljac;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->y:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->y:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)Ljac;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->a:Ljac;

    return-object v0
.end method

.method public static synthetic e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->x:Landroid/app/Activity;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v0, "qrPreferences"

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->g(Ljava/lang/Boolean;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method private g()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lixg;

    invoke-direct {v0, p0}, Lixg;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V

    return-object v0
.end method

.method private h()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lixi;

    invoke-direct {v0, p0}, Lixi;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 72
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->e:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 73
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->e:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 75
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->b:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->c:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090932

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f100335

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->f:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->f:Landroid/widget/Button;

    new-instance v1, Lixf;

    invoke-direct {v1, p0}, Lixf;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f100332

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->g:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f100334

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->w:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->b()Lmwx;

    move-result-object v1

    invoke-virtual {v1}, Lmwx;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->g:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->g()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 164
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 166
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 167
    const v0, 0x7f040195

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 169
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 171
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 174
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lixh;

    invoke-direct {v2, p0, v1, p2}, Lixh;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;Landroid/app/Dialog;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "IdSantanderAtivarCartao"

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljqj;)V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmwx;->a(Z)V

    .line 142
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->c(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->b(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    invoke-virtual {p1}, Ljqj;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "ERROR_ATUALIZAR_SESSAO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderDesafioCsoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    const-string v1, "content"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 57
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->setContentView(I)V

    .line 58
    sput-object p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->x:Landroid/app/Activity;

    .line 60
    new-instance v0, Ljad;

    invoke-direct {v0, p0}, Ljad;-><init>(Lixl;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->a:Ljac;

    .line 61
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderAtivarCartaoActivity;->a:Ljac;

    invoke-interface {v0}, Ljac;->a()V

    .line 62
    return-void
.end method
