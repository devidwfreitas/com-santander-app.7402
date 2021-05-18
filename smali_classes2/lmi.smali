.class public Llmi;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Tag"

.field public static final b:Ljava/lang/String; = "beneficiary-input-key"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/support/design/widget/TextInputEditText;

.field private h:Landroid/support/design/widget/TextInputEditText;

.field private i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Llfh;

.field private n:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private o:Lkpw;

.field private p:Llmr;

.field private q:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Llmi;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    new-instance v1, Llmi;

    invoke-direct {v1}, Llmi;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Llmi;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method

.method public static a(Lkpw;)Llmi;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "beneficiary-input-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Llmi;

    invoke-direct {v1}, Llmi;-><init>()V

    .line 75
    invoke-virtual {v1, v0}, Llmi;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v1
.end method

.method private a(Landroid/text/Editable;Landroid/text/TextWatcher;)V
    .locals 7

    .prologue
    const/16 v0, 0x64

    .line 232
    const-string v2, "%"

    .line 233
    const/4 v1, 0x0

    .line 235
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    if-le v1, v0, :cond_0

    .line 243
    const-string v1, "100%"

    .line 250
    :goto_1
    iget-object v2, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 251
    iget-object v2, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 253
    iget-object v2, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setProgress(I)V

    .line 254
    iget-object v2, p0, Llmi;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    iget-object v1, p0, Llmi;->q:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 258
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    iget-object v1, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 259
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 260
    return-void

    .line 238
    :catch_0
    move-exception v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f100722

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    .line 264
    const v0, 0x7f100725

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    iput-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    .line 265
    const v0, 0x7f1004e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llmi;->j:Landroid/widget/Button;

    .line 266
    const v0, 0x7f10072a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llmi;->k:Landroid/widget/Button;

    .line 267
    const v0, 0x7f100728

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f100724

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llmi;->c:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f100726

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llmi;->d:Landroid/widget/FrameLayout;

    .line 270
    const v0, 0x7f100729

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    .line 271
    const v0, 0x7f100723

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llmi;->f:Landroid/widget/FrameLayout;

    .line 272
    iget-object v0, p0, Llmi;->k:Landroid/widget/Button;

    invoke-direct {p0}, Llmi;->f()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Llmi;->j:Landroid/widget/Button;

    invoke-direct {p0}, Llmi;->e()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Llmi;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Llmi;->d()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 367
    invoke-static {p1}, Llfh;->a(Ljava/lang/String;)Llfh;

    move-result-object v0

    iput-object v0, p0, Llmi;->m:Llfh;

    .line 368
    iget-object v0, p0, Llmi;->m:Llfh;

    invoke-virtual {p0}, Llmi;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "message-fragment"

    invoke-virtual {v0, v1, v2}, Llfh;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method static synthetic a(Llmi;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Llmi;->i()V

    return-void
.end method

.method static synthetic a(Llmi;Landroid/text/Editable;Landroid/text/TextWatcher;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Llmi;->a(Landroid/text/Editable;Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic b(Llmi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->n:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusable(Z)V

    .line 139
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 140
    iget-object v0, p0, Llmi;->o:Lkpw;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Llmi;->o:Lkpw;

    invoke-virtual {v1}, Lkpw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Llmi;->c:Landroid/widget/TextView;

    iget-object v1, p0, Llmi;->o:Lkpw;

    invoke-virtual {v1}, Lkpw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->clearFocus()V

    .line 149
    :goto_0
    invoke-direct {p0}, Llmi;->c()V

    .line 150
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Llmi;->n:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v1, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-static {v0, v1}, Lmhj;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->requestFocus()Z

    goto :goto_0
.end method

.method static synthetic c(Llmi;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-direct {p0}, Llmi;->i()V

    .line 155
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Llmj;

    invoke-direct {v1, p0}, Llmj;-><init>(Llmi;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setMax(I)V

    .line 165
    iget-object v0, p0, Llmi;->o:Lkpw;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    const-string v1, "%s%%"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Llmi;->o:Lkpw;

    invoke-virtual {v3}, Lkpw;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    iget-object v1, p0, Llmi;->o:Lkpw;

    invoke-virtual {v1}, Lkpw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setProgress(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Llmi;->q:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Llmk;

    invoke-direct {v0, p0}, Llmk;-><init>(Llmi;)V

    iput-object v0, p0, Llmi;->q:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 196
    :cond_0
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    iget-object v1, p0, Llmi;->q:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 199
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    iget-object v1, p0, Llmi;->n:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/opensans_regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    new-instance v1, Llml;

    invoke-direct {v1, p0}, Llml;-><init>(Llmi;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v0, p0, Llmi;->d:Landroid/widget/FrameLayout;

    new-instance v1, Llmm;

    invoke-direct {v1, p0}, Llmm;-><init>(Llmi;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->setProgress(I)V

    .line 170
    iget-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    const-string v1, "%d%%"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Llmn;

    invoke-direct {v0, p0}, Llmn;-><init>(Llmi;)V

    return-object v0
.end method

.method static synthetic d(Llmi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 294
    new-instance v0, Llmp;

    invoke-direct {v0, p0}, Llmp;-><init>(Llmi;)V

    return-object v0
.end method

.method static synthetic e(Llmi;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Llmi;->h()V

    return-void
.end method

.method private f()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 313
    new-instance v0, Llmq;

    invoke-direct {v0, p0}, Llmq;-><init>(Llmi;)V

    return-object v0
.end method

.method static synthetic f(Llmi;)Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    return-object v0
.end method

.method static synthetic g(Llmi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Llmi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llmi;->a(Ljava/lang/String;)V

    .line 363
    :goto_0
    return v0

    .line 353
    :cond_1
    iget-object v1, p0, Llmi;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Llmi;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Llmi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090364

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    :cond_2
    invoke-virtual {p0}, Llmi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090467

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llmi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_3
    iget-object v1, p0, Llmi;->i:Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/sb/SeekBar;->getProgress()I

    move-result v1

    if-gtz v1, :cond_4

    .line 359
    invoke-virtual {p0}, Llmi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090461

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llmi;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Llmi;)Llmr;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->p:Llmr;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 372
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 373
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 376
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 377
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 379
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Llmi;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 386
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 387
    iget-object v0, p0, Llmi;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 389
    :cond_0
    return-void
.end method

.method static synthetic i(Llmi;)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Llmi;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Llmi;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Llmi;->g:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method


# virtual methods
.method public a(Llmr;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Llmi;->p:Llmr;

    .line 102
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    instance-of v0, p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Llmi;->n:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 94
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Llmi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llmi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "beneficiary-input-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llmi;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "beneficiary-input-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkpw;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    iput-object v0, p0, Llmi;->o:Lkpw;

    .line 110
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 117
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20008

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 123
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    const v0, 0x7f040170

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Llmi;->a(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Llmi;->b()V

    .line 133
    return-object v0
.end method
