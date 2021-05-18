.class public Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lgtt;
.implements Ljme;


# instance fields
.field private a:Ljmm;

.field private b:Landroid/support/design/widget/FloatingActionButton;

.field private c:Landroid/support/design/widget/FloatingActionButton;

.field private d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/santander/app/components/view/SantanderButtonView;

.field private g:Lcom/santander/app/components/view/SantanderButtonView;

.field private w:Lgtu;

.field private x:Landroid/app/Activity;

.field private y:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)Ljmm;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Ljlz;

    invoke-direct {v0, p0, p1}, Ljlz;-><init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Ljma;

    invoke-direct {v0, p0, p1}, Ljma;-><init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->w:Lgtu;

    invoke-virtual {v0, p1}, Lgtu;->a(Landroid/location/Location;)V

    .line 193
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljlq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->w:Lgtu;

    invoke-virtual {v0, p1}, Lgtu;->a(Ljava/util/List;)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->x:Landroid/app/Activity;

    new-instance v1, Ljmb;

    invoke-direct {v1, p0}, Ljmb;-><init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)V

    new-instance v2, Ljmc;

    invoke-direct {v2, p0}, Ljmc;-><init>(Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;)V

    iget-object v3, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->x:Landroid/app/Activity;

    .line 210
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09072f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Habilitar"

    const-string v5, "Voltar"

    .line 198
    invoke-static/range {v0 .. v5}, Lmxn;->b(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    .line 211
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->y:Landroid/app/Dialog;

    .line 221
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Lgrs;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 118
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "infoType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljlk;

    .line 120
    sget-object v1, Ljmd;->a:[I

    invoke-virtual {v0}, Ljlk;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Ljmm;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "agenciaDados"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-interface {v1, v0}, Ljmm;->a(Ljlq;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-virtual {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-virtual {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 63
    const v1, 0x7f100ca2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 65
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 68
    iput-object p0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->x:Landroid/app/Activity;

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    const-string v2, "menu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const v2, 0x7f090730

    invoke-virtual {p0, v2}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 84
    :goto_0
    new-instance v0, Lgtu;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v2}, Lgtu;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->w:Lgtu;

    .line 86
    const v0, 0x7f10037d

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/dropuplist/ListDropUp;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    .line 87
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    iget-object v2, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->w:Lgtu;

    invoke-virtual {v0, p0, v2}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->setPropriets(Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->d:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->setOnListDownUpListener(Lgtt;)V

    .line 91
    new-instance v0, Ljmn;

    invoke-direct {v0, p0, v1}, Ljmn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    .line 93
    const v0, 0x7f100385

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->g:Lcom/santander/app/components/view/SantanderButtonView;

    .line 94
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->g:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f100379

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 96
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->c:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f10037a

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->b:Landroid/support/design/widget/FloatingActionButton;

    .line 98
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->b:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f10037b

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->e:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f10037c

    invoke-virtual {p0, v0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    .line 101
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->f:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v1, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-interface {v0}, Ljmm;->g()V

    .line 104
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-interface {v0}, Ljmm;->d()V

    .line 105
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->a:Ljmm;

    invoke-interface {v0}, Ljmm;->h()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/santander/app/localizadoragencias/presentation/MapaLocalizadorAgenciaActivity;->onBackPressed()V

    .line 136
    invoke-super {p0, p1}, Lgrs;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
