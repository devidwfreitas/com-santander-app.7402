.class Lggb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgga;


# direct methods
.method constructor <init>(Lgga;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lggb;->a:Lgga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lggb;->a:Lgga;

    invoke-static {v0}, Lgga;->a(Lgga;)Lgfl;

    move-result-object v0

    invoke-interface {v0}, Lgfl;->a()V

    .line 51
    return-void
.end method
