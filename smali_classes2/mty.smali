.class Lmty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmtx;


# direct methods
.method constructor <init>(Lmtx;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmty;->a:Lmtx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmty;->a:Lmtx;

    invoke-static {v0}, Lmtx;->a(Lmtx;)Lmvh;

    move-result-object v0

    invoke-interface {v0}, Lmvh;->e()V

    .line 66
    return-void
.end method
