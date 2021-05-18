.class public Ltt;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    new-instance v0, Lts;

    invoke-direct {v0}, Lts;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_1
    new-instance v0, Ltr;

    invoke-direct {v0}, Ltr;-><init>()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    const-string v0, "Investimentos"

    goto :goto_0

    .line 35
    :pswitch_1
    const-string v0, "Objetivos"

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
