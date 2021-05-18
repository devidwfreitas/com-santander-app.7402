.class Lkhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkhc;


# direct methods
.method constructor <init>(Lkhc;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lkhd;->a:Lkhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lkhd;->a:Lkhc;

    invoke-static {v0}, Lkhc;->a(Lkhc;)Lkgw;

    move-result-object v0

    invoke-interface {v0}, Lkgw;->b()V

    .line 37
    return-void
.end method
