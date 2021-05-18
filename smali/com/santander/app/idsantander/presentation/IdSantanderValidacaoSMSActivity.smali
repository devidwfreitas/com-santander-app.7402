.class public Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljaa;


# instance fields
.field public a:Ljava/lang/Boolean;

.field private b:Ljbc;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private w:Landroid/widget/Button;

.field private x:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a:Ljava/lang/Boolean;

    .line 49
    new-instance v0, Lizw;

    invoke-direct {v0, p0}, Lizw;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f100350

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->e()V

    return-void
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 213
    const-string v0, "x"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->z:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    .line 95
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Liuz;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->x:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    const v2, 0x7f02055c

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setGifResource(I)V

    .line 104
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ad2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09095c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%data%"

    invoke-virtual {v0}, Liuz;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->g()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->w:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->w:Landroid/widget/Button;

    new-instance v2, Lizx;

    invoke-direct {v2, p0}, Lizx;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->z:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "S"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    new-instance v1, Ljbd;

    invoke-direct {v1, p0, p0}, Ljbd;-><init>(Ljaa;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    .line 121
    iget-object v1, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    invoke-interface {v1, v0}, Ljbc;->a(Liuz;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    invoke-interface {v0}, Ljbc;->a()V

    .line 123
    return-void

    .line 100
    :cond_0
    new-instance v0, Liuz;

    const-string v1, ""

    invoke-direct {v0, v1}, Liuz;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)Ljbc;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    invoke-interface {v0}, Ljbc;->d()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmwy;->a(Z)V

    .line 140
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method private g()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lizz;

    invoke-direct {v0, p0}, Lizz;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 126
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04025c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a(Ljava/lang/Boolean;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f100c77

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    new-instance v1, Lizy;

    invoke-direct {v1, p0, v0}, Lizy;-><init>(Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "SMS_ALREADY_UNREGISTRED"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "id"

    sget-object v2, Liut;->PROCESSO_INTERROMPIDO:Liut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string v1, "content"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b:Ljbc;

    invoke-interface {v0}, Ljbc;->d()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 70
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->setContentView(I)V

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b(Ljava/lang/Boolean;)V

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->a()V

    .line 76
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f100338

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->c:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f10032d

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->d:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f10032e

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->e:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f100358

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->f:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f10034f

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->g:Landroid/widget/Button;

    .line 86
    const v0, 0x7f100352

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->w:Landroid/widget/Button;

    .line 88
    const v0, 0x7f10032c

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    iput-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->x:Lcom/santander/app/components/view/PlayGifView/PlayGifView;

    .line 90
    invoke-direct {p0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->d()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lgrs;->onPause()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b(Ljava/lang/Boolean;)V

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "SMS_ALREADY_UNREGISTRED"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lgrs;->onPause()V

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/idsantander/presentation/IdSantanderValidacaoSMSActivity;->b(Ljava/lang/Boolean;)V

    .line 197
    return-void
.end method
