.class public Llqs;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Llqs;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    .line 133
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Llqs;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090807

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Llqs;->a:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090273

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Llqs;->d:[Ljava/lang/String;

    .line 134
    iput-object p3, p0, Llqs;->b:Ljava/util/List;

    .line 135
    iput-object p4, p0, Llqs;->c:Ljava/util/List;

    .line 137
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 149
    iget-object v0, p0, Llqs;->b:Ljava/util/List;

    invoke-static {v0}, Llwi;->a(Ljava/util/List;)Llwi;

    move-result-object v0

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Llqs;->b:Ljava/util/List;

    invoke-static {v0}, Llwi;->a(Ljava/util/List;)Llwi;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Llqs;->c:Ljava/util/List;

    invoke-static {v0}, Llwg;->a(Ljava/util/List;)Llwg;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Llqs;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
