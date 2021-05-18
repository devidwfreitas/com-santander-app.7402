.class Lgdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgdc;


# direct methods
.method constructor <init>(Lgdc;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lgdd;->a:Lgdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgdd;->a:Lgdc;

    invoke-static {v0}, Lgdc;->a(Lgdc;)Lgdf;

    move-result-object v0

    invoke-interface {v0}, Lgdf;->a()V

    .line 63
    return-void
.end method
