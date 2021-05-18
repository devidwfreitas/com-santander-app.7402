.class Lmud;
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
    .line 120
    iput-object p1, p0, Lmud;->a:Lmtx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lmwm;->o()V

    .line 124
    iget-object v0, p0, Lmud;->a:Lmtx;

    invoke-static {v0}, Lmtx;->a(Lmtx;)Lmvh;

    move-result-object v0

    invoke-interface {v0}, Lmvh;->f()V

    .line 125
    return-void
.end method
