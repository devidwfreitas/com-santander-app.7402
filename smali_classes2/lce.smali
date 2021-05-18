.class Llce;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Llca;

.field private b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Llca;Landroid/support/v4/app/FragmentManager;)V
    .locals 4

    .prologue
    .line 149
    iput-object p1, p0, Llce;->a:Llca;

    .line 150
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Llce;->a:Llca;

    invoke-virtual {v2}, Llca;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090807

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Llce;->a:Llca;

    invoke-virtual {v2}, Llca;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Llce;->b:[Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 159
    iget-object v0, p0, Llce;->a:Llca;

    invoke-static {v0}, Llca;->b(Llca;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llbz;->a(Ljava/util/List;)Llbz;

    move-result-object v0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    iget-object v0, p0, Llce;->a:Llca;

    invoke-static {v0}, Llca;->e(Llca;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llbz;->a(Ljava/util/List;)Llbz;

    move-result-object v0

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Llce;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
