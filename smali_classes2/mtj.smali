.class Lmtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmti;


# direct methods
.method constructor <init>(Lmti;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmtj;->a:Lmti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmtj;->a:Lmti;

    iget-object v0, v0, Lmti;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lmtj;->a:Lmti;

    iget-object v0, v0, Lmti;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 41
    :cond_0
    return-void
.end method
