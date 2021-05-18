.class public Lzd;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lys;

.field private b:Lack;


# direct methods
.method public constructor <init>(Lack;Lys;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lzd;->a:Lys;

    .line 22
    iput-object p2, p0, Lzd;->a:Lys;

    .line 23
    iput-object p1, p0, Lzd;->b:Lack;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 29
    sget v0, Llc;->fragment_validation_cso:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    new-instance v1, Lzf;

    iget-object v2, p0, Lzd;->b:Lack;

    iget-object v3, p0, Lzd;->a:Lys;

    invoke-direct {v1, v2, p0, v0, v3}, Lzf;-><init>(Lack;Landroid/support/v4/app/Fragment;Landroid/view/View;Lys;)V

    .line 32
    return-object v0
.end method
