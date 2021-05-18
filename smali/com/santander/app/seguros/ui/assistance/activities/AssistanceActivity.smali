.class public Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ASSISTANCE_INFO_KEY"


# instance fields
.field private b:Lkoi;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkps;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkps;

.field private e:Lkon;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Lkon;)Lkon;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->e:Lkon;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Lkps;)Lkps;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b()V

    .line 70
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    invoke-virtual {v1}, Lkoi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llcn;->a(Ljava/lang/String;Ljava/lang/String;)Llcn;

    move-result-object v0

    .line 71
    new-instance v1, Lkzt;

    invoke-direct {v1, p0}, Lkzt;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V

    invoke-virtual {v0, v1}, Llcn;->a(Llcs;)V

    .line 81
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 82
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100110

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 232
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v0}, Lkps;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v0}, Lkps;->c()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Llay;->a(Ljava/lang/String;)Llay;

    move-result-object v0

    .line 98
    new-instance v1, Lkzu;

    invoke-direct {v1, p0, p1}, Lkzu;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Llay;->a(Llbb;)V

    .line 104
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 145
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 147
    new-instance v0, Lldr;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->e:Lkon;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->f:Ljava/lang/String;

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lldr;-><init>(Lkoi;Lkps;Lkon;Ljava/lang/String;ZZ)V

    .line 150
    invoke-static {v0}, Lldn;->a(Lldr;)Lldn;

    move-result-object v0

    .line 151
    new-instance v1, Lkzv;

    invoke-direct {v1, p0, v6}, Lkzv;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Z)V

    invoke-virtual {v0, v1}, Lldn;->a(Lldq;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 170
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkps;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 90
    const v1, 0x7f090116

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    .line 113
    invoke-virtual {v2}, Lkoi;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v3}, Lkps;->g()Lkog;

    move-result-object v3

    invoke-virtual {v3}, Lkog;->a()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v0, v2, v3}, Lkof;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v0}, Lkps;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "315"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->e()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-static {}, Llbi;->a()Llbi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Llbi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :pswitch_2
    const-string v3, "3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_4
    const-string v3, "4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 124
    :pswitch_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Llbi;->a()Llbi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Llbi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-static {}, Llbi;->a()Llbi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Llbi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_7
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->finish()V

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->c()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v0}, Lkps;->g()Lkog;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0}, Lkog;->a()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->d:Lkps;

    invoke-virtual {v1}, Lkps;->a()Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v2, Lkoj;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    invoke-virtual {v3}, Lkoi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lkoj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v2}, Llct;->a(Lkoj;)Llct;

    move-result-object v0

    .line 187
    new-instance v1, Lkzx;

    invoke-direct {v1, p0}, Lkzx;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V

    invoke-virtual {v0, v1}, Llct;->a(Llcx;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkoi;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Llcj;->a()Llcj;

    move-result-object v0

    .line 216
    new-instance v1, Lkzy;

    invoke-direct {v1, p0}, Lkzy;-><init>(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)V

    invoke-virtual {v0, v1}, Llcj;->a(Llcm;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 224
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;)Lkon;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->e:Lkon;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 238
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->finish()V

    .line 241
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ASSISTANCE_INFO_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkoi;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoi;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->b:Lkoi;

    .line 62
    :cond_0
    const-string v0, "jsons/assistance/accountProductsMapping.json"

    invoke-static {p0, v0}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->g:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/assistance/activities/AssistanceActivity;->a()V

    .line 65
    return-void
.end method
