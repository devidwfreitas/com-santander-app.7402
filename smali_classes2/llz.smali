.class Lllz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llly;


# direct methods
.method constructor <init>(Llly;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lllz;->a:Llly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lllz;->a:Llly;

    invoke-static {v0}, Llly;->a(Llly;)Llmd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lllz;->a:Llly;

    invoke-static {v0}, Llly;->a(Llly;)Llmd;

    move-result-object v0

    invoke-interface {v0}, Llmd;->a()V

    .line 92
    :cond_0
    return-void
.end method
