.class public Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field private static c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

.field private static y:Ljava/lang/String;


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/santander/app/widget/Carrossel;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/lang/String;

.field private z:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 57
    const-string v0, "HomeLogadaNaoCorrentistaActivity"

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->b:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->a:Landroid/app/Dialog;

    .line 65
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 299
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dataAtualizacao"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dataAtualizacaoDefault"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 304
    new-instance v1, Lfid;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lfid;-><init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;Ljava/lang/String;JJ)V

    new-array v0, v8, [Ljava/lang/Void;

    .line 323
    invoke-virtual {v1, v0}, Lfid;->c([Ljava/lang/Object;)Lgne;

    .line 324
    return-void
.end method

.method public static synthetic c()Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "homeLogadaWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "isShowingCartoes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    .line 158
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 159
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->x:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 357
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 360
    const-string v0, "dataInicioVigencia"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 361
    const-string v0, "dataFimVigencia"

    const-wide/16 v8, 0x0

    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 362
    const-string v0, "imagem"

    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 401
    :goto_0
    return v0

    .line 369
    :cond_0
    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    :cond_1
    move v0, v2

    .line 370
    goto :goto_0

    .line 373
    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 374
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 375
    const v0, 0x7f100fd7

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 376
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    const-string v3, "link"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->y:Ljava/lang/String;

    .line 380
    sget-object v1, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    new-instance v1, Lfif;

    invoke-direct {v1, p0}, Lfif;-><init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    :cond_3
    const v1, 0x7f100fd8

    invoke-virtual {p0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 393
    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 394
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    const-string v1, "HomeLogadaNCorActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 401
    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "homeLogadaWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    const-string v1, "isShowingCartoes"

    iget-object v2, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 406
    new-instance v1, Landroid/app/Dialog;

    sget-object v0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 407
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 409
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 411
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 412
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 417
    const-string v3, "Confirmar"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    new-instance v4, Lfig;

    invoke-direct {v4, v1}, Lfig;-><init>(Landroid/app/Dialog;)V

    .line 427
    const-string v0, "Cancelar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v5, Lfih;

    invoke-direct {v5, v1}, Lfih;-><init>(Landroid/app/Dialog;)V

    .line 435
    sget-object v0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    const-string v2, "Aten\u00e7\u00e3o"

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 436
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const v5, 0x7f100fdb

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 194
    const v0, 0x7f100fe0

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->e:Lcom/santander/app/widget/Carrossel;

    .line 195
    const v0, 0x7f100fd9

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f100fda

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->g:Landroid/view/View;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v0, 0x7f100fdf

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v0, 0x7f100fde

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {p0, v5}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, v5}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, -0x33393a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const v3, 0x7f100fdb

    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 214
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0, v3}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->openCartoes(Landroid/view/View;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    new-instance v0, Lfon;

    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->s()Lght;

    move-result-object v1

    invoke-interface {v1}, Lght;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfon;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 231
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->e:Lcom/santander/app/widget/Carrossel;

    new-instance v2, Lfic;

    invoke-direct {v2, p0}, Lfic;-><init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 246
    iget-object v1, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->e:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_2
    const v0, 0x7f100fdf

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v0, 0x7f100fde

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {p0, v3}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-static {p0, v2}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 328
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 330
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 331
    const v0, 0x7f0401a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 332
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 333
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 335
    new-instance v0, Lmyg;

    invoke-direct {v0, p0}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 336
    new-instance v0, Lmyh;

    invoke-direct {v0, p0}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 338
    const v0, 0x7f10071c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lfie;

    invoke-direct {v2, p0, v1}, Lfie;-><init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v0, 0x7f1007c4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a4d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/faturas/activity/FaturasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const-string v1, "indexCartao"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-static {v0}, Lmxn;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->a:Landroid/app/Dialog;

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->e(Z)V

    .line 79
    const v0, 0x7f040311

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->setContentView(I)V

    .line 81
    invoke-direct {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->d()V

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 87
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 89
    sput-object p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    .line 91
    const v0, 0x7f100c56

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->d:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Lfib;

    invoke-direct {v2, p0}, Lfib;-><init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmym;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/graphics/Bitmap;)V

    .line 107
    sput-object p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->c:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    .line 109
    invoke-direct {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->f()V

    .line 111
    invoke-direct {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->g()V

    .line 113
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lmzr;->d()I

    move-result v0

    .line 115
    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    const-string v0, "NC0"

    invoke-direct {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->b(Ljava/lang/String;)V

    .line 133
    const-string v0, "NC1"

    invoke-direct {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->b(Ljava/lang/String;)V

    .line 135
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020677

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020600

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020674

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 270
    const v1, 0x7f12000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 271
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 289
    const-string v0, "homeLogadaWidget"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    const-string v1, "lastConecctionDate"

    iget-object v2, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->x:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 276
    invoke-static {p0}, Lmxn;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Landroid/app/Activity;)V

    .line 149
    invoke-super {p0}, Lgrs;->onPause()V

    .line 150
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lgrs;->onResume()V

    .line 142
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhau;->a(Landroid/app/Activity;)V

    .line 143
    return-void
.end method

.method public openCartoes(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f100fdd

    const v4, 0x7f100fdc

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhau;->b(Z)V

    .line 173
    invoke-virtual {p0, v4}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {p0, v5}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    const v0, 0x7f100fdf

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    const v0, 0x7f100fde

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->w:Ljava/lang/Boolean;

    .line 190
    invoke-direct {p0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->e()V

    .line 191
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhau;->b(Z)V

    .line 181
    invoke-virtual {p0, v4}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    invoke-virtual {p0, v5}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    const v0, 0x7f100fdf

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v0, 0x7f100fde

    invoke-virtual {p0, v0}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 189
    goto :goto_1
.end method
