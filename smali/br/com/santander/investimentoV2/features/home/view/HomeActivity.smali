.class public Lbr/com/santander/investimentoV2/features/home/view/HomeActivity;
.super Lack;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lack;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 16
    invoke-super {p0, p1}, Lack;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget v0, Llc;->activity_home:I

    invoke-virtual {p0, v0}, Lbr/com/santander/investimentoV2/features/home/view/HomeActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lbr/com/santander/investimentoV2/features/home/view/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 20
    sget v1, Lla;->inv2_home_activity:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lts;

    invoke-direct {v1}, Lts;-><init>()V

    .line 24
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 25
    sget v2, Lla;->inv2_home_activity:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 29
    :cond_0
    return-void
.end method
