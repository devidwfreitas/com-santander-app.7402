.class Lgmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgmv;

.field final synthetic b:Lgmo;


# direct methods
.method constructor <init>(Lgmo;Lgmv;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lgmr;->b:Lgmo;

    iput-object p2, p0, Lgmr;->a:Lgmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lgmr;->b:Lgmo;

    iget-object v0, v0, Lgmo;->b:Lgmm;

    iget-object v1, p0, Lgmr;->a:Lgmv;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lgmm;->a(Lgmm;Lgmv;Z)V

    .line 241
    return-void
.end method
