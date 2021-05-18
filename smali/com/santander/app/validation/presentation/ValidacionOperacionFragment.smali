.class public Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lndb;


# instance fields
.field private final a:Ljava/lang/String;

.field public b:Lnau;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:[Landroid/widget/Button;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:I

.field private l:Lmip;

.field private m:Lndw;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const-string v0, "ValidacionOperacionFragment"

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->n:I

    .line 56
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->l:Lmip;

    .line 57
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->n:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 285
    .line 286
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 288
    new-instance v1, Lndd;

    invoke-direct {v1, p0, v0, p1}, Lndd;-><init>(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;Landroid/os/Handler;Ljava/lang/Boolean;)V

    .line 316
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Lndw;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->n:I

    return v0
.end method

.method public static synthetic d(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->n:I

    return v0
.end method

.method public static synthetic e(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 89
    const v0, 0x7f040206

    return v0
.end method

.method public a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhav;->c(Landroid/app/Activity;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a()I

    move-result v0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100a0f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->f:Landroid/widget/Button;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v2, 0x7f10033e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 106
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f10033f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 107
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100340

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 108
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100342

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 109
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100343

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 110
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->h:Landroid/widget/ImageButton;

    .line 112
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100a10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->d:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->e:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    invoke-interface {v0}, Lndw;->a()V

    .line 116
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method public a(Lftz;)V
    .locals 4

    .prologue
    .line 258
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    .line 259
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/validation/presentation/ValidacaoIdSantanderComprovanteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    if-eqz p1, :cond_0

    .line 270
    const-string v1, "content"

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 194
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    aget-object v0, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    aget-object v0, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ou "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public b()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 94
    const v0, 0x7f040208

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->k:I

    .line 85
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b()I

    move-result v0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 147
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v2, 0x7f10032d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a(Ljava/lang/Boolean;)V

    .line 155
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b:Lnau;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnau;->a(IZ)V

    .line 254
    return-void
.end method

.method public c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a()I

    move-result v0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->f:Landroid/widget/Button;

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v2, 0x7f10033e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 125
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f10033f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 126
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100340

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 127
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100342

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 128
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v3, 0x7f100343

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 129
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->h:Landroid/widget/ImageButton;

    .line 131
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100a10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->d:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f100330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->e:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    invoke-interface {v0}, Lndw;->i()V

    .line 135
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->g:[Landroid/widget/Button;

    invoke-static {v0}, Lmzv;->a([Landroid/widget/Button;)Ljava/util/List;

    .line 204
    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 168
    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v2, 0x7f10032d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    .line 170
    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090aee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a(Ljava/lang/Boolean;)V

    .line 175
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    const v1, 0x7f0202f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 209
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->i:Landroid/widget/EditText;

    const v1, 0x7f0202fa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 214
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    new-instance v1, Lndc;

    invoke-direct {v1, p0}, Lndc;-><init>(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)V

    invoke-interface {v0, v1}, Lndw;->c(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 277
    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 279
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    const v1, 0x7f10032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    invoke-virtual {p0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090af2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->k:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    :try_start_0
    check-cast p1, Lnau;

    iput-object p1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b:Lnau;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lndx;

    invoke-direct {v0, p0, p0}, Lndx;-><init>(Lndb;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    .line 75
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->m:Lndw;

    iget-object v1, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->l:Lmip;

    invoke-interface {v0, p1, p2, v1}, Lndw;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lmip;)V

    .line 76
    iget-object v0, p0, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c:Landroid/view/View;

    return-object v0
.end method
