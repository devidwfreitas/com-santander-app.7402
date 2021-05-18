.class public Lahc;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Lajg;


# direct methods
.method public constructor <init>(Lajg;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-object p1, p0, Lahc;->a:Lajg;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Lagi;->fragment_current_month_page:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lahf;

    invoke-virtual {p0}, Lahc;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lahc;->a:Lajg;

    invoke-direct {v1, v0, v2, v3}, Lahf;-><init>(Landroid/view/View;Landroid/app/Activity;Lajg;)V

    return-object v0
.end method
