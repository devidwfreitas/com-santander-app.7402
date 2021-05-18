.class public Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/Button;

.field private y:Ljqc;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 48
    const-string v0, "MeuPerfilAtivarCartaoActivity"

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-static {v0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 265
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 267
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 268
    const v1, 0x7f040199

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 269
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 270
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x7f0b021e

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 272
    new-instance v1, Lmyg;

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 273
    new-instance v1, Lmyh;

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 275
    const v1, 0x7f10071e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljpj;

    invoke-direct {v2, p0, v0}, Ljpj;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v1, 0x7f100628

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljpk;

    invoke-direct {v2, p0, v0}, Ljpk;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    const-string v2, "Error"

    const-string v3, "Erro showLoading"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Ljqj;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Ljqj;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 306
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 307
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 308
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 309
    const v0, 0x7f040195

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 311
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 313
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 316
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ljpl;

    invoke-direct {v2, p0, v1}, Ljpl;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v1, "Error"

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljqj;)V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmwx;->a(Z)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->c(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    invoke-virtual {p1}, Ljqj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwx;->b(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

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

    .line 220
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "ERROR_ATUALIZAR_SESSAO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 334
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 335
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;Ljqj;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b(Ljqj;)V

    return-void
.end method

.method private b(Ljqj;)V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->y:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->i(Ljqj;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->y:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->j(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "N\u00famero de identifica\u00e7\u00e3o inv\u00e1lido."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->y:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->k(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "N\u00famero de identifica\u00e7\u00e3o inv\u00e1lido. Voc\u00ea s\u00f3 tem mais uma tentativa antes de cancelar o seu Cart\u00e3o de Seguran\u00e7a On-line."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->y:Ljqc;

    invoke-virtual {v0, p1}, Ljqc;->l(Ljqj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a()Landroid/app/Dialog;

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p1}, Ljqj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/meuperfil/activity/MeuPerfilSolicitarCartaoComprovante;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v2, "referOper"

    invoke-virtual {p1}, Ljqj;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy - hh:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 251
    const-string v4, "titulo"

    const-string v5, "Cart\u00e3o de Seguran\u00e7a On-Line"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "subTitulo"

    const-string v5, "Ativado com sucesso."

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "dataHora"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 339
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 340
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 344
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 346
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 347
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->c()V

    return-void
.end method

.method public static synthetic e(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b()V

    return-void
.end method

.method public static synthetic f(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic g(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->w:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 145
    const v0, 0x7f04019a

    invoke-static {p0, v0}, Lmxn;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->x:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    const-string v0, "Voc\u00ea deve aceitar as recomenda\u00e7\u00f5es de seguran\u00e7a para continuar."

    invoke-direct {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->a(Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    new-instance v0, Ljpm;

    invoke-direct {v0, p0}, Ljpm;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljpm;->c([Ljava/lang/Object;)Lgne;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f04031b

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f100fec

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    .line 67
    const v0, 0x7f100fed

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    .line 68
    const v0, 0x7f100ff0

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->f:Landroid/widget/CheckBox;

    .line 69
    const v0, 0x7f100fee

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f100fef

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->w:Landroid/widget/Button;

    .line 71
    const v0, 0x7f100ff1

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->x:Landroid/widget/Button;

    .line 72
    iput-object p0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->i:Landroid/app/Activity;

    .line 73
    new-instance v0, Ljqc;

    invoke-direct {v0}, Ljqc;-><init>()V

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->y:Ljqc;

    .line 74
    const v0, 0x7f100feb

    invoke-virtual {p0, v0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->z:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->g:Landroid/widget/TextView;

    const-string v2, "xxx"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->z:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XXX"

    const-string v4, "xxx"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 88
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 90
    const v1, 0x7f090769

    invoke-virtual {p0, v1}, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->d:Landroid/widget/EditText;

    new-instance v1, Ljph;

    invoke-direct {v1, p0}, Ljph;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;->e:Landroid/widget/EditText;

    new-instance v1, Ljpi;

    invoke-direct {v1, p0}, Ljpi;-><init>(Lcom/santander/app/meuperfil/activity/MeuPerfilAtivarCartaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    return-void
.end method
