.class Liio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liin;


# direct methods
.method constructor <init>(Liin;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Liio;->a:Liin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Liio;->a:Liin;

    invoke-static {v0}, Liin;->a(Liin;)Lnau;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnau;->a(IZ)V

    .line 66
    return-void
.end method
