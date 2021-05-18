.class public Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Liyv;


# instance fields
.field private A:Ljal;

.field private B:Landroid/widget/Spinner;

.field private C:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/widget/EditText;

.field private z:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Ljal;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    return-object v0
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    :goto_0
    return-void

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 153
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090943

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v0, 0x7f10034c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    .line 160
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    invoke-static {v1}, Lnar;->a(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    new-instance v1, Liyq;

    invoke-direct {v1, p0}, Liyq;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    new-instance v1, Liyr;

    invoke-direct {v1, p0}, Liyr;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 184
    const v0, 0x7f10034d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->z:Landroid/support/design/widget/TextInputLayout;

    .line 186
    const v0, 0x7f10034e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    .line 187
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    invoke-static {v1}, Lnar;->a(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    new-instance v1, Liys;

    invoke-direct {v1, p0}, Liys;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    new-instance v1, Liyt;

    invoke-direct {v1, p0}, Liyt;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    new-instance v1, Liyu;

    invoke-direct {v1, p0}, Liyu;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    const v0, 0x7f020544

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 261
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->z:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 262
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "content"

    check-cast p1, Liuz;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    const-string v1, "content"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void

    .line 236
    :cond_1
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liuz;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090947

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f100349

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09090a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c:Landroid/widget/TextView;

    new-instance v1, Liyn;

    invoke-direct {v1, p0}, Liyn;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Liuz;

    invoke-direct {v0}, Liuz;-><init>()V

    .line 118
    const-string v1, " "

    invoke-virtual {v0, v1}, Liuz;->d(Ljava/lang/String;)V

    .line 119
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 121
    const v0, 0x7f100347

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    .line 122
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f040396

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 125
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    new-instance v1, Liyo;

    invoke-direct {v1, p0}, Liyo;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 141
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    new-instance v1, Liyp;

    invoke-direct {v1, p0}, Liyp;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    const v1, 0x7f020547

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    const v1, 0x7f020544

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 274
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/Boolean;)V

    .line 275
    return-void
.end method

.method public b(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    const v0, 0x7f020547

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 267
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->z:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const v2, 0x7f020547

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 280
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->y:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 281
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/Boolean;)V

    .line 282
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 64
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->setContentView(I)V

    .line 66
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->C:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 67
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->C:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 69
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f100345

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->d:Landroid/widget/RelativeLayout;

    .line 75
    const v0, 0x7f10034a

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->e:Landroid/widget/RelativeLayout;

    .line 76
    const v0, 0x7f100350

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->f:Landroid/widget/RelativeLayout;

    .line 78
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090735

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->w:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->w:Landroid/widget/Button;

    new-instance v1, Liym;

    invoke-direct {v1, p0}, Liym;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Ljam;

    invoke-direct {v0, p0, p0}, Ljam;-><init>(Liyv;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    .line 94
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    invoke-interface {v0}, Ljal;->a()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    invoke-super {p0}, Lgrs;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 296
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->B:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->A:Ljal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/Boolean;)V

    .line 301
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b(Ljava/lang/Boolean;)V

    .line 302
    return-void
.end method
