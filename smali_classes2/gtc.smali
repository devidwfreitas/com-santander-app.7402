.class Lgtc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgtb;


# direct methods
.method constructor <init>(Lgtb;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgtc;->a:Lgtb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgtc;->a:Lgtb;

    invoke-virtual {v0}, Lgtb;->dismiss()V

    .line 66
    iget-object v0, p0, Lgtc;->a:Lgtb;

    invoke-static {v0}, Lgtb;->a(Lgtb;)Lgti;

    move-result-object v0

    invoke-interface {v0}, Lgti;->a()V

    .line 67
    return-void
.end method
