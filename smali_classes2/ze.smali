.class public Lze;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lack;


# direct methods
.method public constructor <init>(Lack;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lze;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lze;->a:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lze;->b:Lack;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 29
    sget v0, Llc;->fragment_validacao_id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    new-instance v1, Lzn;

    iget-object v2, p0, Lze;->b:Lack;

    iget-object v3, p0, Lze;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p0, v3}, Lzn;-><init>(Lack;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method
