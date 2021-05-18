.class public Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "insurance_name_key"

.field public static final b:Ljava/lang/String; = "family-id"

.field public static final c:Ljava/lang/String; = "tag-name-key"

.field private static final d:I = 0xb26e


# instance fields
.field private A:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/Button;

.field private z:Lkyp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 148
    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;Lksj;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->a(Lksj;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 239
    new-instance v0, Lkyp;

    invoke-direct {v0}, Lkyp;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->z:Lkyp;

    .line 240
    new-instance v0, Lksy;

    invoke-direct {v0, p1}, Lksy;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->z:Lkyp;

    new-instance v2, Ller;

    invoke-direct {v2, p0}, Ller;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V

    new-instance v3, Lles;

    invoke-direct {v3, p0}, Lles;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lkyp;->a(Lksy;Lkxl;Lkxl;)V

    .line 259
    return-void
.end method

.method private a(Lksj;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-virtual {p1}, Lksj;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 118
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 119
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    :cond_2
    const-string v0, "N\u00famero da Proposta"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "N\u00famero da Proposta"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    :goto_2
    iget-object v2, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Produto"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->E:Ljava/lang/String;

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "Data"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "ddMMaaaa"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 129
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method private b()V
    .locals 2

    .prologue
    .line 155
    const v0, 0x7f100432

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 156
    const v0, 0x7f100213

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->e:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f100214

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 158
    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 160
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->w:Landroid/widget/Button;

    .line 161
    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->x:Landroid/widget/RelativeLayout;

    .line 162
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->y:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->w:Landroid/widget/Button;

    new-instance v1, Lleo;

    invoke-direct {v1, p0}, Lleo;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->y:Landroid/widget/Button;

    new-instance v1, Llep;

    invoke-direct {v1, p0}, Llep;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const v1, 0xb26e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->x:Landroid/widget/RelativeLayout;

    invoke-static {v0, p0}, Lmhj;->a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090af9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmhj;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 206
    const v0, 0x7f040145

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 207
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 210
    const v0, 0x7f10069d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    new-instance v2, Lleq;

    invoke-direct {v2, p0}, Lleq;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 220
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 230
    invoke-static {p0}, Lmhj;->b(Landroid/content/Context;)V

    .line 231
    invoke-super {p0}, Lgrs;->finish()V

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->d()V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0400ab

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f050019

    const v1, 0x7f05001a

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->overridePendingTransition(II)V

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance_name_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance_name_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->B:Ljava/lang/String;

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tag-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tag-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->D:Ljava/lang/String;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->E:Ljava/lang/String;

    .line 102
    :goto_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Acao"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Comprovante"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->a()V

    .line 105
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->b()V

    .line 107
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->D:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->a(Ljava/lang/String;)V

    .line 108
    return-void

    .line 83
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->B:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :cond_2
    const-string v0, "%s"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->C:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->E:Ljava/lang/String;

    goto :goto_2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lgrs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 195
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->c()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/SuccessCancellationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0xb26e
        :pswitch_0
    .end packed-switch
.end method
