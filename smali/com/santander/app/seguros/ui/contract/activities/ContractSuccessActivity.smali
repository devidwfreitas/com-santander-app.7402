.class public Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "family-key"

.field public static final b:Ljava/lang/String; = "insurance-name-key"

.field private static final c:I = 0xb26e


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lkyp;

.field private D:Ljava/lang/String;

.field private d:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private w:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private x:Landroid/widget/Button;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 120
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;Lksj;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a(Lksj;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 96
    new-instance v0, Lkyp;

    invoke-direct {v0}, Lkyp;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->C:Lkyp;

    .line 97
    new-instance v0, Lksy;

    invoke-direct {v0, p1}, Lksy;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->C:Lkyp;

    new-instance v2, Lljg;

    invoke-direct {v2, p0}, Lljg;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V

    new-instance v3, Lljh;

    invoke-direct {v3, p0}, Lljh;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lkyp;->a(Lksy;Lkxl;Lkxl;)V

    .line 113
    return-void
.end method

.method private a(Lksj;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "Seguros_Contratacao_Vida_Comprovante_Acao"

    const-string v2, "TelaComprovante"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-virtual {p1}, Lksj;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 138
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 139
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Seguros_Contratacao_AP_Comprovante_Acao"

    const-string v2, "TelaComprovante"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 146
    :cond_4
    const-string v0, "N\u00famero da Proposta"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    const-string v0, "N\u00famero da Proposta"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    :goto_3
    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->w:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {p1}, Lksj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 149
    :cond_5
    const-string v0, ""

    goto :goto_3
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f100213

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->e:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100214

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->f:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 161
    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 162
    const v0, 0x7f100216

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->w:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 163
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->x:Landroid/widget/Button;

    .line 164
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->d:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 165
    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->y:Landroid/widget/RelativeLayout;

    .line 166
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->z:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->x:Landroid/widget/Button;

    new-instance v1, Llji;

    invoke-direct {v1, p0}, Llji;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->z:Landroid/widget/Button;

    new-instance v1, Lljj;

    invoke-direct {v1, p0}, Lljj;-><init>(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const v1, 0xb26e

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->y:Landroid/widget/RelativeLayout;

    invoke-static {v0, p0}, Lmhj;->a(Landroid/view/View;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090af9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmhj;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->c()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-static {p0}, Lmhj;->b(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->finish()V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->D:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->B:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "insurance-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->A:Ljava/lang/String;

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->b()V

    .line 90
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a()V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->B:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->a(Ljava/lang/String;)V

    .line 92
    return-void

    .line 86
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->A:Ljava/lang/String;

    goto :goto_0
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
    .line 209
    invoke-super {p0, p1, p2, p3}, Lgrs;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 212
    :pswitch_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->c()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/ContractSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0xb26e
        :pswitch_0
    .end packed-switch
.end method
