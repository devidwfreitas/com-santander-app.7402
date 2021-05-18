.class Lmuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmum;


# direct methods
.method constructor <init>(Lmum;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmuo;->a:Lmum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lmwm;->t()V

    .line 60
    iget-object v0, p0, Lmuo;->a:Lmum;

    invoke-static {v0}, Lmum;->a(Lmum;)Lmvt;

    move-result-object v0

    invoke-interface {v0}, Lmvt;->b()V

    .line 61
    return-void
.end method
