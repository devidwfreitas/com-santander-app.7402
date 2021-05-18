.class Lgtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgtj;


# direct methods
.method constructor <init>(Lgtj;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lgtk;->a:Lgtj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgtk;->a:Lgtj;

    invoke-static {v0}, Lgtj;->a(Lgtj;)Lgtn;

    move-result-object v0

    invoke-interface {v0}, Lgtn;->b()V

    .line 55
    return-void
.end method
