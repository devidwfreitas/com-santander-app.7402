.class public Lcom/santander/app/transfergolden/presentation/ExtensionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lmsy;
.implements Lmsz;


# static fields
.field private static final a:Ljava/lang/String; = "ExtensionActivity"


# instance fields
.field private b:Landroid/support/v7/widget/CardView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Lmuz;

.field private l:Z

.field private m:Landroid/support/v4/app/Fragment;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->l:Z

    .line 128
    new-instance v0, Lmsu;

    invoke-direct {v0, p0}, Lmsu;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 273
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x7f1011cc

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->m:Landroid/support/v4/app/Fragment;

    .line 276
    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :goto_0
    return-object v0

    .line 279
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 280
    :goto_1
    const-string v2, "ExtensionActivity"

    const-string v3, "inflateFragment"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-direct {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->p()V

    goto :goto_0

    .line 279
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/santander/app/MinhaConta;->a(Landroid/content/Context;)V

    .line 65
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->b(Z)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v1, "EXTRA_CLIPBOARD_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const v1, 0x14018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Lmuz;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private p()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 169
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04027b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090191

    new-instance v2, Lmsv;

    invoke-direct {v2, p0}, Lmsv;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    new-instance v1, Lmsw;

    invoke-direct {v1, p0, v0}, Lmsw;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    const-string v1, "EXTRA_TRANSFER_STEP"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-class v1, Lmul;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 373
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const v1, 0x7f09043f

    invoke-virtual {p0, v1}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 239
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Z)V

    .line 240
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->j:Landroid/widget/Button;

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->j:Landroid/widget/Button;

    new-instance v1, Lmsx;

    invoke-direct {v1, p0, p2}, Lmsx;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    const-string v1, "EXTRA_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "EXTRA_SENHA_CANCELADA"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-class v1, Lmue;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 359
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->l:Z

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Lmww;
        .end annotation
    .end param

    .prologue
    .line 377
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 379
    const-string v1, "EXTRA_STEP_TRANSACAO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-class v1, Lmum;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 381
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 307
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    const-string v1, "EXTRA_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-class v1, Lmti;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 310
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0, p1}, Lmuz;->a(Z)V

    .line 320
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CLIPBOARD_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    const-string v1, "EXTRA_USE_FINGERPRINT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    const-class v1, Lmtx;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 328
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e()V

    .line 206
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 207
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 260
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lmwm;->c()V

    .line 174
    iget-boolean v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->l:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->p()V

    .line 177
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    const-class v0, Lmtr;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 290
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 295
    const-class v0, Lmta;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 296
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 301
    const-class v0, Lmte;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 302
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->b(Z)V

    .line 315
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    const-string v1, "EXTRA_MESSAGE"

    const v2, 0x7f090b5a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-class v1, Lmuh;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 336
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    const-class v0, Lmtu;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 342
    return-void
.end method

.method public m()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090b61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    const-string v1, "EXTRA_MESSAGE"

    const v2, 0x7f090b59

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    const-class v1, Lmuh;

    invoke-direct {p0, v1, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    .line 350
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 364
    const-class v0, Lmur;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 365
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->d()V

    .line 386
    const-class v0, Lmuu;

    invoke-direct {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 387
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->finish()V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0403a3

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f10048f

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->b:Landroid/support/v7/widget/CardView;

    .line 83
    const v0, 0x7f1011cb

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->c:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f10024d

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1011cc

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->e:Landroid/widget/FrameLayout;

    .line 87
    const v0, 0x7f100068

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->f:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f1011f5

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->i:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1011f2

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->g:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f1011f3

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->h:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1011f4

    invoke-virtual {p0, v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->j:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lmva;

    invoke-direct {v0, p0}, Lmva;-><init>(Lmsz;)V

    iput-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    .line 97
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-virtual {p0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lmuz;->a(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->k:Lmuz;

    invoke-interface {v0}, Lmuz;->c()V

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmss;

    invoke-direct {v1, p0}, Lmss;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmst;

    invoke-direct {v1, p0}, Lmst;-><init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method
