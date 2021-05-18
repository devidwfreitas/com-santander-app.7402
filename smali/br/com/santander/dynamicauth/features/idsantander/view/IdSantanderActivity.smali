.class public Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    sget v0, Lbr/com/santander/dynamicauth/R$layout;->activity_id_santander:I

    invoke-virtual {p0, v0}, Lbr/com/santander/dynamicauth/features/idsantander/view/IdSantanderActivity;->setContentView(I)V

    new-instance v0, Lbr/com/santander/dynamicauth/features/idsantander/a/a;

    invoke-direct {v0, p0}, Lbr/com/santander/dynamicauth/features/idsantander/a/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method
