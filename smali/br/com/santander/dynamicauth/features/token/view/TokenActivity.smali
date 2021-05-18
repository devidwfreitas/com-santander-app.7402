.class public Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private a:Lbr/com/santander/dynamicauth/features/token/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->a:Lbr/com/santander/dynamicauth/features/token/a/a;

    invoke-virtual {v0}, Lbr/com/santander/dynamicauth/features/token/a/a;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    sget v0, Lbr/com/santander/dynamicauth/R$layout;->activity_token:I

    invoke-virtual {p0, v0}, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->setContentView(I)V

    new-instance v0, Lbr/com/santander/dynamicauth/features/token/a/a;

    invoke-direct {v0, p0}, Lbr/com/santander/dynamicauth/features/token/a/a;-><init>(Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;)V

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/token/view/TokenActivity;->a:Lbr/com/santander/dynamicauth/features/token/a/a;

    return-void
.end method
