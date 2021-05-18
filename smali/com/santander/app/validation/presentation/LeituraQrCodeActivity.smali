.class public Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lncy;


# static fields
.field public static final a:I = 0x3

.field private static l:Z


# instance fields
.field private b:Lnds;

.field private c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, 0x5

    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 321
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    const/16 v1, 0xf

    invoke-virtual {v0, v6, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 332
    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 334
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 336
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    invoke-static {p0, v5}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 338
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    invoke-virtual {p2}, Lgky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 342
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {p2}, Lgky;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    invoke-virtual {v3, v6, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-static {p0, v8}, Lmzu;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 349
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    invoke-virtual {p2}, Lgky;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    return-object v0

    .line 328
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {v0, v6, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 329
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->l:Z

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    const-string v1, "showLogin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->finish()V

    .line 365
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)Lnds;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->b:Lnds;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Levq;

    invoke-direct {v0, p0}, Levq;-><init>(Landroid/app/Activity;)V

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Levq;->b(Z)Levq;

    .line 370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Levq;->a(Z)Levq;

    .line 371
    const-class v1, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;

    invoke-virtual {v0, v1}, Levq;->a(Ljava/lang/Class;)Levq;

    .line 372
    sget-object v1, Levq;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Levq;->b(Ljava/util/Collection;)V

    .line 373
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 115
    const/4 v0, 0x1

    sput-boolean v0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->l:Z

    .line 116
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    new-instance v1, Lncr;

    invoke-direct {v1, p0}, Lncr;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 129
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090ad2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090955

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lncs;

    invoke-direct {v1, p0}, Lncs;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020559

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090ade

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090945

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%data%"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090578

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lnct;

    invoke-direct {v1, p0}, Lnct;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    new-instance v1, Lncu;

    invoke-direct {v1, p0}, Lncu;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02054b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 285
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090adf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090948

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lncx;

    invoke-direct {v1, p0}, Lncx;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040258

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    const v1, 0x7f100c71

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 306
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    const v1, 0x7f100c72

    invoke-virtual {p0, v1}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgky;

    .line 312
    invoke-direct {p0, p0, v1}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->a(Landroid/content/Context;Lgky;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    sput-boolean v2, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->l:Z

    .line 155
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    sget-object v0, Lguq;->TOKEN_IBPF:Lguq;

    sput-object v0, Lcom/santander/app/components/view/zxing/CustomQrScannerActivity;->a:Lguq;

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 160
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 221
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090adf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f090957

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lncv;

    invoke-direct {v1, p0}, Lncv;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040259

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    const v1, 0x7f100c74

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    const v0, 0x7f100c75

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v3}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02054b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 257
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090adf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09094a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{titulo}"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    new-instance v1, Lncw;

    invoke-direct {v1, p0}, Lncw;-><init>(Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {p0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 105
    invoke-static {p1, p2, p3}, Levq;->a(IILandroid/content/Intent;)Levr;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->b:Lnds;

    invoke-virtual {v0}, Levr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnds;->a(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->a(Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->a(Z)V

    .line 100
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 64
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 67
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setVisibility(I)V

    .line 69
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    const v0, 0x7f10032b

    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    new-instance v0, Lndt;

    invoke-direct {v0, p0, p0}, Lndt;-><init>(Lncy;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->b:Lnds;

    .line 91
    sget-boolean v0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->l:Z

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->k:Landroid/app/Dialog;

    .line 93
    iget-object v0, p0, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->b:Lnds;

    invoke-interface {v0}, Lnds;->a()V

    .line 95
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 377
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;->c()V

    .line 381
    :cond_0
    return-void
.end method
